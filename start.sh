# echo "cpu:"
# nvcc -O2 -std=c++17 -Xcompiler -Wall cpu_1.cu -o cpu_1.out && ./cpu_1.out
# nvcc -O2 -std=c++17 -Xcompiler -Wall -DUSE_DP cpu_1.cu -o cpu_1_dp.out && ./cpu_1_dp.out
# nvcc -O2 -std=c++17 -Xcompiler -Wall cpu_2.cu -o cpu_2.out && ./cpu_2.out
# nvcc -O2 -std=c++17 -Xcompiler -Wall -DUSE_DP cpu_2.cu -o cpu_2_dp.out && ./cpu_2_dp.out
# echo ""
echo "cuda:"
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr cuda_1.cu -o cuda_1.out && ./cuda_1.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr -DUSE_DP cuda_1.cu -o cuda_1_dp.out && ./cuda_1_dp.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr cuda_2.cu -o cuda_2.out && ./cuda_2.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr -DUSE_DP cuda_2.cu -o cuda_2_dp.out && ./cuda_2_dp.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr cuda_3.cu -o cuda_3.out && ./cuda_3.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr -DUSE_DP cuda_3.cu -o cuda_3_dp.out && ./cuda_3_dp.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr cuda_4.cu -o cuda_4.out && ./cuda_4.out
nvcc -O2 -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr -DUSE_DP cuda_4.cu -o cuda_4_dp.out && ./cuda_4_dp.out
echo ""
echo "-Xptxas -dlcm=cg"
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr cuda_1.cu -o cuda_1_cg.out && ./cuda_1_cg.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr -DUSE_DP cuda_1.cu -o cuda_1_dp_cg.out && ./cuda_1_dp_cg.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr cuda_2.cu -o cuda_2_cg.out && ./cuda_2_cg.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr -DUSE_DP cuda_2.cu -o cuda_2_dp_cg.out && ./cuda_2_dp_cg.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr cuda_3.cu -o cuda_3_cg.out && ./cuda_3_cg.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr -DUSE_DP cuda_3.cu -o cuda_3_dp_cg.out && ./cuda_3_dp_cg.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr cuda_4.cu -o cuda_4_cg.out && ./cuda_4_cg.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=cg --expt-relaxed-constexpr -DUSE_DP cuda_4.cu -o cuda_4_dp_cg.out && ./cuda_4_dp_cg.out
echo ""
echo "-Xptxas -dlcm=ca"
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr cuda_1.cu -o cuda_1_ca.out && ./cuda_1_ca.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr -DUSE_DP cuda_1.cu -o cuda_1_dp_ca.out && ./cuda_1_dp_ca.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr cuda_2.cu -o cuda_2_ca.out && ./cuda_2_ca.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr -DUSE_DP cuda_2.cu -o cuda_2_dp_ca.out && ./cuda_2_dp_ca.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr cuda_3.cu -o cuda_3_ca.out && ./cuda_3_ca.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr -DUSE_DP cuda_3.cu -o cuda_3_dp_ca.out && ./cuda_3_dp_ca.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr cuda_4.cu -o cuda_4_ca.out && ./cuda_4_ca.out
nvcc -O2 -std=c++17 -Xcompiler -Wall -Xptxas -dlcm=ca --expt-relaxed-constexpr -DUSE_DP cuda_4.cu -o cuda_4_dp_ca.out && ./cuda_4_dp_ca.out
