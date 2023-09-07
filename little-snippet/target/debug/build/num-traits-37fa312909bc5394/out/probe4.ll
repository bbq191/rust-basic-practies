; ModuleID = 'probe4.dbcd6294952ef563-cgu.0'
source_filename = "probe4.dbcd6294952ef563-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@alloc_ef92607a32443103ce9df5302f3958fa = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a991861ec9fd8aedffbe5744a8852c7c64dd40b2/library/core/src/num/mod.rs" }>, align 1
@alloc_7fbf68df5033a68c46f6520aefda6fa5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ef92607a32443103ce9df5302f3958fa, [16 x i8] c"K\00\00\00\00\00\00\00w\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe4::probe
; Function Attrs: uwtable
define void @_ZN6probe45probe17hac51ad5f0033be2cE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h28544072dd8aadc7E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h4eed2c7b7d038b92E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_7fbf68df5033a68c46f6520aefda6fa5) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h28544072dd8aadc7E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h4eed2c7b7d038b92E(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.74.0-nightly (a991861ec 2023-09-05)"}
