#include "common.hpp"

void sum_matrix(const real *A, const real *B, real *C)
{
    const real (*nA)[N] = reinterpret_cast<decltype(nA)>(A);
    const real (*nB)[N] = reinterpret_cast<decltype(nB)>(B);
    real (*nC)[N] = reinterpret_cast<decltype(nC)>(C);

    for (size_t i = 0; i < M; ++i) {
        for (size_t j = 0; j < N; ++j) {
            nC[i][j] = nA[i][j] + nB[i][j];
        }
    }
}

int main()
{
    launch_cpu();
    return 0;
}