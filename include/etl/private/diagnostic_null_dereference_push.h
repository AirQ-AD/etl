///\file

/******************************************************************************
The MIT License(MIT)

Embedded Template Library.
https://github.com/ETLCPP/etl
https://www.etlcpp.com

Copyright(c) 2024 John Wellbelove

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files(the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and / or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions :

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
******************************************************************************/

/*
 * The header include guard has been intentionally omitted.
 * This file is intended to evaluated multiple times by design.
 */

#if defined(__GNUC__) && !defined(__clang__) && !defined(__llvm__)
  #pragma GCC diagnostic push 
#if (__GNUC__ >= 7)
  #pragma GCC diagnostic ignored "-Wnull-dereference"
#endif
#endif

#if defined(__clang__) || defined(__llvm__)
  #pragma clang diagnostic push 
#if (__clang_major__ > 3) || (__clang_major__ >= 3 && __clang_minor__ >= 8)
  #pragma clang diagnostic ignored "-Wnull-dereference"
#endif
#endif
