from skbuild import setup

setup(
    name="hello",
    version="1.2.3",
    description="a minimal example package (fortran version)",
    author='The scikit-build team',
    license="MIT",
    packages=['hello'],
    cmake_args=['-DSKBUILD=ON']
)
