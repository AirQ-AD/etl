#!/bin/sh
cd sanity-check || exit 1
echo "" > log.txt

export CMAKE_BUILD_PARALLEL_LEVEL=$(nproc --all)

###############################################################################
cd c++03 || exit 1
cmake -E make_directory bgcc bclang
{ echo ""
echo "Using "${CMAKE_BUILD_PARALLEL_LEVEL}" jobs"
echo "-----------------------------------------------"
echo " C++03"
echo "-----------------------------------------------"

echo "GCC - STL"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=OFF ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL - Builtins"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON -DETL_USE_TYPE_TRAITS_BUILTINS=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL - User defined traits"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON -DETL_USER_DEFINED_TYPE_TRAITS=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - STL"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=OFF ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL - Builtins"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON -DETL_USE_TYPE_TRAITS_BUILTINS=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL - User defined traits"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON -DETL_USER_DEFINED_TYPE_TRAITS=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

###############################################################################
cd ../c++11 || exit 1
cmake -E make_directory bgcc bclang
{ echo ""
echo "-----------------------------------------------"
echo " C++11"
echo "-----------------------------------------------"

echo "GCC - STL"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=OFF ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL - Builtins"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON -DETL_USE_TYPE_TRAITS_BUILTINS=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL - User defined traits"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON -DETL_USER_DEFINED_TYPE_TRAITS=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - STL"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=OFF ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL - Builtins"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON -DETL_USE_TYPE_TRAITS_BUILTINS=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL - User defined traits"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON -DETL_USER_DEFINED_TYPE_TRAITS=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

###############################################################################
cd ../c++14 || exit 1
cmake -E make_directory bgcc bclang
{ echo ""
echo "-----------------------------------------------"
echo " C++14"
echo "-----------------------------------------------"

echo "GCC - STL"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=OFF ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL - Builtins"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON -DETL_USE_TYPE_TRAITS_BUILTINS=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL - User defined traits"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON -DETL_USER_DEFINED_TYPE_TRAITS=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - STL"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=OFF ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL - Builtins"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON -DETL_USE_TYPE_TRAITS_BUILTINS=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL - User defined traits"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON -DETL_USER_DEFINED_TYPE_TRAITS=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

###############################################################################
cd ../c++17 || exit 1
cmake -E make_directory bgcc bclang
{ echo ""
echo "-----------------------------------------------"
echo " C++17 "
echo "-----------------------------------------------"

echo "GCC - STL"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=OFF ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL - Builtins"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON -DETL_USE_TYPE_TRAITS_BUILTINS=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "GCC - No STL - User defined traits"; } >> ../log.txt
g++ --version | head --lines=1 >> ../log.txt
CC=gcc CXX=g++ cmake -E chdir bgcc cmake --cmake-clean-cache -DNO_STL=ON -DETL_USER_DEFINED_TYPE_TRAITS=ON ..
cmake --build bgcc || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - STL"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=OFF ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL - Builtins"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON -DETL_USE_TYPE_TRAITS_BUILTINS=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""; echo "Clang - No STL - User defined traits"; } >> ../log.txt
clang++ --version | head --lines=1 >> ../log.txt
CC=clang CXX=clang++ cmake -E chdir bclang cmake --cmake-clean-cache -DNO_STL=ON -DETL_USER_DEFINED_TYPE_TRAITS=ON ..
cmake --build bclang || echo "****************\n**** Failed ****\n****************" >> ../log.txt

{ echo ""
echo "-----------------------------------------------"
echo " Completed"
echo "-----------------------------------------------"; } >> ../log.txt
