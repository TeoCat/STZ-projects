#include <iostream>
#include "Solver.h"

const double a = 0.3;
const double b = 0.2;
const double d = 1;

Eigen::VectorXd equation1(double time, const Eigen::VectorXd &val) {
    Eigen::VectorXd ret(1);
    ret(0) = a * time - b * val(0, 0);
    return ret;
}

Eigen::VectorXd result1(double time) {
    Eigen::VectorXd result(1);
    result(0) = a / b * (time - 1 / b) + 8.5 * exp(-b * time);
    return result;
}

Eigen::VectorXd equation2(double time, const Eigen::VectorXd &val) {
    Eigen::VectorXd ret(2, 1);
    ret(0, 0) = 9 * val(0, 0) + 24 * val(1, 0) + 5 * cos(time) - 1.0 / 3 * sin(time);
    ret(1, 0) = -24 * val(0, 0) - 51 * val(1, 0) + 9 * cos(time) + 1.0 / 3 * sin(time);
    return ret;
}

Eigen::VectorXd result2(double time) {
    Eigen::VectorXd result(2);
    result(0) = 2.0 * exp(-3 * time) - exp(-39 * time) + 1.0 / 3 * cos(time);
    result(1) = - exp(-3 * time) + 2.0 * exp(-39 * time) - 1.0 / 3 * cos(time);
    return result;
}

int main(int argc, char** argv) {
    Eigen::VectorXd init_value(1, 1);
    init_value(0, 0) = d;
    Calculate(equation1, result1, init_value);

    std::cout << std::endl;

    Eigen::VectorXd init_value2(2, 1);
    init_value2(0, 0) = 4.0 / 3;
    init_value2(1, 0) = 2.0 / 3;
    Calculate(equation2, result2, init_value2);

    return 0;
}