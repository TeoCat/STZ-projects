#include <string>
#include <iostream>

#include <opencv2/opencv.hpp>
#include "opencv2/xfeatures2d.hpp"

const std::string PATH_TO_VIDEO(R"(C:\Users\isaev\Documents\GitHub\STZ-projects\OpenCV_hw4\data\sample_mpg.avi)");

enum Algorithm {
    SURF = 1,
    SIFT = 2,
    BRISK = 3
};

static bool break_for_key(int delay) {
    int key = cv::waitKey(delay);

    switch (key) {
        case 27:
            return true;
        case 32:
            while (true) {
                if (cv::waitKey(delay) == 32) {
                    return false;
                } else if (cv::waitKey(delay) == 27) {
                    return true;
                }
            }
        default:
            return false;
    }
}

static std::tuple<cv::Mat, cv::Mat, std::vector<cv::KeyPoint>>
grab_on_image(cv::VideoCapture &capture,
              cv::Ptr<cv::FeatureDetector> &detector,
              cv::Ptr<cv::DescriptorExtractor> &extractor) {
    cv::Mat src;
    cv::Mat deser;
    std::vector<cv::KeyPoint> keys;

    capture.read(src);

    if (!src.empty()) {

        detector->detect(src, keys);
        extractor->compute(src, keys, deser);
    }

    return std::make_tuple(src, deser, keys);
};

template<class Detector>
void frame_matching(const std::string &path) {
    cv::Ptr<cv::FeatureDetector> detector = Detector::create();
    cv::Ptr<cv::DescriptorExtractor> extractor = Detector::create();
    cv::BFMatcher matcher;

    std::vector<cv::KeyPoint> keys;
    std::vector<cv::KeyPoint> prev_keys;

    cv::Mat src;
    cv::Mat prev_src;

    cv::Mat deser;
    cv::Mat prev_deser;

    cv::Mat image_with_points;

    cv::VideoCapture cap(path);
    if (!cap.isOpened()) {
        throw std::invalid_argument("incorrect path: " + path);
    }

    int delay = static_cast<int>(1000 / cap.get(cv::CAP_PROP_FPS));

    std::tie(prev_src, prev_deser, prev_keys) = grab_on_image(cap, detector, extractor);

    while (true) {
        std::vector<cv::DMatch> matches;

        std::tie(src, deser, keys) = grab_on_image(cap, detector, extractor);

        if (src.empty()) {
            break;
        }

        matcher.match(deser, prev_deser, matches);
        cv::drawMatches(src, keys, prev_src, prev_keys, matches, image_with_points);

        cv::imshow("mather", image_with_points);

        prev_src = std::move(src);
        prev_keys = std::move(keys);
        prev_deser = std::move(deser);

        if (break_for_key(delay)) {
            break;
        }
    }

    cap.release();
    cv::destroyWindow("mather");
}


int main() {

    std::cout << "Choose an algorithm:" << std::endl
              << "1 - SURF" << std::endl
              << "2 - SIFT" << std::endl
              << "3 - BRISK" << std::endl;

    int number_algorithm = 0;
    std::cin >> number_algorithm;

    switch (number_algorithm) {
        case Algorithm::BRISK:
            frame_matching<cv::BRISK>(PATH_TO_VIDEO);
            break;
        case Algorithm::SIFT:
            frame_matching<cv::SIFT>(PATH_TO_VIDEO);
            break;
        case Algorithm::SURF:
            frame_matching<cv::xfeatures2d::SURF>(PATH_TO_VIDEO);
            break;
        default:
            throw std::invalid_argument("incorrect number of algorithm: " + std::to_string(number_algorithm));
    }

    return 0;
}

