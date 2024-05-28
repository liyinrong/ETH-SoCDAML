; ModuleID = '/tmp/main-bc1779.bc'
source_filename = "main.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-hero-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }

@.__omp_offloading_801_12a1c0f_main_l25.region_id = weak constant i8 0
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [28 x i8] c"Hello world from the host\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.__omp_offloading_801_12a1c0f_main_l33.region_id = weak constant i8 0
@.str.2 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12a1c0f_main_l25\00"
@.omp_offloading.entry.__omp_offloading_801_12a1c0f_main_l25 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_801_12a1c0f_main_l25.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.3 = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12a1c0f_main_l33\00"
@.omp_offloading.entry.__omp_offloading_801_12a1c0f_main_l33 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_801_12a1c0f_main_l33.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name.3, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }]

; Function Attrs: nounwind
define dso_local signext i32 @main(i32 noundef signext %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 @__tgt_target_mapper(%struct.ident_t* nonnull @1, i64 1, i8* nonnull @.__omp_offloading_801_12a1c0f_main_l25.region_id, i32 0, i8** null, i8** null, i64* null, i64* null, i8** null, i8** null)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %omp_offload.cont, label %omp_offload.failed

omp_offload.failed:                               ; preds = %entry
  tail call void asm sideeffect "nop", ""() #1, !srcloc !7
  br label %omp_offload.cont

omp_offload.cont:                                 ; preds = %omp_offload.failed, %entry
  %call = tail call signext i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  tail call void @hero_add_timestamp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i32 noundef signext 1) #1
  %1 = tail call i32 @__tgt_target_mapper(%struct.ident_t* nonnull @1, i64 1, i8* nonnull @.__omp_offloading_801_12a1c0f_main_l33.region_id, i32 0, i8** null, i8** null, i64* null, i64* null, i8** null, i8** null)
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %omp_offload.cont2, label %omp_offload.failed1

omp_offload.failed1:                              ; preds = %omp_offload.cont
  tail call void asm sideeffect "nop", ""() #1, !srcloc !8
  br label %omp_offload.cont2

omp_offload.cont2:                                ; preds = %omp_offload.failed1, %omp_offload.cont
  tail call void @hero_add_timestamp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i32 noundef signext 1) #1
  tail call void bitcast (void (...)* @hero_print_timestamp to void ()*)() #1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !9
  %call3 = tail call signext i32 @fflush(%struct._IO_FILE* noundef %2)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__tgt_target_mapper(%struct.ident_t*, i64, i8*, i32, i8**, i8**, i64*, i64*, i8**, i8**) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef signext i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local void @hero_add_timestamp(i8* noundef, i8* noundef, i32 noundef signext) local_unnamed_addr #3

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
declare void @__tgt_register_requires(i64) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #1 = { nounwind }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 2049, i32 19536911, !"main", i32 33, i32 1}
!1 = !{i32 0, i32 2049, i32 19536911, !"main", i32 25, i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 1, !"target-abi", !"lp64d"}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 1, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 15.0.0 (git@iis-git.ee.ethz.ch:iis-compilers/llvm-project.git dc4e635bebcc2811b0a07f4f044c766cab3b7ca5)"}
!7 = !{i64 532}
!8 = !{i64 847}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
