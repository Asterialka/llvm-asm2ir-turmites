; ModuleID = 'app.c'
source_filename = "app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.app.turn = private unnamed_addr constant [6 x i32] [i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 -1], align 16
@__const.app.palette = private unnamed_addr constant [6 x i32] [i32 -16777216, i32 -14074749, i32 -13005898, i32 -8858434, i32 -800131, i32 -1085051], align 16

; Function Attrs: noreturn nounwind sspstrong uwtable
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
  store <4 x i32> <i32 37, i32 138, i32 239, i32 340>, ptr %2, align 16, !tbaa !5
  store <4 x i32> <i32 19, i32 92, i32 165, i32 46>, ptr %3, align 16, !tbaa !5
  store <4 x i32> <i32 0, i32 3, i32 2, i32 1>, ptr %4, align 16, !tbaa !5
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %5, align 16, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> <i32 57, i32 158, i32 259, i32 360>, ptr %6, align 16, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> <i32 119, i32 0, i32 73, i32 146>, ptr %7, align 16, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 0, i32 3, i32 2, i32 1>, ptr %8, align 16, !tbaa !5
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> <i32 4, i32 5, i32 0, i32 1>, ptr %9, align 16, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x i32> <i32 77, i32 178, i32 279, i32 380>, ptr %10, align 16, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x i32> <i32 27, i32 100, i32 173, i32 54>, ptr %11, align 16, !tbaa !5
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <4 x i32> <i32 0, i32 3, i32 2, i32 1>, ptr %12, align 16, !tbaa !5
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <4 x i32> <i32 2, i32 3, i32 4, i32 5>, ptr %13, align 16, !tbaa !5
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x i32> <i32 97, i32 198, i32 299, i32 16>, ptr %14, align 16, !tbaa !5
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x i32> <i32 127, i32 8, i32 81, i32 154>, ptr %15, align 16, !tbaa !5
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x i32> <i32 0, i32 3, i32 2, i32 1>, ptr %16, align 16, !tbaa !5
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %17, align 16, !tbaa !5
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x i32> <i32 117, i32 218, i32 319, i32 36>, ptr %18, align 16, !tbaa !5
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x i32> <i32 35, i32 108, i32 181, i32 62>, ptr %19, align 16, !tbaa !5
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <4 x i32> <i32 0, i32 3, i32 2, i32 1>, ptr %20, align 16, !tbaa !5
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store <4 x i32> <i32 4, i32 5, i32 0, i32 1>, ptr %21, align 16, !tbaa !5
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x i32> <i32 137, i32 238, i32 339, i32 56>, ptr %22, align 16, !tbaa !5
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x i32> <i32 135, i32 16, i32 89, i32 162>, ptr %23, align 16, !tbaa !5
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <4 x i32> <i32 0, i32 3, i32 2, i32 1>, ptr %24, align 16, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store <4 x i32> <i32 2, i32 3, i32 4, i32 5>, ptr %25, align 16, !tbaa !5
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <4 x i32> <i32 157, i32 258, i32 359, i32 76>, ptr %26, align 16, !tbaa !5
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <4 x i32> <i32 43, i32 116, i32 189, i32 70>, ptr %27, align 16, !tbaa !5
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store <4 x i32> <i32 0, i32 3, i32 2, i32 1>, ptr %28, align 16, !tbaa !5
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %29, align 16, !tbaa !5
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <4 x i32> <i32 177, i32 278, i32 379, i32 96>, ptr %30, align 16, !tbaa !5
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <4 x i32> <i32 143, i32 24, i32 97, i32 170>, ptr %31, align 16, !tbaa !5
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <4 x i32> <i32 0, i32 3, i32 2, i32 1>, ptr %32, align 16, !tbaa !5
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store <4 x i32> <i32 4, i32 5, i32 0, i32 1>, ptr %33, align 16, !tbaa !5
  br label %34

34:                                               ; preds = %39, %0
  %35 = phi i32 [ 0, %0 ], [ %40, %39 ]
  br label %41

36:                                               ; preds = %41
  %37 = add nuw nsw i32 %35, 1
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %102, label %39

39:                                               ; preds = %36, %101
  %40 = phi i32 [ %37, %36 ], [ 0, %101 ]
  br label %34, !llvm.loop !9

41:                                               ; preds = %34, %41
  %42 = phi i64 [ 0, %34 ], [ %99, %41 ]
  %43 = getelementptr inbounds nuw i32, ptr %2, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !5
  %45 = getelementptr inbounds nuw i32, ptr %3, i64 %42
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [384 x i32], ptr %1, i64 %47
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds i32, ptr %48, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, 1
  %53 = getelementptr inbounds nuw i32, ptr %5, i64 %42
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = add nsw i32 %54, %51
  %56 = icmp eq i32 %52, 6
  %57 = select i1 %56, i32 0, i32 %52
  %58 = icmp sgt i32 %55, 5
  %59 = add nsw i32 %55, -6
  %60 = select i1 %58, i32 %59, i32 %55
  %61 = getelementptr inbounds nuw i32, ptr %4, i64 %42
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds i32, ptr @__const.app.turn, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = add nsw i32 %65, %62
  %67 = and i32 %66, 3
  store i32 %67, ptr %61, align 4, !tbaa !5
  store i32 %57, ptr %50, align 4, !tbaa !5
  %68 = sext i32 %57 to i64
  %69 = getelementptr inbounds i32, ptr @__const.app.palette, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !5
  %71 = shl nsw i32 %44, 2
  %72 = shl nsw i32 %46, 2
  tail call void @simPutPixel(i32 noundef %71, i32 noundef %72, i32 noundef %70) #4
  %73 = or disjoint i32 %71, 1
  tail call void @simPutPixel(i32 noundef %73, i32 noundef %72, i32 noundef %70) #4
  %74 = or disjoint i32 %71, 2
  tail call void @simPutPixel(i32 noundef %74, i32 noundef %72, i32 noundef %70) #4
  %75 = or disjoint i32 %71, 3
  tail call void @simPutPixel(i32 noundef %75, i32 noundef %72, i32 noundef %70) #4
  %76 = or disjoint i32 %72, 1
  tail call void @simPutPixel(i32 noundef %71, i32 noundef %76, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %73, i32 noundef %76, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %74, i32 noundef %76, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %75, i32 noundef %76, i32 noundef %70) #4
  %77 = or disjoint i32 %72, 2
  tail call void @simPutPixel(i32 noundef %71, i32 noundef %77, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %73, i32 noundef %77, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %74, i32 noundef %77, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %75, i32 noundef %77, i32 noundef %70) #4
  %78 = or disjoint i32 %72, 3
  tail call void @simPutPixel(i32 noundef %71, i32 noundef %78, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %73, i32 noundef %78, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %74, i32 noundef %78, i32 noundef %70) #4
  tail call void @simPutPixel(i32 noundef %75, i32 noundef %78, i32 noundef %70) #4
  %79 = icmp eq i32 %67, 1
  %80 = zext i1 %79 to i32
  %81 = icmp eq i32 %67, 3
  %82 = sext i1 %81 to i32
  %83 = add i32 %44, %80
  %84 = add i32 %83, %82
  %85 = icmp eq i32 %67, 2
  %86 = zext i1 %85 to i32
  %87 = icmp eq i32 %67, 0
  %88 = sext i1 %87 to i32
  %89 = add i32 %46, %86
  %90 = add i32 %89, %88
  %91 = icmp slt i32 %84, 0
  %92 = select i1 %91, i32 383, i32 %84
  %93 = icmp eq i32 %92, 384
  %94 = select i1 %93, i32 0, i32 %92
  store i32 %94, ptr %43, align 4
  %95 = icmp slt i32 %90, 0
  %96 = select i1 %95, i32 191, i32 %90
  %97 = icmp eq i32 %96, 192
  %98 = select i1 %97, i32 0, i32 %96
  store i32 %98, ptr %45, align 4
  %99 = add nuw nsw i64 %42, 1
  %100 = icmp eq i64 %99, 32
  br i1 %100, label %36, label %41, !llvm.loop !11

101:                                              ; preds = %102
  tail call void @simFlush() #4
  br label %39

102:                                              ; preds = %36, %102
  %103 = phi i64 [ %114, %102 ], [ 0, %36 ]
  %104 = getelementptr inbounds nuw i32, ptr %2, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !5
  %106 = shl nsw i32 %105, 2
  %107 = or disjoint i32 %106, 1
  %108 = getelementptr inbounds nuw i32, ptr %3, i64 %103
  %109 = load i32, ptr %108, align 4, !tbaa !5
  %110 = shl nsw i32 %109, 2
  %111 = or disjoint i32 %110, 1
  tail call void @simPutPixel(i32 noundef %107, i32 noundef %111, i32 noundef -1) #4
  %112 = or disjoint i32 %106, 2
  tail call void @simPutPixel(i32 noundef %112, i32 noundef %111, i32 noundef -1) #4
  %113 = or disjoint i32 %110, 2
  tail call void @simPutPixel(i32 noundef %107, i32 noundef %113, i32 noundef -1) #4
  tail call void @simPutPixel(i32 noundef %112, i32 noundef %113, i32 noundef -1) #4
  %114 = add nuw nsw i64 %103, 1
  %115 = icmp eq i64 %114, 32
  br i1 %115, label %101, label %102, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @simPutPixel(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @simFlush() local_unnamed_addr #3

attributes #0 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
