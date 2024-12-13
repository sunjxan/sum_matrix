#include "common.hpp"

// 朴素实现，注意iy和ix对行列的编码

__global__ void kernel(const real (*A)[N], const real (*B)[N], real (*C)[N])
{
    unsigned iy = blockIdx.y * blockDim.y + threadIdx.y;
    unsigned ix = blockIdx.x * blockDim.x + threadIdx.x;

    if (iy < M && ix < N) {
        C[iy][ix] = C[iy][ix] = A[iy][ix] + B[iy][ix];
    }
}

void sum_matrix(const real *A, const real *B, real *C)
{
    const real (*nA)[N] = reinterpret_cast<decltype(nA)>(A);
    const real (*nB)[N] = reinterpret_cast<decltype(nB)>(B);
    real (*nC)[N] = reinterpret_cast<decltype(nC)>(C);

    dim3 block_size(32, 32);
    // N是列对应x，M是行对应y
    dim3 grid_size(DIVUP(N, block_size.x), DIVUP(M, block_size.y));
    kernel<<<grid_size, block_size>>>(nA, nB, nC);
    CHECK(cudaGetLastError());
    CHECK(cudaDeviceSynchronize());
}

int main()
{
    launch_gpu();
    return 0;
}