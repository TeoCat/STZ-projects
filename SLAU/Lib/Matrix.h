//
// Created by Fed on 31.03.2022.
//

#ifndef SLAU_MATRIX_H
#define SLAU_MATRIX_H

#include <iostream>
#include <vector>

using namespace std;

class Matrix {
public:
    Matrix() = delete;

    ~Matrix() = default;

    explicit Matrix(const std::vector<std::vector<double>> &mat);

    Matrix(const Matrix &mat) = default;

    Matrix &operator=(const Matrix &mat) = default;

    double operator()(size_t i, size_t j) const;

    double &operator()(size_t i, size_t j);

    size_t GetCols() const;

    size_t GetRows() const;

    size_t GetSize() const;

    std::vector<std::vector<double>> GetMatrix() const;

    bool operator==(const Matrix &mat) const;

    bool operator!=(const Matrix &mat) const;

    std::pair<Matrix, Matrix> LU() const;

    void Inverse();

private:
    friend std::ostream &operator<<(std::ostream &out, const Matrix &matrix);

    std::vector<std::vector<double>> data;
};

Matrix Solve(const Matrix &A, const Matrix &B);


#endif //SLAU_MATRIX_H
