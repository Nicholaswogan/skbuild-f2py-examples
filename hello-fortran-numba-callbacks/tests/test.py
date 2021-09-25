from hello import hello_mod
import numba as nb

signature = nb.types.double(nb.types.double)

@nb.cfunc(signature)
def some_function(a):
    return a + 3.14

ptr = some_function.address

hello_mod.hello(ptr)