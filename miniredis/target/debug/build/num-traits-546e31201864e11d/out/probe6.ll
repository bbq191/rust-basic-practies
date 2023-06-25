; ModuleID = 'probe6.69750023cf5425e6-cgu.0'
source_filename = "probe6.69750023cf5425e6-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@alloc_36f4066de3eeb440b2688363c2c86cbf = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/04075b32021932e3e8f6ab55d519b3b3494b6ef9/library/core/src/num/mod.rs" }>, align 1
@alloc_08b287a4580e7d0ef275d369c2f9518f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_36f4066de3eeb440b2688363c2c86cbf, [16 x i8] c"K\00\00\00\00\00\00\00w\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe6::probe
; Function Attrs: uwtable
define void @_ZN6probe65probe17hde102b00140ce16bE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hbbd6c5d0ede6cd59E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h68b8dd363a3cb3b9E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_08b287a4580e7d0ef275d369c2f9518f) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hbbd6c5d0ede6cd59E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h68b8dd363a3cb3b9E(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
