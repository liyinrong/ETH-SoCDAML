; ModuleID = '/tmp/main-7ed6d2.bc'
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
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.__omp_offloading_801_12a0f73_main_l87.region_id = weak constant i8 0
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str.8 = private unnamed_addr constant [64 x i8] c"\0A\0A/////////////////////////////////////////////////////////////\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.__omp_offloading_801_12a0f73_main_l109.region_id = weak constant i8 0
@.offload_sizes = private unnamed_addr constant [4 x i64] [i64 8, i64 8, i64 4, i64 4]
@.offload_maptypes = private unnamed_addr constant [4 x i64] [i64 33, i64 33, i64 33, i64 33]
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12a0f73_main_l87\00"
@.omp_offloading.entry.__omp_offloading_801_12a0f73_main_l87 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_801_12a0f73_main_l87.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.12 = internal unnamed_addr constant [39 x i8] c"__omp_offloading_801_12a0f73_main_l109\00"
@.omp_offloading.entry.__omp_offloading_801_12a0f73_main_l109 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_801_12a0f73_main_l109.region_id, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.omp_offloading.entry_name.12, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }]
@str.1 = private unnamed_addr constant [22 x i8] c"\0ALaunching the filter\00", align 1
@str.2 = private unnamed_addr constant [15 x i8] c"Filter is done\00", align 1
@str.3 = private unnamed_addr constant [63 x i8] c"/////////////////////////////////////////////////////////////\0A\00", align 1
@str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.5 = private unnamed_addr constant [23 x i8] c"sobel file_in file_out\00", align 1

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
  %call1 = tail call i64 @hero_dev_l2_malloc(%struct.HeroDev* noundef null, i32 noundef signext %conv, i64* noundef %ret_physical_address) #5
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
  %call1 = tail call i64 @hero_dev_l3_malloc(%struct.HeroDev* noundef null, i32 noundef signext %conv, i64* noundef %ret_physical_address) #5
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

; Function Attrs: nofree nounwind
define dso_local void @readFile(i8* nocapture noundef readonly %file_name, i8* nocapture noundef writeonly %buffer, i32 noundef signext %buffer_size) local_unnamed_addr #4 {
entry:
  %call = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %file_name, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %cmp6 = icmp sgt i32 %buffer_size, 0
  br i1 %cmp6, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %buffer_size to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %call2 = tail call signext i32 @fclose(%struct._IO_FILE* noundef %call)
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %call1 = tail call signext i32 @fgetc(%struct._IO_FILE* noundef %call)
  %conv = trunc i32 %call1 to i8
  %arrayidx = getelementptr inbounds i8, i8* %buffer, i64 %indvars.iv
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !12
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fgetc(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
define dso_local void @writeFile(i8* nocapture noundef readonly %file_name, i8* nocapture noundef readonly %buffer, i32 noundef signext %buffer_size) local_unnamed_addr #4 {
entry:
  %call = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %file_name, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %cmp6 = icmp sgt i32 %buffer_size, 0
  br i1 %cmp6, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %buffer_size to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %call2 = tail call signext i32 @fclose(%struct._IO_FILE* noundef %call)
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %buffer, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = zext i8 %0 to i32
  %call1 = tail call signext i32 @fputc(i32 noundef signext %conv, %struct._IO_FILE* noundef %call)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !14
}

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fputc(i32 noundef signext, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext i32 @main(i32 noundef signext %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %_in_buffer_l3_phys.i = alloca i32, align 4
  %_out_buffer_l3_phys.i = alloca i32, align 4
  %_width.i = alloca i32, align 4
  %_height.i = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %in_buffer_l3_phys = alloca i64, align 8
  %out_buffer_l3_phys = alloca i64, align 8
  %.offload_baseptrs = alloca [4 x i8*], align 8
  %.offload_ptrs = alloca [4 x i8*], align 8
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 128, i32* %width, align 4, !tbaa !15
  %1 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  store i32 128, i32* %height, align 4, !tbaa !15
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts11 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.5, i64 0, i64 0))
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !17
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 2
  %3 = load i8*, i8** %arrayidx1, align 8, !tbaa !17
  %4 = tail call i32 @__tgt_target_mapper(%struct.ident_t* nonnull @1, i64 1, i8* nonnull @.__omp_offloading_801_12a0f73_main_l87.region_id, i32 0, i8** null, i8** null, i64* null, i64* null, i8** null, i8** null)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %if.end.i, label %omp_offload.failed

omp_offload.failed:                               ; preds = %if.end
  tail call void asm sideeffect "nop", ""() #5, !srcloc !19
  br label %if.end.i

if.end.i:                                         ; preds = %if.end, %omp_offload.failed
  %5 = bitcast i64* %in_buffer_l3_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %6 = bitcast i64* %out_buffer_l3_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  %call1.i = call i64 @hero_dev_l3_malloc(%struct.HeroDev* noundef null, i32 noundef signext 49152, i64* noundef nonnull %in_buffer_l3_phys) #5
  %7 = load i64, i64* %in_buffer_l3_phys, align 8, !tbaa !7
  %conv2.i = trunc i64 %7 to i32
  %8 = add i32 %conv2.i, 1
  %9 = icmp ult i32 %8, -1073741822
  br i1 %9, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  %call9.i = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %if.end.i17

if.end10.i:                                       ; preds = %if.end.i
  %10 = inttoptr i64 %call1.i to i8*
  %call11.i = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef 49152, i64 noundef %7) #5
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.end10.i, %if.then8.i
  %retval.0.i = phi i8* [ %10, %if.end10.i ], [ null, %if.then8.i ]
  %call1.i15 = call i64 @hero_dev_l3_malloc(%struct.HeroDev* noundef null, i32 noundef signext 16384, i64* noundef nonnull %out_buffer_l3_phys) #5
  %11 = load i64, i64* %out_buffer_l3_phys, align 8, !tbaa !7
  %conv2.i16 = trunc i64 %11 to i32
  %12 = add i32 %conv2.i16, 1
  %13 = icmp ult i32 %12, -1073741822
  br i1 %13, label %if.then8.i19, label %if.end10.i21

if.then8.i19:                                     ; preds = %if.end.i17
  %call9.i18 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %for.body.preheader.i

if.end10.i21:                                     ; preds = %if.end.i17
  %14 = inttoptr i64 %call1.i15 to i8*
  %call11.i20 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef 16384, i64 noundef %11) #5
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end10.i21, %if.then8.i19
  %retval.0.i22 = phi i8* [ %14, %if.end10.i21 ], [ null, %if.then8.i19 ]
  %call.i24 = call noalias %struct._IO_FILE* @fopen(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %call1.i25 = call signext i32 @fgetc(%struct._IO_FILE* noundef %call.i24) #5
  %conv.i26 = trunc i32 %call1.i25 to i8
  %arrayidx.i = getelementptr inbounds i8, i8* %retval.0.i, i64 %indvars.iv.i
  store i8 %conv.i26, i8* %arrayidx.i, align 1, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 49152
  br i1 %exitcond.not.i, label %readFile.exit, label %for.body.i, !llvm.loop !12

readFile.exit:                                    ; preds = %for.body.i
  %call2.i = call signext i32 @fclose(%struct._IO_FILE* noundef %call.i24) #5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.4, i64 0, i64 0))
  %call15 = call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.1, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !17
  %call17 = call signext i32 @fflush(%struct._IO_FILE* noundef %15)
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.offload_baseptrs, i64 0, i64 0
  %17 = bitcast [4 x i8*]* %.offload_baseptrs to i64**
  store i64* %in_buffer_l3_phys, i64** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.offload_ptrs, i64 0, i64 0
  %19 = bitcast [4 x i8*]* %.offload_ptrs to i64**
  store i64* %in_buffer_l3_phys, i64** %19, align 8
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.offload_baseptrs, i64 0, i64 1
  %21 = bitcast i8** %20 to i64**
  store i64* %out_buffer_l3_phys, i64** %21, align 8
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.offload_ptrs, i64 0, i64 1
  %23 = bitcast i8** %22 to i64**
  store i64* %out_buffer_l3_phys, i64** %23, align 8
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.offload_baseptrs, i64 0, i64 2
  %25 = bitcast i8** %24 to i32**
  store i32* %width, i32** %25, align 8
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.offload_ptrs, i64 0, i64 2
  %27 = bitcast i8** %26 to i32**
  store i32* %width, i32** %27, align 8
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.offload_baseptrs, i64 0, i64 3
  %29 = bitcast i8** %28 to i32**
  store i32* %height, i32** %29, align 8
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.offload_ptrs, i64 0, i64 3
  %31 = bitcast i8** %30 to i32**
  store i32* %height, i32** %31, align 8
  %32 = call i32 @__tgt_target_mapper(%struct.ident_t* nonnull @1, i64 1, i8* nonnull @.__omp_offloading_801_12a0f73_main_l109.region_id, i32 4, i8** nonnull %16, i8** nonnull %18, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @.offload_sizes, i64 0, i64 0), i64* getelementptr inbounds ([4 x i64], [4 x i64]* @.offload_maptypes, i64 0, i64 0), i8** null, i8** null)
  %.not7 = icmp eq i32 %32, 0
  br i1 %.not7, label %omp_offload.cont19, label %omp_offload.failed18

omp_offload.failed18:                             ; preds = %readFile.exit
  %_in_buffer_l3_phys.i.0._in_buffer_l3_phys.i.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0..sroa_cast = bitcast i32* %_in_buffer_l3_phys.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_in_buffer_l3_phys.i.0._in_buffer_l3_phys.i.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0..sroa_cast)
  %33 = load i64, i64* %in_buffer_l3_phys, align 8, !tbaa !7
  %conv.i = trunc i64 %33 to i32
  store volatile i32 %conv.i, i32* %_in_buffer_l3_phys.i, align 4, !tbaa !15
  %_out_buffer_l3_phys.i.0._out_buffer_l3_phys.i.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0..sroa_cast = bitcast i32* %_out_buffer_l3_phys.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_out_buffer_l3_phys.i.0._out_buffer_l3_phys.i.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0..sroa_cast)
  %34 = load i64, i64* %out_buffer_l3_phys, align 8, !tbaa !7
  %conv1.i = trunc i64 %34 to i32
  store volatile i32 %conv1.i, i32* %_out_buffer_l3_phys.i, align 4, !tbaa !15
  %_width.i.0._width.i.0._width.0._width.0._width.0..sroa_cast = bitcast i32* %_width.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_width.i.0._width.i.0._width.0._width.0._width.0..sroa_cast)
  %35 = load i32, i32* %width, align 4, !tbaa !15
  store volatile i32 %35, i32* %_width.i, align 4, !tbaa !15
  %_height.i.0._height.i.0._height.0._height.0._height.0..sroa_cast = bitcast i32* %_height.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_height.i.0._height.i.0._height.0._height.0._height.0..sroa_cast)
  %36 = load i32, i32* %height, align 4, !tbaa !15
  store volatile i32 %36, i32* %_height.i, align 4, !tbaa !15
  call void asm sideeffect "nop", ""() #5, !srcloc !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_height.i.0._height.i.0._height.0._height.0._height.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_width.i.0._width.i.0._width.0._width.0._width.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_out_buffer_l3_phys.i.0._out_buffer_l3_phys.i.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_in_buffer_l3_phys.i.0._in_buffer_l3_phys.i.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0..sroa_cast)
  br label %omp_offload.cont19

omp_offload.cont19:                               ; preds = %omp_offload.failed18, %readFile.exit
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str.2, i64 0, i64 0))
  %puts9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @str.3, i64 0, i64 0))
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.4, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !17
  %call23 = call signext i32 @fflush(%struct._IO_FILE* noundef %37)
  %38 = load i32, i32* %width, align 4, !tbaa !15
  %39 = load i32, i32* %height, align 4, !tbaa !15
  %mul24 = mul nsw i32 %39, %38
  %call.i27 = call noalias %struct._IO_FILE* @fopen(i8* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  %cmp6.i28 = icmp sgt i32 %mul24, 0
  br i1 %cmp6.i28, label %for.body.preheader.i30, label %writeFile.exit

for.body.preheader.i30:                           ; preds = %omp_offload.cont19
  %wide.trip.count.i29 = zext i32 %mul24 to i64
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.body.i38, %for.body.preheader.i30
  %indvars.iv.i32 = phi i64 [ 0, %for.body.preheader.i30 ], [ %indvars.iv.next.i36, %for.body.i38 ]
  %arrayidx.i33 = getelementptr inbounds i8, i8* %retval.0.i22, i64 %indvars.iv.i32
  %40 = load i8, i8* %arrayidx.i33, align 1, !tbaa !11
  %conv.i34 = zext i8 %40 to i32
  %call1.i35 = call signext i32 @fputc(i32 noundef signext %conv.i34, %struct._IO_FILE* noundef %call.i27) #5
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %wide.trip.count.i29
  br i1 %exitcond.not.i37, label %writeFile.exit, label %for.body.i38, !llvm.loop !14

writeFile.exit:                                   ; preds = %for.body.i38, %omp_offload.cont19
  %call2.i31 = call signext i32 @fclose(%struct._IO_FILE* noundef %call.i27) #5
  call void bitcast (void (...)* @hero_print_timestamp to void ()*)() #5
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !17
  %call28 = call signext i32 @fflush(%struct._IO_FILE* noundef %41)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  br label %cleanup

cleanup:                                          ; preds = %writeFile.exit, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %writeFile.exit ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @__tgt_target_mapper(%struct.ident_t*, i64, i8*, i32, i8**, i8**, i64*, i64*, i8**, i8**) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

declare dso_local void @hero_print_timestamp(...) local_unnamed_addr #3

; Function Attrs: nounwind
define internal void @.omp_offloading.requires_reg() #0 section ".text.startup" {
entry:
  tail call void @__tgt_register_requires(i64 1)
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_register_requires(i64) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 2049, i32 19533683, !"main", i32 109, i32 1}
!1 = !{i32 0, i32 2049, i32 19533683, !"main", i32 87, i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 1, !"target-abi", !"lp64d"}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 1, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 15.0.0 (git@iis-git.ee.ethz.ch:iis-compilers/llvm-project.git dc4e635bebcc2811b0a07f4f044c766cab3b7ca5)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !9, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{i64 1797}
!20 = !{i64 2981}
