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
extern unsigned int current_speed;
extern unsigned int current_duty_cycle;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void servo( char llvm_cbe_up,  char llvm_cbe_down,  char llvm_cbe_left,  char llvm_cbe_right,  char *llvm_cbe_dutyCycle,  char *llvm_cbe_speed);
signed int main(void);


/* Global Variable Definitions and Initialization */
unsigned int current_speed;
unsigned int current_duty_cycle = 150u;
static  char aesl_internal__OC_str[32] = "Speed: %d %c Duty Cycle %d %c \n";
static  char aesl_internal__OC_str1[22] = "ERROR: Duty Cycle %d\n";
static  char aesl_internal__OC_str2[19] = "Error: Speed: %d \n";


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
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  unsigned char llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  unsigned char llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  unsigned char llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @servo\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i32* @current_duty_cycle, align 4, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_13_count);
  llvm_cbe_tmp__1 = (unsigned int )*(&current_duty_cycle);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = trunc i32 %%1 to i8, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__2 = (unsigned char )((unsigned char )llvm_cbe_tmp__1&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = load i32* @current_speed, align 4, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__3 = (unsigned int )*(&current_speed);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = trunc i32 %%3 to i8, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__4 = (unsigned char )((unsigned char )llvm_cbe_tmp__3&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%2, i8* %%dutyCycle, align 1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_21_count);
  *llvm_cbe_dutyCycle = llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%4, i8* %%speed, align 1, !dbg !5 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_22_count);
  *llvm_cbe_speed = llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i8 %%4 to i32, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_23_count);
  llvm_cbe_tmp__5 = (unsigned int )((signed int )( char )llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i8* %%dutyCycle, align 1, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__6 = (unsigned char )*llvm_cbe_dutyCycle;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = sext i8 %%6 to i32, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_25_count);
  llvm_cbe_tmp__7 = (unsigned int )((signed int )( char )llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @aesl_internal_.str, i64 0, i64 0), i32 %%5, i32 %%5, i32 %%7, i32 %%7) nounwind, !dbg !4 for 0x%I64xth hint within @servo  --> \n", ++aesl_llvm_cbe_26_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 32
#endif
])), llvm_cbe_tmp__5, llvm_cbe_tmp__5, llvm_cbe_tmp__7, llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__5);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__5);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__7);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__7);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__8);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @servo}\n");
  return;
}


signed int main(void) {
  static  unsigned long long aesl_llvm_cbe_speed_count = 0;
   char llvm_cbe_speed;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_duty_cycle_count = 0;
   char llvm_cbe_duty_cycle;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  unsigned char llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned char llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;

  CODE_FOR_MAIN();
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @main\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%speed, align 1, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_35_count);
  *(&llvm_cbe_speed) = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%duty_cycle, align 1, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_43_count);
  *(&llvm_cbe_duty_cycle) = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  call void @servo(i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8* %%duty_cycle, i8* %%speed), !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_44_count);
  servo(((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ( char *)(&llvm_cbe_duty_cycle), ( char *)(&llvm_cbe_speed));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument  = 0x%X",((unsigned char )0));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i8* %%duty_cycle, align 1, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__9 = (unsigned char )*(&llvm_cbe_duty_cycle);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i8 %%1 to i32, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__10 = (unsigned int )((signed int )( char )llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @aesl_internal_.str1, i64 0, i64 0), i32 %%2) nounwind, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_54_count);
  printf(( char *)((&aesl_internal__OC_str1[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 22
#endif
])), llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__11);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i8* %%speed, align 1, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__12 = (unsigned char )*(&llvm_cbe_speed);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
  if (((llvm_cbe_tmp__12&255U) == (((unsigned char )0)&255U))) {
    goto llvm_cbe_tmp__15;
  } else {
    goto llvm_cbe_tmp__16;
  }

llvm_cbe_tmp__16:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = sext i8 %%4 to i32, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__13 = (unsigned int )((signed int )( char )llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @aesl_internal_.str2, i64 0, i64 0), i32 %%7) nounwind, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_66_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 19
#endif
])), llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__13);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__14);
}
  goto llvm_cbe_tmp__15;

llvm_cbe_tmp__15:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @main}\n");
  return 0u;
}

