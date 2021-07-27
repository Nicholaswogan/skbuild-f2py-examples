# skbuild f2py examples

Here are some examples of how to use [skbuild](https://github.com/scikit-build/scikit-build), [CMake](https://cmake.org/), and [f2py](https://numpy.org/doc/stable/f2py/) together.

- **hello-fortran**: f2py finds C and Fortran compilers and builds fortran codes. Note, in this example CMake is not used to find compilers.

- **hello-fortran-cmaker**: f2py is used to generate a C wrapper to the fortran, then CMake is used to compile the generated codes.

- **hello-fortran-dependency**: This uses the same build approach as **hello-fortran-cmaker**, except more complicated because a dependency is also built with CMake.


## General notes
- In the CMakesLists.txt you MUST find python related packages in the following order. Otherwise there are errors.

```cmake
find_package(PythonExtensions REQUIRED)
find_package(NumPy)
find_package(F2PY REQUIRED)
```

- f2py generates different kinds of files depending on whether it is generating a wrapper to a fortran module or just fortran subroutines and fixed-form (.f) or free form (.f90). This is relevant to the **hello-fortran-cmaker** and **hello-fortran-dependency** shown here. In these examples, we wrap fortran .f90 modules. So the CMakesLists.txt would have to be adjusted for different problems.

- I'm not sure these examples work with Windows.


