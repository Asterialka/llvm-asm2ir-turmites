; ModuleID = 'app.c'
source_filename = "app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.app.turn = private unnamed_addr constant [6 x i32] [i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 -1], align 16
@__const.app.palette = private unnamed_addr constant [6 x i32] [i32 -16777216, i32 -14074749, i32 -13005898, i32 -8858434, i32 -800131, i32 -1085051], align 16

; Function Attrs: noreturn nounwind optsize sspstrong uwtable
define dso_local void @app() local_unnamed_addr #0 {
  %1 = alloca [192 x [384 x i32]], align 16
  %2 = alloca [32 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca [32 x i32], align 16
  %5 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(294912) %1, i8 0, i64 294912, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  br label %6

6:                                                ; preds = %6, %0
  %7 = phi i64 [ 0, %0 ], [ %27, %6 ]
  %8 = phi <4 x i16> [ <i16 0, i16 1, i16 2, i16 3>, %0 ], [ %28, %6 ]
  %9 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %0 ], [ %29, %6 ]
  %10 = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %0 ], [ %30, %6 ]
  %11 = mul nuw nsw <4 x i16> %8, splat (i16 101)
  %12 = add nuw nsw <4 x i16> %11, splat (i16 37)
  %13 = urem <4 x i16> %12, splat (i16 384)
  %14 = zext nneg <4 x i16> %13 to <4 x i32>
  %15 = getelementptr inbounds nuw i32, ptr %2, i64 %7
  store <4 x i32> %14, ptr %15, align 16, !tbaa !5
  %16 = mul nuw nsw <4 x i16> %8, splat (i16 73)
  %17 = add nuw nsw <4 x i16> %16, splat (i16 19)
  %18 = urem <4 x i16> %17, splat (i16 192)
  %19 = zext nneg <4 x i16> %18 to <4 x i32>
  %20 = getelementptr inbounds nuw i32, ptr %3, i64 %7
  store <4 x i32> %19, ptr %20, align 16, !tbaa !5
  %21 = mul <4 x i32> %9, splat (i32 3)
  %22 = and <4 x i32> %21, splat (i32 3)
  %23 = getelementptr inbounds nuw i32, ptr %4, i64 %7
  store <4 x i32> %22, ptr %23, align 16, !tbaa !5
  %24 = urem <4 x i8> %10, splat (i8 6)
  %25 = zext nneg <4 x i8> %24 to <4 x i32>
  %26 = getelementptr inbounds nuw i32, ptr %5, i64 %7
  store <4 x i32> %25, ptr %26, align 16, !tbaa !5
  %27 = add nuw i64 %7, 4
  %28 = add <4 x i16> %8, splat (i16 4)
  %29 = add <4 x i32> %9, splat (i32 4)
  %30 = add <4 x i8> %10, splat (i8 4)
  %31 = icmp eq i64 %27, 32
  br i1 %31, label %32, label %6, !llvm.loop !9

32:                                               ; preds = %6, %37
  %33 = phi i32 [ %38, %37 ], [ 0, %6 ]
  br label %39

34:                                               ; preds = %82
  %35 = add nuw nsw i32 %33, 1
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %106, label %37

37:                                               ; preds = %34, %105
  %38 = phi i32 [ %35, %34 ], [ 0, %105 ]
  br label %32, !llvm.loop !13

39:                                               ; preds = %32, %82
  %40 = phi i64 [ 0, %32 ], [ %103, %82 ]
  %41 = getelementptr inbounds nuw i32, ptr %2, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = getelementptr inbounds nuw i32, ptr %3, i64 %40
  %44 = load i32, ptr %43, align 4, !tbaa !5
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [384 x i32], ptr %1, i64 %45
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !5
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds nuw i32, ptr %5, i64 %40
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = add nsw i32 %52, %49
  %54 = icmp eq i32 %50, 6
  %55 = select i1 %54, i32 0, i32 %50
  %56 = icmp sgt i32 %53, 5
  %57 = add nsw i32 %53, -6
  %58 = select i1 %56, i32 %57, i32 %53
  %59 = getelementptr inbounds nuw i32, ptr %4, i64 %40
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds i32, ptr @__const.app.turn, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !5
  %64 = add nsw i32 %63, %60
  %65 = and i32 %64, 3
  store i32 %65, ptr %59, align 4, !tbaa !5
  store i32 %55, ptr %48, align 4, !tbaa !5
  %66 = sext i32 %55 to i64
  %67 = getelementptr inbounds i32, ptr @__const.app.palette, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = shl nsw i32 %42, 2
  %70 = shl nsw i32 %44, 2
  br label %71

71:                                               ; preds = %74, %39
  %72 = phi i32 [ 0, %39 ], [ %75, %74 ]
  %73 = add nuw nsw i32 %72, %70
  br label %77

74:                                               ; preds = %77
  %75 = add nuw nsw i32 %72, 1
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %82, label %71, !llvm.loop !14

77:                                               ; preds = %77, %71
  %78 = phi i32 [ 0, %71 ], [ %80, %77 ]
  %79 = add nuw nsw i32 %78, %69
  tail call void @simPutPixel(i32 noundef %79, i32 noundef %73, i32 noundef %68) #5
  %80 = add nuw nsw i32 %78, 1
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %74, label %77, !llvm.loop !15

82:                                               ; preds = %74
  %83 = icmp eq i32 %65, 1
  %84 = zext i1 %83 to i32
  %85 = icmp eq i32 %65, 3
  %86 = sext i1 %85 to i32
  %87 = add i32 %42, %84
  %88 = add i32 %87, %86
  %89 = icmp eq i32 %65, 2
  %90 = zext i1 %89 to i32
  %91 = icmp eq i32 %65, 0
  %92 = sext i1 %91 to i32
  %93 = add i32 %44, %90
  %94 = add i32 %93, %92
  %95 = icmp slt i32 %88, 0
  %96 = select i1 %95, i32 383, i32 %88
  %97 = icmp eq i32 %96, 384
  %98 = select i1 %97, i32 0, i32 %96
  store i32 %98, ptr %41, align 4
  %99 = icmp slt i32 %94, 0
  %100 = select i1 %99, i32 191, i32 %94
  %101 = icmp eq i32 %100, 192
  %102 = select i1 %101, i32 0, i32 %100
  store i32 %102, ptr %43, align 4
  %103 = add nuw nsw i64 %40, 1
  %104 = icmp eq i64 %103, 32
  br i1 %104, label %34, label %39, !llvm.loop !16

105:                                              ; preds = %106
  tail call void @simFlush() #5
  br label %37

106:                                              ; preds = %34, %106
  %107 = phi i64 [ %118, %106 ], [ 0, %34 ]
  %108 = getelementptr inbounds nuw i32, ptr %2, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !5
  %110 = shl nsw i32 %109, 2
  %111 = or disjoint i32 %110, 1
  %112 = getelementptr inbounds nuw i32, ptr %3, i64 %107
  %113 = load i32, ptr %112, align 4, !tbaa !5
  %114 = shl nsw i32 %113, 2
  %115 = or disjoint i32 %114, 1
  tail call void @simPutPixel(i32 noundef %111, i32 noundef %115, i32 noundef -1) #5
  %116 = or disjoint i32 %110, 2
  tail call void @simPutPixel(i32 noundef %116, i32 noundef %115, i32 noundef -1) #5
  %117 = or disjoint i32 %114, 2
  tail call void @simPutPixel(i32 noundef %111, i32 noundef %117, i32 noundef -1) #5
  tail call void @simPutPixel(i32 noundef %116, i32 noundef %117, i32 noundef -1) #5
  %118 = add nuw nsw i64 %107, 1
  %119 = icmp eq i64 %118, 32
  br i1 %119, label %105, label %106, !llvm.loop !17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @simPutPixel(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @simFlush() local_unnamed_addr #3

attributes #0 = { noreturn nounwind optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 22.1.8"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
