#include <iostream>
#include "imdiff.hpp"


int main(int argc, char** argv)
{

    cv::VideoCapture seq(0);
    if (!seq.isOpened()) {std::cout <<"error open!"<<std::endl;return -1;}
    cv::Mat frame1, frame2;
    bool init=true;
    int frame_count = 0;
    while(1)
    {
        seq >> frame2;
        if(init)
            frame1 = frame2.clone();
            init = false;
        frame_count +=1;
        if(frame_count%5==0)
            continue;

        //This is what you want
        //frame1, frame2: cv::Mat
        //the third parameter 0.9: default thresh
        //the fourth parameter true: to show image, set to false in your app
        bool isChanged = check_image_pair(frame1, frame2,0.9, true) ;

        frame1= frame2.clone();

        if(isChanged)
            cv::putText(frame2, "Moved",cv::Point(10, 30),CV_FONT_HERSHEY_COMPLEX, 1, cv::Scalar(255, 255, 255), 2);
        cv::imshow("img", frame2);
        char k = (char)cv::waitKey(1);
        
        if(k=='q'|k=='Q'|k==27)
            return 0;
    }
    return 0;


}
