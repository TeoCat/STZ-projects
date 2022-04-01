//
// Created by Fed on 31.03.2022.
//

#include "Matrix.h"

static const char *BAD_INPUT_PARAMETERS = "Bad Input Parameters";
static const char *BAD_SIZE_PARAMETERS = "Bad Size Parameters";

static const double EPS = 1e-7;

Matrix::Matrix(const std::vector<std::vector<double>> &mat) {
    if (mat.empty() || mat.data()->empty()) throw std::runtime_error(BAD_INPUT_PARAMETERS);
    data = mat;
}

double Matrix::operator()(size_t i, size_t j) const {
    if (i >= GetRows() || j >= GetCols()) throw std::runtime_error(BAD_SIZE_PARAMETERS);
    return data[i][j];
}

double &Matrix::operator()(size_t i, size_t j) {
    if (i >= GetRows() || j >= GetCols()) throw std::runtime_error(BAD_SIZE_PARAMETERS);
    return data[i][j];

}

size_t Matrix::GetSize() const {
    return data.size();
}

size_t Matrix::GetCols() const {
    return data.data()->size();
}

size_t Matrix::GetRows() const {
    return data.size();
}

std::vector<std::vector<double>> Matrix::GetMatrix() const {
    return data;
}

bool Matrix::operator==(const Matrix &mat) const {
    auto rows = GetRows();
    auto cols = GetCols();
    if (rows != mat.GetRows() || cols != mat.GetCols()) throw std::runtime_error("not correct sizes of matrix");
    for (size_t i = 0; i < rows; ++i) {
        for (size_t j = 0; j < cols; ++j) {
            if (std::abs(mat(i, j) - (*this)(i, j)) > EPS) {
                return false;
            }
        }
    }
    return true;
}

bool Matrix::operator!=(const Matrix &mat) const { return !(*this == mat); }

std::pair<Matrix, Matrix> Matrix::LU() const {
    int n = GetSize();
    Matrix L(this->data);
    for (auto &v: L.data) {
        std::fill(v.begin(), v.end(), 0);
    }
    Matrix U(this->data);

    for (int i = 0; i < n; i++)
        for (int j = i; j < n; j++)
            L(j, i) = U(j, i) / U(i, i);

    for (int k = 1; k < n; k++) {
        for (int i = k - 1; i < n; i++)
            for (int j = i; j < n; j++)
                L(j, i) = U(j, i) / U(i, i);

        for (int i = k; i < n; i++)
            for (int j = k - 1; j < n; j++)
                U(i, j) = U(i, j) - L(i, k - 1) * U(k - 1, j);
    }

    return {L, U};

}

void Matrix::Inverse() {
    Matrix One_Col_E(data);
    One_Col_E.data.resize(GetSize());
    for (auto &raw : One_Col_E.data) raw.resize(1);
    Matrix invMat(this->data);
    for (int i = 0; i < GetSize(); ++i) {
        for (auto &v: One_Col_E.data) std::fill(v.begin(), v.end(), 0);
        One_Col_E(i, 0) = 1;
        for (int j = 0; j < GetSize(); ++j) {
            invMat(j, i) = Solve(*this, One_Col_E)(j, 0);
        }
    }
    *this = invMat;
}

std::ostream &operator<<(std::ostream &os, const Matrix &matrix) {
    size_t cols = matrix.GetCols();
    size_t rows = matrix.GetRows();
    for (size_t i = 0; i < rows; ++i) {
        for (size_t j = 0; j < cols; ++j) {
            os << matrix(i, j);
            if (j == cols - 1) {
                os << "\n";
            } else {
                os << " ";
            }
        }
    }
    return os;
}

static Matrix forward(const Matrix &L, const Matrix &b) {
    Matrix y(b);
    for (size_t i = 0; i < L.GetSize(); ++i) {
        for (size_t j = 0; j < i; ++j) {
            y(i, 0) -= L(i, j) * y(j, 0);
        }
        y(i, 0) /= L(i, i);
    }
    return y;
}

static Matrix back(const Matrix &U, const Matrix &y) {
    Matrix x(y);
    for (int i = U.GetSize() - 1; i >= 0; --i) {
        for (size_t j = i + 1; j < U.GetSize(); ++j) {
            x(i, 0) -= U(i, j) * x(j, 0);
        }
        x(i, 0) /= U(i, i);
    }
    return x;
}

Matrix Solve(const Matrix &A, const Matrix &B) {
    auto LU = A.LU();
    Matrix y = forward(LU.first, B);
    Matrix x = back(LU.second, y);
    return x;
}

