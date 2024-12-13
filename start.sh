# echo "cpu:"
# nvcc -O2 -std=c++17 -Xcompiler -Wall cpu_1.cu -o a.out && ./a.out
# nvcc -O2 -std=c++17 -Xcompiler -Wall -DUSE_DP cpu_1.cu -o a.out && ./a.out
# nvcc -O2 -std=c++17 -Xcompiler -Wall cpu_2.cu -o a.out && ./a.out
# nvcc -O2 -std=c++17 -Xcompiler -Wall -DUSE_DP cpu_2.cu -o a.out && ./a.out
# echo ""
echo "cuda:"
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr cuda_1.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr -DUSE_DP cuda_1.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr cuda_2.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr -DUSE_DP cuda_2.cu -o a.out && ./a.out
echo ""
echo "-Xptxas -dlcm=ca"
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr cuda_1.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr -DUSE_DP cuda_1.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr cuda_2.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr -DUSE_DP cuda_2.cu -o a.out && ./a.out
echo ""
echo "-Xptxas -dlcm=cg"
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr cuda_1.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr -DUSE_DP cuda_1.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr cuda_2.cu -o a.out && ./a.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr -DUSE_DP cuda_2.cu -o a.out && ./a.out