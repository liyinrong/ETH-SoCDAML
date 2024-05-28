; ModuleID = '/tmp/main-2c1a63.bc'
source_filename = "main.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-hero-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }
%struct.HeroDev = type { i8*, %struct.HeroSubDev*, %struct.HeroSubDev*, [32 x i8], %struct.HeroMboxes_t }
%struct.HeroSubDev = type { i32*, i64, i32, i8*, %struct.HeroSubDev* }
%struct.HeroMboxes_t = type { %struct.ring_buf*, %struct.HeroSubDev, %struct.ring_buf*, %struct.HeroSubDev, %struct.ring_buf*, %struct.HeroSubDev }
%struct.ring_buf = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"[host] too large for L2\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"[host] allocation error\0A\0D\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"[host] allocated %llx bytes at %llx\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"[host] too large for L3\0A\0D\00", align 1
@.__omp_offloading_801_12c075c_main_l30.region_id = weak constant i8 0
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.__omp_offloading_801_12c075c_main_l64.region_id = weak constant i8 0
@.offload_sizes = private unnamed_addr constant [5 x i64] [i64 8, i64 8, i64 8, i64 4, i64 4]
@.offload_maptypes = private unnamed_addr constant [5 x i64] [i64 33, i64 33, i64 33, i64 33, i64 33]
@.str.4 = private unnamed_addr constant [22 x i8] c"Error %i : %f != %f\0A\0D\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12c075c_main_l30\00"
@.omp_offloading.entry.__omp_offloading_801_12c075c_main_l30 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_801_12c075c_main_l30.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.5 = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12c075c_main_l64\00"
@.omp_offloading.entry.__omp_offloading_801_12c075c_main_l64 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_801_12c075c_main_l64.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name.5, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }]

; Function Attrs: nounwind
define dso_local i8* @dev_l2_alloc(i64 noundef %length, i64* noundef %ret_physical_address) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %length, 524287
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
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
  %call9 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
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
  %call = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
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
  %call9 = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
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
  %_C_phys.i = alloca i32, align 4
  %_D_phys.i = alloca i32, align 4
  %_E_phys.i = alloca i32, align 4
  %_width.i = alloca i32, align 4
  %_height.i = alloca i32, align 4
  %C_phys = alloca i64, align 8
  %D_phys = alloca i64, align 8
  %E_phys = alloca i64, align 8
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %.offload_baseptrs = alloca [5 x i8*], align 8
  %.offload_ptrs = alloca [5 x i8*], align 8
  %0 = tail call i32 @__tgt_target_mapper(%struct.ident_t* nonnull @1, i64 1, i8* nonnull @.__omp_offloading_801_12c075c_main_l30.region_id, i32 0, i8** null, i8** null, i64* null, i64* null, i8** null, i8** null)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %omp_offload.cont, label %omp_offload.failed

omp_offload.failed:                               ; preds = %entry
  tail call void asm sideeffect "nop", ""() #4, !srcloc !11
  br label %omp_offload.cont

omp_offload.cont:                                 ; preds = %omp_offload.failed, %entry
  %1 = bitcast i64* %C_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %2 = bitcast i64* %D_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  %3 = bitcast i64* %E_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %4 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 8, i32* %height, align 4, !tbaa !12
  %5 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  store i32 8, i32* %width, align 4, !tbaa !12
  %call1.i = call i64 @hero_dev_l2_malloc(%struct.HeroDev* noundef null, i32 noundef signext 256, i64* noundef nonnull %C_phys) #4
  %6 = load i64, i64* %C_phys, align 8, !tbaa !7
  %conv2.i55 = trunc i64 %6 to i32
  %7 = add i32 %conv2.i55, -1895825409
  %8 = icmp ult i32 %7, 16777214
  br i1 %8, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %omp_offload.cont
  %call9.i = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %if.end.i

if.end10.i:                                       ; preds = %omp_offload.cont
  %9 = inttoptr i64 %call1.i to i8*
  %call11.i = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef 256, i64 noundef %6) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end10.i, %if.then8.i
  %retval.0.i = phi i8* [ %9, %if.end10.i ], [ null, %if.then8.i ]
  %10 = bitcast i8* %retval.0.i to i32*
  %call1.i57 = call i64 @hero_dev_l2_malloc(%struct.HeroDev* noundef null, i32 noundef signext 32, i64* noundef nonnull %D_phys) #4
  %11 = load i64, i64* %D_phys, align 8, !tbaa !7
  %conv2.i58 = trunc i64 %11 to i32
  %12 = add i32 %conv2.i58, -1895825409
  %13 = icmp ult i32 %12, 16777214
  br i1 %13, label %if.end10.i62, label %if.then8.i60

if.then8.i60:                                     ; preds = %if.end.i
  %call9.i59 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %if.end.i71

if.end10.i62:                                     ; preds = %if.end.i
  %call11.i61 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef 32, i64 noundef %11) #4
  %phi.cast = inttoptr i64 %call1.i57 to i32*
  br label %if.end.i71

if.end.i71:                                       ; preds = %if.end10.i62, %if.then8.i60
  %retval.0.i63 = phi i32* [ %phi.cast, %if.end10.i62 ], [ null, %if.then8.i60 ]
  %retval.0.i63107 = bitcast i32* %retval.0.i63 to i8*
  %call1.i69 = call i64 @hero_dev_l2_malloc(%struct.HeroDev* noundef null, i32 noundef signext 32, i64* noundef nonnull %E_phys) #4
  %14 = load i64, i64* %E_phys, align 8, !tbaa !7
  %conv2.i70 = trunc i64 %14 to i32
  %15 = add i32 %conv2.i70, -1895825409
  %16 = icmp ult i32 %15, 16777214
  br i1 %16, label %if.end10.i75, label %if.then8.i73

if.then8.i73:                                     ; preds = %if.end.i71
  %call9.i72 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %for.cond19.preheader.preheader

if.end10.i75:                                     ; preds = %if.end.i71
  %call11.i74 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef 32, i64 noundef %14) #4
  %phi.cast83 = inttoptr i64 %call1.i69 to i32*
  br label %for.cond19.preheader.preheader

for.cond19.preheader.preheader:                   ; preds = %if.end10.i75, %if.then8.i73
  %retval.0.i76 = phi i32* [ %phi.cast83, %if.end10.i75 ], [ null, %if.then8.i73 ]
  %call11 = call noalias dereferenceable_or_null(256) i8* @malloc(i64 noundef 256) #7
  %17 = bitcast i8* %call11 to i32*
  %call14 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #7
  %18 = bitcast i8* %call14 to i32*
  %call17 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #7
  %19 = bitcast i8* %call17 to i32*
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.preheader, %for.cond.cleanup22
  %20 = phi i32 [ %22, %for.cond.cleanup22 ], [ 8, %for.cond19.preheader.preheader ]
  %21 = phi i32 [ %23, %for.cond.cleanup22 ], [ 8, %for.cond19.preheader.preheader ]
  %i.087 = phi i32 [ %inc27, %for.cond.cleanup22 ], [ 0, %for.cond19.preheader.preheader ]
  %cmp2084 = icmp sgt i32 %21, 0
  br i1 %cmp2084, label %for.body23, label %for.cond.cleanup22

for.cond30.preheader:                             ; preds = %for.cond.cleanup22
  %cmp3189 = icmp sgt i32 %23, 0
  br i1 %cmp3189, label %for.body34, label %for.cond42.preheader

for.cond.cleanup22.loopexit:                      ; preds = %for.body23
  %.pre = load i32, i32* %height, align 4, !tbaa !12
  br label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond.cleanup22.loopexit, %for.cond19.preheader
  %22 = phi i32 [ %.pre, %for.cond.cleanup22.loopexit ], [ %20, %for.cond19.preheader ]
  %23 = phi i32 [ %25, %for.cond.cleanup22.loopexit ], [ %21, %for.cond19.preheader ]
  %inc27 = add nuw nsw i32 %i.087, 1
  %cmp = icmp slt i32 %inc27, %22
  br i1 %cmp, label %for.cond19.preheader, label %for.cond30.preheader, !llvm.loop !14

for.body23:                                       ; preds = %for.cond19.preheader, %for.body23
  %24 = phi i32 [ %25, %for.body23 ], [ %21, %for.cond19.preheader ]
  %j.085 = phi i32 [ %inc, %for.body23 ], [ 0, %for.cond19.preheader ]
  %add = add nuw nsw i32 %j.085, %i.087
  %rem = and i32 %add, 3
  %mul24 = mul nsw i32 %24, %i.087
  %add25 = add nsw i32 %mul24, %j.085
  %idxprom = sext i32 %add25 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4, !tbaa !12
  %inc = add nuw nsw i32 %j.085, 1
  %25 = load i32, i32* %width, align 4, !tbaa !12
  %cmp20 = icmp slt i32 %inc, %25
  br i1 %cmp20, label %for.body23, label %for.cond.cleanup22.loopexit, !llvm.loop !16

for.cond42.preheader.loopexit:                    ; preds = %for.body34
  %.pre125 = load i32, i32* %height, align 4, !tbaa !12
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.cond42.preheader.loopexit, %for.cond30.preheader
  %26 = phi i32 [ %22, %for.cond30.preheader ], [ %.pre125, %for.cond42.preheader.loopexit ]
  %.lcssa = phi i32 [ %23, %for.cond30.preheader ], [ %30, %for.cond42.preheader.loopexit ]
  %mul43 = mul i32 %26, %.lcssa
  %cmp4491 = icmp sgt i32 %mul43, 0
  br i1 %cmp4491, label %for.body47.preheader, label %for.cond56.preheader

for.body47.preheader:                             ; preds = %for.cond42.preheader
  %27 = zext i32 %mul43 to i64
  %28 = shl nuw nsw i64 %27, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call11, i8* align 4 %retval.0.i, i64 %28, i1 false), !tbaa !12
  br label %for.cond56.preheader

for.body34:                                       ; preds = %for.cond30.preheader, %for.body34
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body34 ], [ 0, %for.cond30.preheader ]
  %29 = trunc i64 %indvars.iv to i32
  %rem35 = and i32 %29, 3
  %arrayidx37 = getelementptr inbounds i32, i32* %retval.0.i63, i64 %indvars.iv
  store i32 %rem35, i32* %arrayidx37, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %30 = load i32, i32* %width, align 4, !tbaa !12
  %31 = sext i32 %30 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next, %31
  br i1 %cmp31, label %for.body34, label %for.cond42.preheader.loopexit, !llvm.loop !17

for.cond56.preheader:                             ; preds = %for.body47.preheader, %for.cond42.preheader
  %cmp5793 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp5793, label %for.body60.preheader, label %for.cond.cleanup59

for.body60.preheader:                             ; preds = %for.cond56.preheader
  %32 = zext i32 %.lcssa to i64
  %33 = shl nuw nsw i64 %32, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call14, i8* align 4 %retval.0.i63107, i64 %33, i1 false), !tbaa !12
  br label %for.cond.cleanup59

for.cond.cleanup59:                               ; preds = %for.body60.preheader, %for.cond56.preheader
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_baseptrs, i64 0, i64 0
  %35 = bitcast [5 x i8*]* %.offload_baseptrs to i64**
  store i64* %C_phys, i64** %35, align 8
  %36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_ptrs, i64 0, i64 0
  %37 = bitcast [5 x i8*]* %.offload_ptrs to i64**
  store i64* %C_phys, i64** %37, align 8
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_baseptrs, i64 0, i64 1
  %39 = bitcast i8** %38 to i64**
  store i64* %D_phys, i64** %39, align 8
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_ptrs, i64 0, i64 1
  %41 = bitcast i8** %40 to i64**
  store i64* %D_phys, i64** %41, align 8
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_baseptrs, i64 0, i64 2
  %43 = bitcast i8** %42 to i64**
  store i64* %E_phys, i64** %43, align 8
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_ptrs, i64 0, i64 2
  %45 = bitcast i8** %44 to i64**
  store i64* %E_phys, i64** %45, align 8
  %46 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_baseptrs, i64 0, i64 3
  %47 = bitcast i8** %46 to i32**
  store i32* %width, i32** %47, align 8
  %48 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_ptrs, i64 0, i64 3
  %49 = bitcast i8** %48 to i32**
  store i32* %width, i32** %49, align 8
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_baseptrs, i64 0, i64 4
  %51 = bitcast i8** %50 to i32**
  store i32* %height, i32** %51, align 8
  %52 = getelementptr inbounds [5 x i8*], [5 x i8*]* %.offload_ptrs, i64 0, i64 4
  %53 = bitcast i8** %52 to i32**
  store i32* %height, i32** %53, align 8
  %54 = call i32 @__tgt_target_mapper(%struct.ident_t* nonnull @1, i64 1, i8* nonnull @.__omp_offloading_801_12c075c_main_l64.region_id, i32 5, i8** nonnull %34, i8** nonnull %36, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @.offload_sizes, i64 0, i64 0), i64* getelementptr inbounds ([5 x i64], [5 x i64]* @.offload_maptypes, i64 0, i64 0), i8** null, i8** null)
  %.not54 = icmp eq i32 %54, 0
  br i1 %.not54, label %omp_offload.cont69, label %omp_offload.failed68

omp_offload.failed68:                             ; preds = %for.cond.cleanup59
  %_C_phys.i.0._C_phys.i.0._C_phys.0._C_phys.0._C_phys.0..sroa_cast = bitcast i32* %_C_phys.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_C_phys.i.0._C_phys.i.0._C_phys.0._C_phys.0._C_phys.0..sroa_cast)
  %55 = load i64, i64* %C_phys, align 8, !tbaa !7
  %conv.i = trunc i64 %55 to i32
  store volatile i32 %conv.i, i32* %_C_phys.i, align 4, !tbaa !12
  %_D_phys.i.0._D_phys.i.0._D_phys.0._D_phys.0._D_phys.0..sroa_cast = bitcast i32* %_D_phys.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_D_phys.i.0._D_phys.i.0._D_phys.0._D_phys.0._D_phys.0..sroa_cast)
  %56 = load i64, i64* %D_phys, align 8, !tbaa !7
  %conv1.i = trunc i64 %56 to i32
  store volatile i32 %conv1.i, i32* %_D_phys.i, align 4, !tbaa !12
  %_E_phys.i.0._E_phys.i.0._E_phys.0._E_phys.0._E_phys.0..sroa_cast = bitcast i32* %_E_phys.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_E_phys.i.0._E_phys.i.0._E_phys.0._E_phys.0._E_phys.0..sroa_cast)
  %57 = load i64, i64* %E_phys, align 8, !tbaa !7
  %conv2.i = trunc i64 %57 to i32
  store volatile i32 %conv2.i, i32* %_E_phys.i, align 4, !tbaa !12
  %_width.i.0._width.i.0._width.0._width.0._width.0..sroa_cast = bitcast i32* %_width.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_width.i.0._width.i.0._width.0._width.0._width.0..sroa_cast)
  %58 = load i32, i32* %width, align 4, !tbaa !12
  store volatile i32 %58, i32* %_width.i, align 4, !tbaa !12
  %_height.i.0._height.i.0._height.0._height.0._height.0..sroa_cast = bitcast i32* %_height.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_height.i.0._height.i.0._height.0._height.0._height.0..sroa_cast)
  %59 = load i32, i32* %height, align 4, !tbaa !12
  store volatile i32 %59, i32* %_height.i, align 4, !tbaa !12
  call void asm sideeffect "nop", ""() #4, !srcloc !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_height.i.0._height.i.0._height.0._height.0._height.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_width.i.0._width.i.0._width.0._width.0._width.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_E_phys.i.0._E_phys.i.0._E_phys.0._E_phys.0._E_phys.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_D_phys.i.0._D_phys.i.0._D_phys.0._D_phys.0._D_phys.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_C_phys.i.0._C_phys.i.0._C_phys.0._C_phys.0._C_phys.0..sroa_cast)
  br label %omp_offload.cont69

omp_offload.cont69:                               ; preds = %omp_offload.failed68, %for.cond.cleanup59
  call void asm sideeffect "fence", ""() #4, !srcloc !19
  %60 = load i32, i32* %height, align 4, !tbaa !12
  %cmp7299 = icmp sgt i32 %60, 0
  br i1 %cmp7299, label %for.cond77.preheader.lr.ph, label %for.cond.cleanup102

for.cond77.preheader.lr.ph:                       ; preds = %omp_offload.cont69
  %61 = load i32, i32* %width, align 4, !tbaa !12
  %cmp7895 = icmp sgt i32 %61, 0
  %62 = sext i32 %61 to i64
  %wide.trip.count116 = zext i32 %60 to i64
  %wide.trip.count = zext i32 %61 to i64
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.cond77.preheader.lr.ph, %for.cond.cleanup80
  %indvars.iv113 = phi i64 [ 0, %for.cond77.preheader.lr.ph ], [ %indvars.iv.next114, %for.cond.cleanup80 ]
  br i1 %cmp7895, label %for.body81.lr.ph, label %for.cond.cleanup80

for.body81.lr.ph:                                 ; preds = %for.cond77.preheader
  %63 = mul nsw i64 %indvars.iv113, %62
  br label %for.body81

for.cond99.preheader:                             ; preds = %for.cond.cleanup80
  br i1 %cmp7299, label %for.body103, label %for.cond.cleanup102

for.cond.cleanup80:                               ; preds = %for.body81, %for.cond77.preheader
  %val.0.lcssa = phi i32 [ 0, %for.cond77.preheader ], [ %add89, %for.body81 ]
  %arrayidx94 = getelementptr inbounds i32, i32* %19, i64 %indvars.iv113
  store i32 %val.0.lcssa, i32* %arrayidx94, align 4, !tbaa !12
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %for.cond99.preheader, label %for.cond77.preheader, !llvm.loop !20

for.body81:                                       ; preds = %for.body81.lr.ph, %for.body81
  %indvars.iv110 = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next111, %for.body81 ]
  %val.096 = phi i32 [ 0, %for.body81.lr.ph ], [ %add89, %for.body81 ]
  %64 = add nsw i64 %63, %indvars.iv110
  %arrayidx85 = getelementptr inbounds i32, i32* %17, i64 %64
  %65 = load i32, i32* %arrayidx85, align 4, !tbaa !12
  %arrayidx87 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv110
  %66 = load i32, i32* %arrayidx87, align 4, !tbaa !12
  %mul88 = mul i32 %66, %65
  %add89 = add i32 %mul88, %val.096
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup80, label %for.body81, !llvm.loop !21

for.cond.cleanup102:                              ; preds = %for.inc115, %omp_offload.cont69, %for.cond99.preheader
  call void bitcast (void (...)* @hero_print_timestamp to void ()*)() #4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !22
  %call118 = call signext i32 @fflush(%struct._IO_FILE* noundef %67)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  ret i32 0

for.body103:                                      ; preds = %for.cond99.preheader, %for.inc115
  %68 = phi i32 [ %72, %for.inc115 ], [ %60, %for.cond99.preheader ]
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc115 ], [ 0, %for.cond99.preheader ]
  %arrayidx105 = getelementptr inbounds i32, i32* %19, i64 %indvars.iv118
  %69 = load i32, i32* %arrayidx105, align 4, !tbaa !12
  %arrayidx107 = getelementptr inbounds i32, i32* %retval.0.i76, i64 %indvars.iv118
  %70 = load i32, i32* %arrayidx107, align 4, !tbaa !12
  %cmp108.not = icmp eq i32 %69, %70
  br i1 %cmp108.not, label %for.inc115, label %if.then

if.then:                                          ; preds = %for.body103
  %71 = trunc i64 %indvars.iv118 to i32
  %call114 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef signext %71, i32 noundef signext %69, i32 noundef signext %70)
  %.pre126 = load i32, i32* %height, align 4, !tbaa !12
  br label %for.inc115

for.inc115:                                       ; preds = %for.body103, %if.then
  %72 = phi i32 [ %68, %for.body103 ], [ %.pre126, %if.then ]
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %73 = sext i32 %72 to i64
  %cmp100 = icmp slt i64 %indvars.iv.next119, %73
  br i1 %cmp100, label %for.body103, label %for.cond.cleanup102, !llvm.loop !24
}

; Function Attrs: nounwind
declare i32 @__tgt_target_mapper(%struct.ident_t*, i64, i8*, i32, i8**, i8**, i64*, i64*, i8**, i8**) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #5

declare dso_local void @hero_print_timestamp(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal void @.omp_offloading.requires_reg() #0 section ".text.startup" {
entry:
  tail call void @__tgt_register_requires(i64 1)
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_register_requires(i64) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind allocsize(0) }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 2049, i32 19662684, !"main", i32 64, i32 1}
!1 = !{i32 0, i32 2049, i32 19662684, !"main", i32 30, i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 1, !"target-abi", !"lp64d"}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 1, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 15.0.0 (git@iis-git.ee.ethz.ch:iis-compilers/llvm-project.git dc4e635bebcc2811b0a07f4f044c766cab3b7ca5)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i64 643}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{i64 2149}
!19 = !{i64 2214}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !9, i64 0}
!24 = distinct !{!24, !15}
