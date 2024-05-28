
; __CLANG_OFFLOAD_BUNDLE____START__ host-riscv64-hero-linux-gnu
; ModuleID = 'main-host.ll'
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

; __CLANG_OFFLOAD_BUNDLE____END__ host-riscv64-hero-linux-gnu

; __CLANG_OFFLOAD_BUNDLE____START__ openmp-riscv32-hero-hero1-elf
; ModuleID = 'main-hero1.TMP.1.ll'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-p1:64:32-i64:64-n32-S128-P0-A0"
target triple = "riscv32-hero-hero1-elf"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Hello world from %u\0A\0D\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12a1c0f_main_l25\00"
@.omp_offloading.entry.__omp_offloading_801_12a1c0f_main_l25 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* bitcast (void (i64)* @__omp_offloading_801_12a1c0f_main_l25 to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i32 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.1 = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12a1c0f_main_l33\00"
@.omp_offloading.entry.__omp_offloading_801_12a1c0f_main_l33 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* bitcast (void (i64)* @__omp_offloading_801_12a1c0f_main_l33 to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name.1, i32 0, i32 0), i32 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.compiler.used = appending global [16 x i8*] [i8* bitcast (i16 (i64)* @hero_load_uint16 to i8*), i8* bitcast (i32 (i64, i16*)* @hero_load_uint16_noblock to i8*), i8* bitcast (i32 (i64)* @hero_load_uint32 to i8*), i8* bitcast (i32 (i64, i32*)* @hero_load_uint32_noblock to i8*), i8* bitcast (i64 (i64)* @hero_load_uint64 to i8*), i8* bitcast (i32 (i64, i64*)* @hero_load_uint64_noblock to i8*), i8* bitcast (i8 (i64)* @hero_load_uint8 to i8*), i8* bitcast (i32 (i64, i8*)* @hero_load_uint8_noblock to i8*), i8* bitcast (void (i64, i16)* @hero_store_uint16 to i8*), i8* bitcast (i32 (i64, i16)* @hero_store_uint16_noblock to i8*), i8* bitcast (void (i64, i32)* @hero_store_uint32 to i8*), i8* bitcast (i32 (i64, i32)* @hero_store_uint32_noblock to i8*), i8* bitcast (void (i64, i64)* @hero_store_uint64 to i8*), i8* bitcast (i32 (i64, i64)* @hero_store_uint64_noblock to i8*), i8* bitcast (void (i64, i8)* @hero_store_uint8 to i8*), i8* bitcast (i32 (i64, i8)* @hero_store_uint8_noblock to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak void @__wrapped_omp__omp_offloading_801_12a1c0f_main_l25() #0 {
entry:
  tail call void asm sideeffect "nop", ""() #6, !srcloc !8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind
define weak void @__wrapped_omp__omp_offloading_801_12a1c0f_main_l33() #1 {
entry:
  tail call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)) #5
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint32_noblock(i64 noundef %addr, i32* nocapture noundef writeonly %val) #2 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i8 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8 to i32*
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i32* %0, i32 undef) #6, !srcloc !9
  %asmresult = extractvalue { i32, i32 } %1, 0
  store i32 %asmresult, i32* %val, align 4, !tbaa !10
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint32(i64 noundef %addr) #2 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i8.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8.i to i32*
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i32* %0, i32 undef) #6, !srcloc !9
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  ret i32 %asmresult.i
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_store_uint32_noblock(i64 noundef %addr, i32 noundef %val) #2 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i6 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6 to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i32 %val, i32* %0, i32 undef) #6, !srcloc !14
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint32(i64 noundef %addr, i32 noundef %val) #2 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i32 %val, i32* %0, i32 undef) #6, !srcloc !14
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint16_noblock(i64 noundef %addr, i16* nocapture noundef writeonly %val) #2 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i8 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8 to i16*
  %1 = tail call { i16, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lhu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i16* %0, i32 undef) #6, !srcloc !15
  %asmresult = extractvalue { i16, i32 } %1, 0
  store i16 %asmresult, i16* %val, align 2, !tbaa !16
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal zeroext i16 @hero_load_uint16(i64 noundef %addr) #2 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i8.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8.i to i16*
  %1 = tail call { i16, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lhu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i16* %0, i32 undef) #6, !srcloc !15
  %asmresult.i = extractvalue { i16, i32 } %1, 0
  ret i16 %asmresult.i
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_store_uint16_noblock(i64 noundef %addr, i16 noundef zeroext %val) #2 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i6 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6 to i16*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sh $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i16 %val, i16* %0, i32 undef) #6, !srcloc !18
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint16(i64 noundef %addr, i16 noundef zeroext %val) #2 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i16*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sh $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i16 %val, i16* %0, i32 undef) #6, !srcloc !18
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint8_noblock(i64 noundef %addr, i8* nocapture noundef writeonly %val) #2 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i7 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i7 to i8*
  %1 = tail call { i8, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lbu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i8* %0, i32 undef) #6, !srcloc !19
  %asmresult = extractvalue { i8, i32 } %1, 0
  store i8 %asmresult, i8* %val, align 1, !tbaa !20
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal zeroext i8 @hero_load_uint8(i64 noundef %addr) #2 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i7.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i7.i to i8*
  %1 = tail call { i8, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lbu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i8* %0, i32 undef) #6, !srcloc !19
  %asmresult.i = extractvalue { i8, i32 } %1, 0
  ret i8 %asmresult.i
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_store_uint8_noblock(i64 noundef %addr, i8 noundef zeroext %val) #2 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i6 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6 to i8*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sb $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i8 %val, i8* %0, i32 undef) #6, !srcloc !21
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint8(i64 noundef %addr, i8 noundef zeroext %val) #2 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i8*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sb $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i8 %val, i8* %0, i32 undef) #6, !srcloc !21
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i64 @hero_load_uint64(i64 noundef %addr) #2 {
entry:
  %shr.i.i.i = lshr i64 %addr, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %conv.i8.i.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8.i.i to i32*
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i.i, i32* %0, i32 undef) #6, !srcloc !9
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  %add = add i64 %addr, 4
  %shr.i.i.i7 = lshr i64 %add, 32
  %conv.i.i.i8 = trunc i64 %shr.i.i.i7 to i32
  %conv.i8.i.i9 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i8.i.i9 to i32*
  %3 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i.i8, i32* %2, i32 undef) #6, !srcloc !9
  %asmresult.i.i10 = extractvalue { i32, i32 } %3, 0
  %conv = zext i32 %asmresult.i.i10 to i64
  %shl = shl nuw i64 %conv, 32
  %conv2 = zext i32 %asmresult.i.i to i64
  %or = or i64 %shl, %conv2
  ret i64 %or
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint64(i64 noundef %addr, i64 noundef %val) #2 {
entry:
  %conv = trunc i64 %val to i32
  %shr.i.i.i = lshr i64 %addr, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %conv.i6.i.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i.i to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i.i, i32 %conv, i32* %0, i32 undef) #6, !srcloc !14
  %shr = lshr i64 %val, 32
  %conv1 = trunc i64 %shr to i32
  %add = add i64 %addr, 4
  %shr.i.i.i6 = lshr i64 %add, 32
  %conv.i.i.i7 = trunc i64 %shr.i.i.i6 to i32
  %conv.i6.i.i8 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i6.i.i8 to i32*
  %3 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i.i7, i32 %conv1, i32* %2, i32 undef) #6, !srcloc !14
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint64_noblock(i64 noundef %addr, i64* nocapture noundef writeonly %val) #2 {
entry:
  %0 = bitcast i64* %val to i32*
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i8.i = trunc i64 %addr to i32
  %1 = inttoptr i32 %conv.i8.i to i32*
  %2 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i32* %1, i32 undef) #6, !srcloc !9
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  store i32 %asmresult.i, i32* %0, align 4, !tbaa !10
  %add.ptr = getelementptr inbounds i32, i32* %0, i32 1
  %add = add i64 %addr, 4
  %shr.i.i8 = lshr i64 %add, 32
  %conv.i.i9 = trunc i64 %shr.i.i8 to i32
  %conv.i8.i10 = trunc i64 %add to i32
  %3 = inttoptr i32 %conv.i8.i10 to i32*
  %4 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i9, i32* %3, i32 undef) #6, !srcloc !9
  %asmresult.i11 = extractvalue { i32, i32 } %4, 0
  store i32 %asmresult.i11, i32* %add.ptr, align 4, !tbaa !10
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_store_uint64_noblock(i64 noundef %addr, i64 noundef %val) #2 {
entry:
  %conv = trunc i64 %val to i32
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i32 %conv, i32* %0, i32 undef) #6, !srcloc !14
  %shr = lshr i64 %val, 32
  %conv1 = trunc i64 %shr to i32
  %add = add i64 %addr, 4
  %shr.i.i9 = lshr i64 %add, 32
  %conv.i.i10 = trunc i64 %shr.i.i9 to i32
  %conv.i6.i11 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i6.i11 to i32*
  %3 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i10, i32 %conv1, i32* %2, i32 undef) #6, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind
define protected void @dev_hello_world() local_unnamed_addr #3 {
entry:
  tail call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @.omp_outlined.(i32* noalias nocapture noundef readnone %.global_tid., i32* noalias nocapture noundef readnone %.bound_tid.) #0 {
entry:
  %call = tail call i32 bitcast (i32 (...)* @snrt_cluster_core_idx to i32 ()*)() #6
  %call1 = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 noundef %call) #6
  ret void
}

; Function Attrs: convergent
declare dso_local i32 @snrt_printf(...) local_unnamed_addr #4

; Function Attrs: convergent
declare dso_local i32 @snrt_cluster_core_idx(...) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !22 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

define weak void @__omp_offloading_801_12a1c0f_main_l25(i64 %0) {
entry:
  call void asm sideeffect "nop", ""() #6, !srcloc !8
  ret void
}

define weak void @__omp_offloading_801_12a1c0f_main_l33(i64 %0) {
entry:
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)) #5
  ret void
}

attributes #0 = { alwaysinline convergent norecurse nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #1 = { alwaysinline norecurse nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #2 = { convergent inlinehint nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #3 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #4 = { convergent "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #5 = { nounwind }
attributes #6 = { convergent nounwind }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 2049, i32 19536911, !"main", i32 33, i32 1}
!1 = !{i32 0, i32 2049, i32 19536911, !"main", i32 25, i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 1, !"target-abi", !"ilp32d"}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 7, !"openmp-device", i32 50}
!6 = !{i32 1, !"SmallDataLimit", i32 8}
!7 = !{!"clang version 15.0.0 (git@iis-git.ee.ethz.ch:iis-compilers/llvm-project.git dc4e635bebcc2811b0a07f4f044c766cab3b7ca5)"}
!8 = !{i64 532}
!9 = !{i64 2147766163, i64 2147765099, i64 2147765213, i64 2147765385, i64 2147765439}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{i64 2147767815, i64 2147766912, i64 2147767026, i64 2147767197, i64 2147767252}
!15 = !{i64 2147769706, i64 2147768642, i64 2147768756, i64 2147768928, i64 2147768982}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !12, i64 0}
!18 = !{i64 2147771421, i64 2147770518, i64 2147770632, i64 2147770803, i64 2147770858}
!19 = !{i64 2147773354, i64 2147772301, i64 2147772415, i64 2147772587, i64 2147772641}
!20 = !{!12, !12, i64 0}
!21 = !{i64 2147775048, i64 2147774154, i64 2147774268, i64 2147774439, i64 2147774494}
!22 = !{!23}
!23 = !{i64 2, i64 -1, i64 -1, i1 true}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-riscv32-hero-hero1-elf
