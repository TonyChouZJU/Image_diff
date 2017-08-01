#ifndef __OPENCV_IMAGE_DIFF_HPP__
#define __OPENCV_IMAGE_DIFF_HPP__

#include <opencv2/opencv.hpp>
#include<opencv2/core/core.hpp>
#include<opencv2/highgui/highgui.hpp>
#include<opencv2/imgproc/imgproc.hpp>
#include <stdlib.h>
#include <math.h>
#include <string>
#include <stdio.h>

std::string type2str(int type) {
  std::string r;

  uchar depth = type & CV_MAT_DEPTH_MASK;
  uchar chans = 1 + (type >> CV_CN_SHIFT);

  switch ( depth ) {
    case CV_8U:  r = "8U"; break;
    case CV_8S:  r = "8S"; break;
    case CV_16U: r = "16U"; break;
    case CV_16S: r = "16S"; break;
    case CV_32S: r = "32S"; break;
    case CV_32F: r = "32F"; break;
    case CV_64F: r = "64F"; break;
    default:     r = "User"; break;
  }

  r += "C";
  r += (chans+'0');

  return r;
}

void show_hist(const cv::Mat hist, cv::Mat histImage, int hist_w, int hist_h, int histSize=256)
{
    //int bin_w = cv::cvRound( (double)hist_w/histSize );
    int bin_w = hist_w/histSize;
    for (int i =1; i < histSize; i++)
        line( histImage, cv::Point( bin_w*(i-1), hist_h - cvRound(hist.at<float>(i-1)) ) ,
                         cv::Point( bin_w*(i), hist_h - cvRound(hist.at<float>(i)) ),
                         cv::Scalar( 255, 0, 0), 2, 8, 0  );
}
//cv::Mat get_image_hist(const cv::Mat img)
void get_image_hist(const cv::Mat& img, cv::Mat& hist)

{
    //cv::Mat hist;
    //int histSize = 256;
        int histSize = 64;

    float range[] = {0, 256};
    const float* histRange = {range};
    bool uniform = true;
    bool accumulate = false;
    //void calcHist(const Mat* images, int nimages, const int* channels, InputArray mask, OutputArray hist, int dims, const int* histSize, const float** ranges, bool uniform=true, bool accumulate=false )
    cv::calcHist(&img, 1, 0, cv::Mat(), hist, 1, &histSize, &histRange, uniform, accumulate);
    //return hist;
}

//Return True if moved
bool check_image_pair(cv::Mat& img1, cv::Mat& img2, float thresh=0.9, bool isShow=false)
{
  std::string ty =  type2str( img1.type() );
    //printf("Matrix: %s %dx%d \n", ty.c_str(), M.cols, M.rows );
    std::cout <<"img1 type:" << ty << std::endl;


    int k;
    printf("origin: \n");
    for(k = 0; k< 20; k++){
            printf("%d", img1.at<cv::Vec3b>(0,k)[0]);
            printf(" %d", img1.at<cv::Vec3b>(0,k)[1]);
            printf(" %d", img1.at<cv::Vec3b>(0,k)[2]);
            printf("\n");

    }
    cv::cvtColor(img1, img1, CV_BGR2GRAY);
    cv::cvtColor(img2, img2, CV_BGR2GRAY);

    cv::Mat hist1, hist2;
//    hist1 = get_image_hist(img1);
//    hist2 = get_image_hist(img2);
    get_image_hist(img1, hist1);
    get_image_hist(img2, hist2);

    int hist_w = 512; int hist_h=400;
    //Normalize the results to [0, histImage.rows]
    cv::normalize(hist1, hist1, 0, hist_h, cv::NORM_MINMAX, -1, cv::Mat());
    cv::normalize(hist2, hist2, 0, hist_h, cv::NORM_MINMAX, -1, cv::Mat());


    if(isShow)
    {
        //Draw the histograms
        cv::Mat histImage(hist_h, hist_w, CV_8UC3, cv::Scalar(0, 0, 0) );
        show_hist(hist2, histImage, hist_w, hist_h, 256);
        cv::imshow("calcHist Demo", histImage);
    }
    
    float diff = cv::compareHist(hist1, hist2, CV_COMP_CORREL);
    std::cout <<"diff:"<< fabs(diff);
    return fabsf(diff) < thresh;
}

#endif

/* End of file. */
