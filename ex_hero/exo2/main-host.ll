; ModuleID = '/tmp/main-e65bab.bc'
source_filename = "main.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-hero-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }
%struct.HeroDev = type { i8*, %struct.HeroSubDev*, %struct.HeroSubDev*, [32 x i8], %struct.HeroMboxes_t }
%struct.HeroSubDev = type { i32*, i64, i32, i8*, %struct.HeroSubDev* }
%struct.HeroMboxes_t = type { %struct.ring_buf*, %struct.HeroSubDev, %struct.ring_buf*, %struct.HeroSubDev, %struct.ring_buf*, %struct.HeroSubDev }
%struct.ring_buf = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"[host] too large for L2\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"[host] allocation error\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"[host] allocated %llx bytes at %llx\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"[host] too large for L3\00", align 1
@.__omp_offloading_801_12a1c02_main_l60.region_id = weak constant i8 0
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.__omp_offloading_801_12a1c02_main_l74.region_id = weak constant i8 0
@.offload_sizes = private unnamed_addr constant [3 x i64] [i64 8, i64 8, i64 8]
@.offload_maptypes = private unnamed_addr constant [3 x i64] [i64 33, i64 33, i64 33]
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12a1c02_main_l60\00"
@.omp_offloading.entry.__omp_offloading_801_12a1c02_main_l60 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_801_12a1c02_main_l60.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.4 = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12a1c02_main_l74\00"
@.omp_offloading.entry.__omp_offloading_801_12a1c02_main_l74 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_801_12a1c02_main_l74.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name.4, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }]

; Function Attrs: nounwind
define dso_local i8* @dev_l2_alloc(i64 noundef %length, i64* noundef %ret_physical_address) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %length, 524287
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %length to i32
  %call1 = tail call i64 @hero_dev_l2_malloc(%struct.HeroDev* noundef null, i32 noundef signext %conv, i64* noundef %ret_physical_address) #4
  %0 = load i64, i64* %ret_physical_address, align 8, !tbaa !7
  %conv2 = trunc i64 %0 to i32
  %1 = add i32 %conv2, -1895825409
  %2 = icmp ult i32 %1, 16777214
  br i1 %2, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = inttoptr i64 %call1 to i8*
  %call11 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef %length, i64 noundef %0)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %3, %if.end10 ], [ null, %if.then8 ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local i64 @hero_dev_l2_malloc(%struct.HeroDev* noundef, i32 noundef signext, i64* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define dso_local i8* @dev_l3_alloc(i64 noundef %length, i64* noundef %ret_physical_address) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %length, 268435456
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %length to i32
  %call1 = tail call i64 @hero_dev_l3_malloc(%struct.HeroDev* noundef null, i32 noundef signext %conv, i64* noundef %ret_physical_address) #4
  %0 = load i64, i64* %ret_physical_address, align 8, !tbaa !7
  %conv2 = trunc i64 %0 to i32
  %1 = add i32 %conv2, 1
  %2 = icmp ult i32 %1, -1073741822
  br i1 %2, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = inttoptr i64 %call1 to i8*
  %call11 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef %length, i64 noundef %0)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %3, %if.end10 ], [ null, %if.then8 ]
  ret i8* %retval.0
}

declare dso_local i64 @hero_dev_l3_malloc(%struct.HeroDev* noundef, i32 noundef signext, i64* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local signext i32 @main(i32 noundef signext %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %_A_phys.i = alloca i32, align 4
  %_B_phys.i = alloca i32, align 4
  %_size.i = alloca i32, align 4
  %A_phys = alloca i64, align 8
  %B_phys = alloca i64, align 8
  %size = alloca i64, align 8
  %.offload_baseptrs = alloca [3 x i8*], align 8
  %.offload_ptrs = alloca [3 x i8*], align 8
  %0 = tail call i32 @__tgt_target_mapper(%struct.ident_t* nonnull @1, i64 1, i8* nonnull @.__omp_offloading_801_12a1c02_main_l60.region_id, i32 0, i8** null, i8** null, i64* null, i64* null, i8** null, i8** null)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %omp_offload.cont, label %omp_offload.failed

omp_offload.failed:                               ; preds = %entry
  tail call void asm sideeffect "nop", ""() #4, !srcloc !11
  br label %omp_offload.cont

omp_offload.cont:                                 ; preds = %omp_offload.failed, %entry
  %1 = bitcast i64* %A_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %2 = bitcast i64* %B_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  %3 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  store i64 4096, i64* %size, align 8, !tbaa !7
  %call1.i = call i64 @hero_dev_l2_malloc(%struct.HeroDev* noundef null, i32 noundef signext 4096, i64* noundef nonnull %A_phys) #4
  %4 = load i64, i64* %A_phys, align 8, !tbaa !7
  %conv2.i4 = trunc i64 %4 to i32
  %5 = add i32 %conv2.i4, -1895825409
  %6 = icmp ult i32 %5, 16777214
  br i1 %6, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %omp_offload.cont
  %call9.i = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %if.end.i

if.end10.i:                                       ; preds = %omp_offload.cont
  %call11.i = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4096, i64 noundef %4) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end10.i, %if.then8.i
  %call1.i6 = call i64 @hero_dev_l2_malloc(%struct.HeroDev* noundef null, i32 noundef signext 4096, i64* noundef nonnull %B_phys) #4
  %7 = load i64, i64* %B_phys, align 8, !tbaa !7
  %conv2.i7 = trunc i64 %7 to i32
  %8 = add i32 %conv2.i7, -1895825409
  %9 = icmp ult i32 %8, 16777214
  br i1 %9, label %if.end10.i11, label %if.then8.i9

if.then8.i9:                                      ; preds = %if.end.i
  %call9.i8 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %dev_l2_alloc.exit13

if.end10.i11:                                     ; preds = %if.end.i
  %call11.i10 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4096, i64 noundef %7) #4
  br label %dev_l2_alloc.exit13

dev_l2_alloc.exit13:                              ; preds = %if.then8.i9, %if.end10.i11
  %10 = getelementptr inbounds [3 x i8*], [3 x i8*]* %.offload_baseptrs, i64 0, i64 0
  %11 = bitcast [3 x i8*]* %.offload_baseptrs to i64**
  store i64* %A_phys, i64** %11, align 8
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %.offload_ptrs, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %.offload_ptrs to i64**
  store i64* %A_phys, i64** %13, align 8
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %.offload_baseptrs, i64 0, i64 1
  %15 = bitcast i8** %14 to i64**
  store i64* %B_phys, i64** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %.offload_ptrs, i64 0, i64 1
  %17 = bitcast i8** %16 to i64**
  store i64* %B_phys, i64** %17, align 8
  %18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %.offload_baseptrs, i64 0, i64 2
  %19 = bitcast i8** %18 to i64**
  store i64* %size, i64** %19, align 8
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %.offload_ptrs, i64 0, i64 2
  %21 = bitcast i8** %20 to i64**
  store i64* %size, i64** %21, align 8
  %22 = call i32 @__tgt_target_mapper(%struct.ident_t* nonnull @1, i64 1, i8* nonnull @.__omp_offloading_801_12a1c02_main_l74.region_id, i32 3, i8** nonnull %10, i8** nonnull %12, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @.offload_sizes, i64 0, i64 0), i64* getelementptr inbounds ([3 x i64], [3 x i64]* @.offload_maptypes, i64 0, i64 0), i8** null, i8** null)
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %omp_offload.cont3, label %omp_offload.failed2

omp_offload.failed2:                              ; preds = %dev_l2_alloc.exit13
  %_A_phys.i.0._A_phys.i.0._A_phys.0._A_phys.0._A_phys.0..sroa_cast = bitcast i32* %_A_phys.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_A_phys.i.0._A_phys.i.0._A_phys.0._A_phys.0._A_phys.0..sroa_cast)
  %23 = load i64, i64* %A_phys, align 8, !tbaa !7
  %conv.i = trunc i64 %23 to i32
  store volatile i32 %conv.i, i32* %_A_phys.i, align 4, !tbaa !12
  %_B_phys.i.0._B_phys.i.0._B_phys.0._B_phys.0._B_phys.0..sroa_cast = bitcast i32* %_B_phys.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_B_phys.i.0._B_phys.i.0._B_phys.0._B_phys.0._B_phys.0..sroa_cast)
  %24 = load i64, i64* %B_phys, align 8, !tbaa !7
  %conv1.i = trunc i64 %24 to i32
  store volatile i32 %conv1.i, i32* %_B_phys.i, align 4, !tbaa !12
  %_size.i.0._size.i.0._size.0._size.0._size.0..sroa_cast = bitcast i32* %_size.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_size.i.0._size.i.0._size.0._size.0._size.0..sroa_cast)
  %25 = load i64, i64* %size, align 8, !tbaa !7
  %conv2.i = trunc i64 %25 to i32
  store volatile i32 %conv2.i, i32* %_size.i, align 4, !tbaa !12
  call void asm sideeffect "nop", ""() #4, !srcloc !14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_size.i.0._size.i.0._size.0._size.0._size.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_B_phys.i.0._B_phys.i.0._B_phys.0._B_phys.0._B_phys.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_A_phys.i.0._A_phys.i.0._A_phys.0._A_phys.0._A_phys.0..sroa_cast)
  br label %omp_offload.cont3

omp_offload.cont3:                                ; preds = %omp_offload.failed2, %dev_l2_alloc.exit13
  call void bitcast (void (...)* @hero_print_timestamp to void ()*)() #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__tgt_target_mapper(%struct.ident_t*, i64, i8*, i32, i8**, i8**, i64*, i64*, i8**, i8**) local_unnamed_addr #4

declare dso_local void @hero_print_timestamp(...) local_unnamed_addr #3

; Function Attrs: nounwind
define internal void @.omp_offloading.requires_reg() #0 section ".text.startup" {
entry:
  tail call void @__tgt_register_requires(i64 1)
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_register_requires(i64) local_unnamed_addr #4

attributes #0 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #4 = { nounwind }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 2049, i32 19536898, !"main", i32 60, i32 0}
!1 = !{i32 0, i32 2049, i32 19536898, !"main", i32 74, i32 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 1, !"target-abi", !"lp64d"}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 1, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 15.0.0 (git@iis-git.ee.ethz.ch:iis-compilers/llvm-project.git dc4e635bebcc2811b0a07f4f044c766cab3b7ca5)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i64 1813}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = !{i64 2453}
