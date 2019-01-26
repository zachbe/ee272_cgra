from .config import config
from .pe import PE, CONST
from .bv import BitVector
import functools

__all__  = ['or_', 'and_', 'xor']
__all__ += ['shr', 'lshl']
__all__ += ['add', 'sub']
__all__ += ['add_vec']
__all__ += ['min', 'max', 'abs']
__all__ += ['ge', 'le']
__all__ += ['sel']
__all__ += ['mul0', 'mul1', 'mul2']

def or_():
    return PE( 0x12, lambda a, b, c, d: a | b).carry()

def and_():
    return PE( 0x13 , lambda a, b, c, d: a & b ).carry()

def xor():
    return PE( 0x14 , lambda a, b, c, d: a ^ b ).carry()

# def inv():
#     return PE( 0x15 , lambda a, b, c, d: ~a )

def neg():
    return PE( 0x15 , lambda a, b, c, d: ~a+b ).regb(CONST, 1)


def shr(signed):
    # b[3:0]
    def func(signed, a, b, c, d):
        if signed:
            op = a.bvashr
        else:
            op = a.bvlshr
        return op(b[:4])
    return PE( 0xf , functools.partial(func, signed), signed=signed).carry()

# def ashr():
#     # b[3:0]
#     return PE( 0x10 , lambda a, b, c, d: a >> b, signed=1 )

def lshl():
    # b[3:0]
    return PE( 0x11 , lambda a, b, c, d: a.bvshl(b[:4])).carry()


def add():
    # res_p = cout
    def _add(a, b, c, d):
        res_p = BitVector(a, a.num_bits + 1) + BitVector(b, b.num_bits + 1) + d >= 2 ** 16
        return a + b + d, res_p
    return PE( 0x0 , _add)

def add_vec():
    def _add_vec(a, b, c, d):
        res_p = (BitVector(a[0:3], 5) + BitVector(b[0:3], 5) >= 2 ** 4) or \
                (BitVector(a[4:7], 5) + BitVector(b[4:7], 5) >= 2 ** 4) or \
                (BitVector(a[8:11], 5) + BitVector(b[8:11], 5) >= 2 ** 4) or \
                (BitVector(a[12:15], 5) + BitVector(b[12:15], 5) >= 2 ** 4)
        first = (a[0:3] + b[0:3])
        print(a[0:3] + b[0:3])
        second= (a[4:7] + b[4:7])
        print((a[4:7] + b[4:7]))
        third = (a[8:11] + b[8:11])
        print(third)
        fourth= (a[12:15] + b[12:15])
        print(fourth)
        return first & second & third & fourth, res_p
    return PE( 0x16 , _add_vec )

def sub():
    def _sub(a, b, c, d):
        res_p = BitVector(a, a.num_bits + 1) + BitVector(~b, b.num_bits + 1) + 1 >= 2 ** 16
        return a - b, res_p
    return PE( 0x1 , _sub)


# def eq():
#     raise NotImplementedError("eq should use sub with Z flag")
    # res?
    # return PE( 0x6, lambda a, b, c, d: a+b ).cond( lambda ge, eq, le: eq )

def ge(signed):
    # res = a >= b ? a : b (comparison should be signed/unsigned)
    def _ge(a, b, c, d):
        res = a if a >= b else b
        res_p = a >= b
        return res, res_p
    return PE( 0x4, _ge, signed=signed )

max = ge

def le(signed):
    # res = a <= b ? a : b
    def _le(a, b, c, d):
        res = a if a <= b else b
        res_p = a <= b
        return res, res_p
    return PE( 0x5 , _le, signed=signed )
min = le

def abs(signed=True):
    # res = abs(a-b) + c
    def _abs(a, b, c, d):
        return a if a >= 0 else -a, a[15]
    # if not signed:
    #     raise Exception("Abs undefined for unsigned mode ")
    return PE( 0x3 , _abs , signed=signed)


def sel():
    return PE( 0x8 , lambda a, b, c, d: a if d else b ).carry()

# def const(value):
#     return PE( 0x0 , lambda a, b, c, d: a ).rega( CONST, value )

def mul0(signed):
    def _mul(a, b, c, d):
        a, b = a.ext(16), b.ext(16)
        return (a * b)[:16], 0
    return PE(0xb , _mul, signed=signed)

def mul1(signed):
    def _mul(a, b, c, d):
        a, b = a.ext(16), b.ext(16)
        return (a * b)[8:24], 0
    return PE(0xc , _mul, signed=signed)

def mul2(signed):
    def _mul(a, b, c, d):
        a, b = a.ext(16), b.ext(16)
        return (a * b)[16:32], 0
    return PE(0xd , _mul, signed=signed)
