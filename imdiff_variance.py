import cv2
import numpy as np
import sys
import logging
import time

logging.basicConfig(stream=sys.stdout, level=logging.INFO)
# initialize OpenCV methods for histogram comparison

OPENCV_METHODS = {
    "Correlation":cv2.cv.CV_COMP_CORREL,
    "Intersection": cv2.cv.CV_COMP_INTERSECT,
    "Chi-Squared":cv2.cv.CV_COMP_CHISQR,
	"Hellinger":cv2.cv.CV_COMP_BHATTACHARYYA
}


# if we are using the correlation or intersection
# method, then sort the results in reverse order
#hte bigger difference , the more similar

def compare_two_hist(hist1, hist2, md="Correlation"):
    if md not in OPENCV_METHODS:
        md = "Correlation"
    d = cv2.compareHist(hist1, hist2, OPENCV_METHODS[md])
    return d


def get_hist_lines(hist):
    h = np.zeros((300, 256, 3))
    for x, y in enumerate(hist):
        cv2.line(h, (x, 0), (x, y), (255, 255, 255))
    hist_lines = np.flipud(h)
    return hist_lines

video_capture = cv2.VideoCapture(0)
if not video_capture.isOpened():
    logging.info('Cannot initialize video capture')
    exit(0)


count = 0
prev_hist = np.zeros((256, 1), dtype=np.float32)
font = cv2.FONT_HERSHEY_SIMPLEX
count = 1
while True:
    start = time.time()
    is_sucessfully_read, img_ori = video_capture.read()
    count += 1
    print count
    if count%5 != 0:
        continue
    img = img_ori
    img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    hist_item = cv2.calcHist([img_gray], [0], None, [256], [0, 256])
    cv2.normalize(hist_item, hist_item, 0, 255, cv2.NORM_MINMAX)
    hist = np.float32(hist_item)

    for i, k in enumerate(["Correlation",
            "Intersection",
            "Chi-Squared",
	        "Hellinger"]):
        image_diff = compare_two_hist(prev_hist, hist, k)

        cv2.putText(img, '{}:{:4f}'.format(k, image_diff), (10, 30+ 30*i), font, 1, (255, 255, 255), 2)
        if k == 'Correlation' and image_diff < 0.9:
            cv2.putText(img, 'Moved'.format(k, image_diff), (img.shape[1]-140, 30 ), font, 1, (255, 0, 0), 2)
        if k == 'Intersection' and image_diff < 4000:
            cv2.putText(img, 'Moved'.format(k, image_diff), (img.shape[1] - 140, 30 + 30 * i), font, 1, (255, 0, 0), 2)
        if k == 'Chi-Squared' and image_diff >= 600:
                cv2.putText(img, 'Moved'.format(k, image_diff), (img.shape[1] - 140, 30+30*i), font, 1, (255, 0, 0), 2)
    cv2.imshow('image', img)

    hist_diff = np.abs(hist - prev_hist)
    prev_hist = hist

    hist_lines = get_hist_lines(hist)
    cv2.imshow('gray histogram:', hist_lines)

    #draw difference
    diff_hist_lines = get_hist_lines(hist_diff)

    cv2.imshow('diff gray histogram:', diff_hist_lines)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
    logging.info('fps:{}'.format(1 / (time.time() - start)))
