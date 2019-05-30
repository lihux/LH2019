学习这篇文章https://www.cnblogs.com/dongzhiquan/p/7828667.html的内容，写的代码

1. test.s 是未经优化的汇编文件，用命令llvm-gcc -S -o test.s test.c生成；
2. testO1.s 经O1级别优化的汇编代码，llvm-gcc -O1 -S -o testO1.s test.c
3. testO2.s 经O2级别优化的汇编代码，llvm-gcc -O2 -S -o testO2.s test.c
4. testO3.s 经O3级别优化的汇编代码，llvm-gcc -O3 -S -o testO3.s test.c
5. 命令llvm-gcc -S -o manyArgc.o manyArgc.c，查看传7个参数的效果
