; ModuleID = 'getopt1.c'
source_filename = "getopt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_option = type { i8*, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gg_getopt_long(i32 %0, i8** %1, i8* %2, %struct.gg_option* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gg_option*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.gg_option* %3, %struct.gg_option** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.gg_option*, %struct.gg_option** %9, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @getopt_internal(i32 %11, i8** %12, i8* %13, %struct.gg_option* %14, i32* %15, i32 0)
  ret i32 %16
}

declare dso_local i32 @getopt_internal(i32, i8**, i8*, %struct.gg_option*, i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getopt_long_only(i32 %0, i8** %1, i8* %2, %struct.gg_option* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gg_option*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.gg_option* %3, %struct.gg_option** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.gg_option*, %struct.gg_option** %9, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @getopt_internal(i32 %11, i8** %12, i8* %13, %struct.gg_option* %14, i32* %15, i32 1)
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
