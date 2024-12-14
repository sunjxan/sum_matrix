#include "common.hpp"

// 朴素实现，注意ix和iy对行列的编码

__global__ void kernel(const real (*A)[N], const real (*B)[N], real (*C)[N])
{
    unsigned iy = blockIdx.y * blockDim.y + threadIdx.y;
    unsigned ix = blockIdx.x * blockDim.x + threadIdx.x;

    if (iy < N && ix < M) {
        C[ix][iy] = __ldg(&A[ix][iy]) + __ldg(&B[ix][iy]);
    }
}

void sum_matrix(const real *A, const real *B, real *C)
{
    const real (*nA)[N] = reinterpret_cast<decltype(nA)>(A);
    const real (*nB)[N] = reinterpret_cast<decltype(nB)>(B);
    real (*nC)[N] = reinterpret_cast<decltype(nC)>(C);

    dim3 block_size(32, 32);
    // N是列对应y，M是行对应x
    dim3 grid_size(DIVUP(M, block_size.x), DIVUP(N, block_size.y));
    kernel<<<grid_size, block_size>>>(nA, nB, nC);
    CHECK(cudaGetLastError());
    CHECK(cudaDeviceSynchronize());
}

int main()
{
    launch_gpu();
    return 0;
}
