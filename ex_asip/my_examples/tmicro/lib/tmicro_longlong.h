#ifndef _tmicro_longlong_h
#define _tmicro_longlong_h

namespace tmicro_primitive {
    struct dlong property(keep_in_registers llvm_only) {
        unsigned long lo;   // Tmicro is little endian hence LSBs first
        unsigned long hi;
        dlong(unsigned long l, unsigned long h) : lo(l), hi(h) { }
    };
}

// declaration of built-in long type representations

chess_properties {
    representation signed long long     : dlong;
    representation unsigned long long   : dlong;
}

#endif /* _tmicro_longlong_h */
