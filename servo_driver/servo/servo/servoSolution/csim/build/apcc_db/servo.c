/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void servo( char llvm_cbe_up,  char llvm_cbe_down,  char llvm_cbe_left,  char llvm_cbe_right,  char *llvm_cbe_dutyCycle,  char *llvm_cbe_speed);


/* Global Variable Definitions and Initialization */
static unsigned char aesl_internal_current_speed;
static unsigned char aesl_internal_current_duty_cycle = ((unsigned char )-106);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void servo( char llvm_cbe_up,  char llvm_cbe_down,  char llvm_cbe_left,  char llvm_cbe_right,  char *llvm_cbe_dutyCycle,  char *llvm_cbe_speed) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  unsigned char llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  unsigned char llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  unsigned char llvm_cbe_tmp__3;
  unsigned char llvm_cbe_tmp__3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond3_count = 0;
  bool llvm_cbe_or_2e_cond3;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  unsigned char llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned char llvm_cbe_tmp__5;
  unsigned char llvm_cbe_tmp__5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned char llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  unsigned char llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned char llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned char llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  unsigned char llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned char llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned char llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_phitmp_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  unsigned char llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned char llvm_cbe_tmp__14;
  unsigned char llvm_cbe_tmp__14__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @servo\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i8* @aesl_internal_current_speed, align 1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__1 = (unsigned char )*(&aesl_internal_current_speed);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = and i1 %%1, %%3, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )((((llvm_cbe_down&255U) != (((unsigned char )0)&255U)) & ((( char )llvm_cbe_tmp__1) > (( char )((unsigned char )0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
  if (llvm_cbe_or_2e_cond) {
    goto llvm_cbe_tmp__15;
  } else {
    llvm_cbe_tmp__3__PHI_TEMPORARY = (unsigned char )llvm_cbe_tmp__1;   /* for PHI node */
    goto llvm_cbe_tmp__16;
  }

llvm_cbe_tmp__15:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add i8 %%2, -1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__2 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__1&255ull)) + ((unsigned char )(((unsigned char )-1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__2&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%5, i8* @aesl_internal_current_speed, align 1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_18_count);
  *(&aesl_internal_current_speed) = llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
  llvm_cbe_tmp__3__PHI_TEMPORARY = (unsigned char )llvm_cbe_tmp__2;   /* for PHI node */
  goto llvm_cbe_tmp__16;

llvm_cbe_tmp__16:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = phi i8 [ %%2, %%0 ], [ %%5, %%4  for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__3 = (unsigned char )llvm_cbe_tmp__3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__3);
printf("\n = 0x%X",llvm_cbe_tmp__1);
printf("\n = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond3 = and i1 %%8, %%9, !dbg !2 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_or_2e_cond3_count);
  llvm_cbe_or_2e_cond3 = (bool )((((llvm_cbe_up&255U) != (((unsigned char )0)&255U)) & ((( char )llvm_cbe_tmp__3) < (( char )((unsigned char )8))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond3 = 0x%X\n", llvm_cbe_or_2e_cond3);
  if (llvm_cbe_or_2e_cond3) {
    goto llvm_cbe_tmp__17;
  } else {
    llvm_cbe_tmp__5__PHI_TEMPORARY = (unsigned char )llvm_cbe_tmp__3;   /* for PHI node */
    goto llvm_cbe_tmp__18;
  }

llvm_cbe_tmp__17:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i8 %%7, 1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__4 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__3&255ull)) + ((unsigned char )(((unsigned char )1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__4&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%11, i8* @aesl_internal_current_speed, align 1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_25_count);
  *(&aesl_internal_current_speed) = llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
  llvm_cbe_tmp__5__PHI_TEMPORARY = (unsigned char )llvm_cbe_tmp__4;   /* for PHI node */
  goto llvm_cbe_tmp__18;

llvm_cbe_tmp__18:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = phi i8 [ %%7, %%6 ], [ %%11, %%10  for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__5 = (unsigned char )llvm_cbe_tmp__5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__5);
printf("\n = 0x%X",llvm_cbe_tmp__3);
printf("\n = 0x%X",llvm_cbe_tmp__4);
}
  if (((llvm_cbe_left&255U) == (((unsigned char )0)&255U))) {
    goto llvm_cbe_tmp__19;
  } else {
    goto llvm_cbe_tmp__20;
  }

llvm_cbe_tmp__20:
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i8* @aesl_internal_current_duty_cycle, align 1, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__6 = (unsigned char )*(&aesl_internal_current_duty_cycle);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = sub i8 %%16, %%13, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__7 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__6&255ull)) - ((unsigned char )(llvm_cbe_tmp__5&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__7&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%17, i8* @aesl_internal_current_duty_cycle, align 1, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_32_count);
  *(&aesl_internal_current_duty_cycle) = llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
  goto llvm_cbe_tmp__19;

llvm_cbe_tmp__19:
  if (((llvm_cbe_right&255U) == (((unsigned char )0)&255U))) {
    goto llvm_cbe_tmp__21;
  } else {
    goto llvm_cbe_tmp__22;
  }

llvm_cbe_tmp__22:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i8* @aesl_internal_current_duty_cycle, align 1, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__8 = (unsigned char )*(&aesl_internal_current_duty_cycle);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = add i8 %%21, %%13, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__9 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__8&255ull)) + ((unsigned char )(llvm_cbe_tmp__5&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__9&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%22, i8* @aesl_internal_current_duty_cycle, align 1, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_38_count);
  *(&aesl_internal_current_duty_cycle) = llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
  goto llvm_cbe_tmp__21;

llvm_cbe_tmp__21:
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = load i8* @aesl_internal_current_duty_cycle, align 1, !dbg !3 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__10 = (unsigned char )*(&aesl_internal_current_duty_cycle);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = select i1 %%25, i8 100, i8 %%24, !dbg !3 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__11 = (unsigned char )((((( char )llvm_cbe_tmp__10) < (( char )((unsigned char )100)))) ? ((unsigned char )((unsigned char )100)) : ((unsigned char )llvm_cbe_tmp__10));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%26, i8* %%dutyCycle, align 1, !dbg !3 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_43_count);
  *llvm_cbe_dutyCycle = llvm_cbe_tmp__11;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i8* @aesl_internal_current_speed, align 1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__12 = (unsigned char )*(&aesl_internal_current_speed);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
  if (((( char )llvm_cbe_tmp__12) < (( char )((unsigned char )8)))) {
    goto llvm_cbe__2e_critedge;
  } else {
    llvm_cbe_tmp__14__PHI_TEMPORARY = (unsigned char )((unsigned char )8);   /* for PHI node */
    goto llvm_cbe_tmp__23;
  }

llvm_cbe__2e_critedge:
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = select i1 %%28, i8 0, i8 %%27, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__13 = (unsigned char )((((( char )llvm_cbe_tmp__12) < (( char )((unsigned char )0)))) ? ((unsigned char )((unsigned char )0)) : ((unsigned char )llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
  llvm_cbe_tmp__14__PHI_TEMPORARY = (unsigned char )llvm_cbe_tmp__13;   /* for PHI node */
  goto llvm_cbe_tmp__23;

llvm_cbe_tmp__23:
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = phi i8 [ %%29, %%.critedge ], [ 8, %%23 ], !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__14 = (unsigned char )llvm_cbe_tmp__14__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__14);
printf("\n = 0x%X",llvm_cbe_tmp__13);
printf("\n = 0x%X",((unsigned char )8));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%31, i8* %%speed, align 1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_50_count);
  *llvm_cbe_speed = llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @servo}\n");
  return;
}

