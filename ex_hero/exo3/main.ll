
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-riscv32-hero-hero1-elf
; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-p1:64:32-i64:64-n32-S128-P0-A0"
target triple = "riscv32-hero-hero1-elf"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i32, i32, i32 }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [61 x i8] c"[dev] DMA error: src (%x) or dst (%x) not in device memory\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"[dev] DMA error: transfer too large (%x)\0A\0D\00", align 1
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12c075c_main_l30\00"
@.omp_offloading.entry.__omp_offloading_801_12c075c_main_l30 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* bitcast (void ()* @__omp_offloading_801_12c075c_main_l30 to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i32 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.2 = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12c075c_main_l64\00"
@.omp_offloading.entry.__omp_offloading_801_12c075c_main_l64 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @__omp_offloading_801_12c075c_main_l64 to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name.2, i32 0, i32 0), i32 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.compiler.used = appending global [16 x i8*] [i8* bitcast (i16 (i64)* @hero_load_uint16 to i8*), i8* bitcast (i32 (i64, i16*)* @hero_load_uint16_noblock to i8*), i8* bitcast (i32 (i64)* @hero_load_uint32 to i8*), i8* bitcast (i32 (i64, i32*)* @hero_load_uint32_noblock to i8*), i8* bitcast (i64 (i64)* @hero_load_uint64 to i8*), i8* bitcast (i32 (i64, i64*)* @hero_load_uint64_noblock to i8*), i8* bitcast (i8 (i64)* @hero_load_uint8 to i8*), i8* bitcast (i32 (i64, i8*)* @hero_load_uint8_noblock to i8*), i8* bitcast (void (i64, i16)* @hero_store_uint16 to i8*), i8* bitcast (i32 (i64, i16)* @hero_store_uint16_noblock to i8*), i8* bitcast (void (i64, i32)* @hero_store_uint32 to i8*), i8* bitcast (i32 (i64, i32)* @hero_store_uint32_noblock to i8*), i8* bitcast (void (i64, i64)* @hero_store_uint64 to i8*), i8* bitcast (i32 (i64, i64)* @hero_store_uint64_noblock to i8*), i8* bitcast (void (i64, i8)* @hero_store_uint8 to i8*), i8* bitcast (i32 (i64, i8)* @hero_store_uint8_noblock to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak void @__omp_offloading_801_12c075c_main_l30() #0 {
entry:
  tail call void asm sideeffect "nop", ""() #7, !srcloc !8
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak void @__omp_offloading_801_12c075c_main_l64(i32* noundef %C_phys, i32* noundef %D_phys, i32* noundef %E_phys, i32* noundef %width, i32* noundef %height) #0 {
entry:
  %x_out_phys.addr.i = alloca i32, align 4
  %n.addr.i = alloca i32, align 4
  %x_l1.i = alloca i32*, align 4
  %w_row_l1_comp.i = alloca i32*, align 4
  %I.i = alloca i32, align 4
  %rows_todo.i = alloca i32, align 4
  %_C_phys = alloca i32, align 4
  %_D_phys = alloca i32, align 4
  %_E_phys = alloca i32, align 4
  %_width = alloca i32, align 4
  %_height = alloca i32, align 4
  %_C_phys.0._C_phys.0._C_phys.0..sroa_cast = bitcast i32* %_C_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_C_phys.0._C_phys.0._C_phys.0..sroa_cast)
  %0 = load i32, i32* %C_phys, align 4, !tbaa !9
  store volatile i32 %0, i32* %_C_phys, align 4, !tbaa !9
  %_D_phys.0._D_phys.0._D_phys.0..sroa_cast = bitcast i32* %_D_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_D_phys.0._D_phys.0._D_phys.0..sroa_cast)
  %1 = load i32, i32* %D_phys, align 4, !tbaa !9
  store volatile i32 %1, i32* %_D_phys, align 4, !tbaa !9
  %_E_phys.0._E_phys.0._E_phys.0..sroa_cast = bitcast i32* %_E_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_E_phys.0._E_phys.0._E_phys.0..sroa_cast)
  %2 = load i32, i32* %E_phys, align 4, !tbaa !9
  store volatile i32 %2, i32* %_E_phys, align 4, !tbaa !9
  %_width.0._width.0._width.0..sroa_cast = bitcast i32* %_width to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_width.0._width.0._width.0..sroa_cast)
  %3 = load i32, i32* %width, align 4, !tbaa !9
  store volatile i32 %3, i32* %_width, align 4, !tbaa !9
  %_height.0._height.0._height.0..sroa_cast = bitcast i32* %_height to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_height.0._height.0._height.0..sroa_cast)
  %4 = load i32, i32* %height, align 4, !tbaa !9
  store volatile i32 %4, i32* %_height, align 4, !tbaa !9
  %_E_phys.0._E_phys.0._E_phys.0. = load volatile i32, i32* %_E_phys, align 4, !tbaa !9
  %_C_phys.0._C_phys.0._C_phys.0. = load volatile i32, i32* %_C_phys, align 4, !tbaa !9
  %_D_phys.0._D_phys.0._D_phys.0. = load volatile i32, i32* %_D_phys, align 4, !tbaa !9
  %_width.0._width.0._width.0. = load volatile i32, i32* %_width, align 4, !tbaa !9
  %_height.0._height.0._height.0. = load volatile i32, i32* %_height, align 4, !tbaa !9
  %5 = bitcast i32* %x_out_phys.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5)
  %6 = bitcast i32* %n.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6)
  %7 = bitcast i32** %x_l1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7)
  %8 = bitcast i32** %w_row_l1_comp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8)
  store i32 %2, i32* %x_out_phys.addr.i, align 4, !tbaa !9
  store i32 %3, i32* %n.addr.i, align 4, !tbaa !9
  %tobool.i = icmp ne i32 %3, 0
  %tobool1.i = icmp ne i32 %4, 0
  %or.cond.i = and i1 %tobool.i, %tobool1.i
  %tobool3.i = icmp ne i32 %2, 0
  %or.cond47.i = and i1 %tobool3.i, %or.cond.i
  %tobool5.i = icmp ne i32 %1, 0
  %or.cond48.i = and i1 %tobool5.i, %or.cond47.i
  %tobool7.i = icmp ne i32 %0, 0
  %or.cond49.i = and i1 %tobool7.i, %or.cond48.i
  br i1 %or.cond49.i, label %if.end.i, label %dev_matvec.internalized.exit

if.end.i:                                         ; preds = %entry
  %9 = inttoptr i32 %2 to i8*
  %10 = inttoptr i32 %1 to i8*
  %mul.i = mul i32 %4, %3
  %cmp.i.i = icmp ugt i8* %9, inttoptr (i32 268435456 to i8*)
  %cmp1.i.i = icmp ult i8* %9, inttoptr (i32 269484031 to i8*)
  %or.cond.i.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %cmp2.i.i = icmp ugt i8* %9, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i = icmp ult i8* %9, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i = and i1 %cmp2.i.i, %cmp4.i.i
  br i1 %or.cond27.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %cmp6.i.i = icmp ugt i8* %9, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i = icmp ne i8* %9, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i = and i1 %cmp6.i.i, %cmp8.i.i
  br i1 %or.cond29.i.i, label %lor.lhs.false9.i.i, label %if.then.i.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i, %lor.lhs.false.i.i, %if.end.i
  %cmp10.i.i = icmp ugt i8* %10, inttoptr (i32 268435456 to i8*)
  %cmp12.i.i = icmp ult i8* %10, inttoptr (i32 269484031 to i8*)
  %or.cond31.i.i = and i1 %cmp10.i.i, %cmp12.i.i
  br i1 %or.cond31.i.i, label %if.end.i.i, label %lor.lhs.false13.i.i

lor.lhs.false13.i.i:                              ; preds = %lor.lhs.false9.i.i
  %cmp14.i.i = icmp ugt i8* %10, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i = icmp ult i8* %10, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i = and i1 %cmp14.i.i, %cmp16.i.i
  br i1 %or.cond33.i.i, label %if.end.i.i, label %lor.lhs.false17.i.i

lor.lhs.false17.i.i:                              ; preds = %lor.lhs.false13.i.i
  %cmp18.i.i = icmp ugt i8* %10, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i = icmp ne i8* %10, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i = and i1 %cmp18.i.i, %cmp20.i.i
  br i1 %or.cond35.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false17.i.i, %lor.lhs.false5.i.i
  %call.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef nonnull %9, i8* noundef nonnull %10) #7
  br label %dev_matvec.internalized.exit

if.end.i.i:                                       ; preds = %lor.lhs.false17.i.i, %lor.lhs.false13.i.i, %lor.lhs.false9.i.i
  %cmp21.i.i = icmp ugt i32 %mul.i, 1048576
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end10.i

if.then22.i.i:                                    ; preds = %if.end.i.i
  %call23.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %mul.i) #7
  br label %dev_matvec.internalized.exit

if.end10.i:                                       ; preds = %if.end.i.i
  %mul11.i = shl i32 %3, 2
  %call12.i = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul11.i) #7
  %11 = inttoptr i32 %call12.i to i32*
  store i32* %11, i32** %x_l1.i, align 4, !tbaa !13
  %mul14.i = shl i32 %3, 5
  %call15.i = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul14.i) #7
  %12 = inttoptr i32 %call15.i to i32*
  %call18.i = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul14.i) #7
  %13 = inttoptr i32 %call18.i to i32*
  %14 = inttoptr i32 %call12.i to i8*
  %cmp.i.i.i = icmp ugt i8* %14, inttoptr (i32 268435456 to i8*)
  %cmp1.i.i.i = icmp ult i8* %14, inttoptr (i32 269484031 to i8*)
  %or.cond.i.i.i = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %lor.lhs.false9.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end10.i
  %cmp2.i.i.i = icmp ugt i8* %14, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i.i = icmp ult i8* %14, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i.i = and i1 %cmp2.i.i.i, %cmp4.i.i.i
  br i1 %or.cond27.i.i.i, label %lor.lhs.false9.i.i.i, label %lor.lhs.false5.i.i.i

lor.lhs.false5.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %cmp6.i.i.i = icmp ugt i8* %14, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i.i = icmp ne i8* %14, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i.i = and i1 %cmp6.i.i.i, %cmp8.i.i.i
  br i1 %or.cond29.i.i.i, label %lor.lhs.false9.i.i.i, label %if.then.i.i.i

lor.lhs.false9.i.i.i:                             ; preds = %lor.lhs.false5.i.i.i, %lor.lhs.false.i.i.i, %if.end10.i
  br i1 %or.cond31.i.i, label %if.end.i.i.i, label %lor.lhs.false13.i.i.i

lor.lhs.false13.i.i.i:                            ; preds = %lor.lhs.false9.i.i.i
  %cmp14.i.i.i = icmp ugt i8* %10, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i.i = icmp ult i8* %10, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i.i = and i1 %cmp14.i.i.i, %cmp16.i.i.i
  br i1 %or.cond33.i.i.i, label %if.end.i.i.i, label %lor.lhs.false17.i.i.i

lor.lhs.false17.i.i.i:                            ; preds = %lor.lhs.false13.i.i.i
  %cmp18.i.i.i = icmp ugt i8* %10, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i.i = icmp ne i8* %10, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i.i = and i1 %cmp18.i.i.i, %cmp20.i.i.i
  br i1 %or.cond35.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false17.i.i.i, %lor.lhs.false5.i.i.i
  %call.i.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef %14, i8* noundef nonnull %10) #7
  br label %for.body.lr.ph.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false17.i.i.i, %lor.lhs.false13.i.i.i, %lor.lhs.false9.i.i.i
  %cmp21.i.i.i = icmp ugt i32 %mul11.i, 1048576
  br i1 %cmp21.i.i.i, label %if.then22.i.i.i, label %if.end.i3.i

if.then22.i.i.i:                                  ; preds = %if.end.i.i.i
  %call23.i.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %mul11.i) #7
  br label %for.body.lr.ph.i

if.end.i3.i:                                      ; preds = %if.end.i.i.i
  %call1.i.i = tail call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %14, i8* noundef nonnull %10, i32 noundef %mul11.i) #7
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i3.i, %if.then22.i.i.i, %if.then.i.i.i
  %call20.i = tail call i32 bitcast (i32 (...)* @dm_wait to i32 ()*)() #7
  %15 = bitcast i32* %I.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %16 = bitcast i32* %rows_todo.i to i8*
  store i32 0, i32* %I.i, align 4, !tbaa !9
  %17 = inttoptr i32 %call15.i to i8*
  %18 = inttoptr i32 %0 to i8*
  %cmp.i.i4.i = icmp ugt i8* %17, inttoptr (i32 268435456 to i8*)
  %cmp1.i.i5.i = icmp ult i8* %17, inttoptr (i32 269484031 to i8*)
  %or.cond.i.i6.i = and i1 %cmp.i.i4.i, %cmp1.i.i5.i
  %cmp2.i.i7.i = icmp ugt i8* %17, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i8.i = icmp ult i8* %17, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i9.i = and i1 %cmp2.i.i7.i, %cmp4.i.i8.i
  %cmp6.i.i11.i = icmp ugt i8* %17, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i12.i = icmp ne i8* %17, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i13.i = and i1 %cmp6.i.i11.i, %cmp8.i.i12.i
  %cmp10.i.i15.i = icmp ugt i8* %18, inttoptr (i32 268435456 to i8*)
  %cmp12.i.i16.i = icmp ult i8* %18, inttoptr (i32 269484031 to i8*)
  %or.cond31.i.i17.i = and i1 %cmp10.i.i15.i, %cmp12.i.i16.i
  %cmp14.i.i19.i = icmp ugt i8* %18, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i20.i = icmp ult i8* %18, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i21.i = and i1 %cmp14.i.i19.i, %cmp16.i.i20.i
  %cmp18.i.i23.i = icmp ugt i8* %18, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i24.i = icmp ne i8* %18, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i25.i = and i1 %cmp18.i.i23.i, %cmp20.i.i24.i
  %brmerge.i = or i1 %or.cond.i.i6.i, %or.cond27.i.i9.i
  %brmerge73.i = select i1 %brmerge.i, i1 true, i1 %or.cond29.i.i13.i
  %brmerge74.i = or i1 %or.cond31.i.i17.i, %or.cond33.i.i21.i
  %brmerge75.i = or i1 %or.cond35.i.i25.i, %brmerge74.i
  %or.cond76.i = and i1 %brmerge75.i, %brmerge73.i
  br label %for.body.i

for.cond.cleanup.i:                               ; preds = %if.end45.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %dev_matvec.internalized.exit

for.body.i:                                       ; preds = %if.end45.i, %for.body.lr.ph.i
  %w_row_l1_copy.072.i = phi i32* [ undef, %for.body.lr.ph.i ], [ %27, %if.end45.i ]
  %storemerge71.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add46.i, %if.end45.i ]
  %sub.i = sub i32 %4, %storemerge71.i
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #5
  %19 = call i32 @llvm.smin.i32(i32 %sub.i, i32 8) #5, !range !15
  store i32 %19, i32* %rows_todo.i, align 4, !tbaa !9
  %cmp22.i = icmp eq i32 %storemerge71.i, 0
  br i1 %cmp22.i, label %if.then23.i, label %if.end28.i

if.then23.i:                                      ; preds = %for.body.i
  %20 = load i32, i32* %n.addr.i, align 4, !tbaa !9
  %mul26.i = shl i32 %19, 2
  %mul27.i = mul i32 %20, %mul26.i
  br i1 %or.cond76.i, label %if.end.i.i30.i, label %if.then.i.i28.i

if.then.i.i28.i:                                  ; preds = %if.then23.i
  %call.i.i27.i = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef %17, i8* noundef nonnull %18) #7
  br label %dev_dma_memcpy.internalized.exit35.i

if.end.i.i30.i:                                   ; preds = %if.then23.i
  %cmp21.i.i29.i = icmp ugt i32 %mul27.i, 1048576
  br i1 %cmp21.i.i29.i, label %if.then22.i.i32.i, label %if.end.i34.i

if.then22.i.i32.i:                                ; preds = %if.end.i.i30.i
  %call23.i.i31.i = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %mul27.i) #7
  br label %dev_dma_memcpy.internalized.exit35.i

if.end.i34.i:                                     ; preds = %if.end.i.i30.i
  %call1.i33.i = call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %17, i8* noundef nonnull %18, i32 noundef %mul27.i) #7
  br label %dev_dma_memcpy.internalized.exit35.i

dev_dma_memcpy.internalized.exit35.i:             ; preds = %if.end.i34.i, %if.then22.i.i32.i, %if.then.i.i28.i
  store i32* %12, i32** %w_row_l1_comp.i, align 4, !tbaa !13
  br label %if.end28.i

if.end28.i:                                       ; preds = %dev_dma_memcpy.internalized.exit35.i, %for.body.i
  %w_row_l1_copy.1.i = phi i32* [ %13, %dev_dma_memcpy.internalized.exit35.i ], [ %w_row_l1_copy.072.i, %for.body.i ]
  %call29.i = call i32 bitcast (i32 (...)* @dm_wait to i32 ()*)() #7
  %21 = call i32 @llvm.smin.i32(i32 %sub.i, i32 16) #5, !range !16
  %cmp37.i = icmp sgt i32 %21, 8
  br i1 %cmp37.i, label %if.then38.i, label %if.end45.i

if.then38.i:                                      ; preds = %if.end28.i
  %22 = bitcast i32* %w_row_l1_copy.1.i to i8*
  %23 = load i32, i32* %n.addr.i, align 4, !tbaa !9
  %mul39.i = shl i32 %23, 2
  %24 = load i32, i32* %I.i, align 4, !tbaa !9
  %add40.i = add nsw i32 %24, 8
  %mul41.i = mul i32 %mul39.i, %add40.i
  %add42.i = add i32 %mul41.i, %0
  %25 = inttoptr i32 %add42.i to i8*
  %26 = shl nuw nsw i32 %21, 2
  %mul43.i = add nsw i32 %26, -32
  %mul44.i = mul i32 %23, %mul43.i
  %cmp.i.i36.i = icmp ugt i32* %w_row_l1_copy.1.i, inttoptr (i32 268435456 to i32*)
  %cmp1.i.i37.i = icmp ult i32* %w_row_l1_copy.1.i, inttoptr (i32 269484031 to i32*)
  %or.cond.i.i38.i = and i1 %cmp.i.i36.i, %cmp1.i.i37.i
  br i1 %or.cond.i.i38.i, label %lor.lhs.false9.i.i50.i, label %lor.lhs.false.i.i42.i

lor.lhs.false.i.i42.i:                            ; preds = %if.then38.i
  %cmp2.i.i39.i = icmp ugt i32* %w_row_l1_copy.1.i, inttoptr (i32 1895825408 to i32*)
  %cmp4.i.i40.i = icmp ult i32* %w_row_l1_copy.1.i, inttoptr (i32 1912602623 to i32*)
  %or.cond27.i.i41.i = and i1 %cmp2.i.i39.i, %cmp4.i.i40.i
  br i1 %or.cond27.i.i41.i, label %lor.lhs.false9.i.i50.i, label %lor.lhs.false5.i.i46.i

lor.lhs.false5.i.i46.i:                           ; preds = %lor.lhs.false.i.i42.i
  %cmp6.i.i43.i = icmp ugt i32* %w_row_l1_copy.1.i, inttoptr (i32 -1073741824 to i32*)
  %cmp8.i.i44.i = icmp ne i32* %w_row_l1_copy.1.i, inttoptr (i32 -1 to i32*)
  %or.cond29.i.i45.i = and i1 %cmp6.i.i43.i, %cmp8.i.i44.i
  br i1 %or.cond29.i.i45.i, label %lor.lhs.false9.i.i50.i, label %if.then.i.i60.i

lor.lhs.false9.i.i50.i:                           ; preds = %lor.lhs.false5.i.i46.i, %lor.lhs.false.i.i42.i, %if.then38.i
  %cmp10.i.i47.i = icmp ugt i8* %25, inttoptr (i32 268435456 to i8*)
  %cmp12.i.i48.i = icmp ult i8* %25, inttoptr (i32 269484031 to i8*)
  %or.cond31.i.i49.i = and i1 %cmp10.i.i47.i, %cmp12.i.i48.i
  br i1 %or.cond31.i.i49.i, label %if.end.i.i62.i, label %lor.lhs.false13.i.i54.i

lor.lhs.false13.i.i54.i:                          ; preds = %lor.lhs.false9.i.i50.i
  %cmp14.i.i51.i = icmp ugt i8* %25, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i52.i = icmp ult i8* %25, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i53.i = and i1 %cmp14.i.i51.i, %cmp16.i.i52.i
  br i1 %or.cond33.i.i53.i, label %if.end.i.i62.i, label %lor.lhs.false17.i.i58.i

lor.lhs.false17.i.i58.i:                          ; preds = %lor.lhs.false13.i.i54.i
  %cmp18.i.i55.i = icmp ugt i8* %25, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i56.i = icmp ne i8* %25, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i57.i = and i1 %cmp18.i.i55.i, %cmp20.i.i56.i
  br i1 %or.cond35.i.i57.i, label %if.end.i.i62.i, label %if.then.i.i60.i

if.then.i.i60.i:                                  ; preds = %lor.lhs.false17.i.i58.i, %lor.lhs.false5.i.i46.i
  %call.i.i59.i = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef %22, i8* noundef %25) #7
  br label %if.end45.i

if.end.i.i62.i:                                   ; preds = %lor.lhs.false17.i.i58.i, %lor.lhs.false13.i.i54.i, %lor.lhs.false9.i.i50.i
  %cmp21.i.i61.i = icmp ugt i32 %mul44.i, 1048576
  br i1 %cmp21.i.i61.i, label %if.then22.i.i64.i, label %if.end.i66.i

if.then22.i.i64.i:                                ; preds = %if.end.i.i62.i
  %call23.i.i63.i = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %mul44.i) #7
  br label %if.end45.i

if.end.i66.i:                                     ; preds = %if.end.i.i62.i
  %call1.i65.i = call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %22, i8* noundef %25, i32 noundef %mul44.i) #7
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end.i66.i, %if.then22.i.i64.i, %if.then.i.i60.i, %if.end28.i
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %rows_todo.i, i32* nonnull %n.addr.i, i32** nonnull %x_l1.i, i32** nonnull %w_row_l1_comp.i, i32* nonnull %x_out_phys.addr.i, i32* nonnull %I.i) #5
  %27 = load i32*, i32** %w_row_l1_comp.i, align 4, !tbaa !13
  store i32* %w_row_l1_copy.1.i, i32** %w_row_l1_comp.i, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #5
  %28 = load i32, i32* %I.i, align 4, !tbaa !9
  %add46.i = add nsw i32 %28, 8
  store i32 %add46.i, i32* %I.i, align 4, !tbaa !9
  %cmp.i = icmp ult i32 %add46.i, %4
  br i1 %cmp.i, label %for.body.i, label %for.cond.cleanup.i, !llvm.loop !17

dev_matvec.internalized.exit:                     ; preds = %entry, %if.then.i.i, %if.then22.i.i, %for.cond.cleanup.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_height.0._height.0._height.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_width.0._width.0._width.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_E_phys.0._E_phys.0._E_phys.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_D_phys.0._D_phys.0._D_phys.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_C_phys.0._C_phys.0._C_phys.0..sroa_cast)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind
define protected void @dev_matvec(i32 noundef %x_out_phys, i32 noundef %w_phys, i32 noundef %x_phys, i32 noundef %n, i32 noundef %d) local_unnamed_addr #2 {
entry:
  %x_out_phys.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %x_l1 = alloca i32*, align 4
  %w_row_l1_comp = alloca i32*, align 4
  %I = alloca i32, align 4
  %rows_todo = alloca i32, align 4
  store i32 %x_out_phys, i32* %x_out_phys.addr, align 4, !tbaa !9
  store i32 %n, i32* %n.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %n, 0
  %tobool1 = icmp ne i32 %d, 0
  %or.cond = and i1 %tobool, %tobool1
  %tobool3 = icmp ne i32 %x_out_phys, 0
  %or.cond47 = and i1 %tobool3, %or.cond
  %tobool5 = icmp ne i32 %x_phys, 0
  %or.cond48 = and i1 %tobool5, %or.cond47
  %tobool7 = icmp ne i32 %w_phys, 0
  %or.cond49 = and i1 %tobool7, %or.cond48
  br i1 %or.cond49, label %if.end, label %omp_exit

if.end:                                           ; preds = %entry
  %0 = inttoptr i32 %x_out_phys to i8*
  %1 = inttoptr i32 %x_phys to i8*
  %mul = mul i32 %d, %n
  %cmp.i = icmp ugt i8* %0, inttoptr (i32 268435456 to i8*)
  %cmp1.i = icmp ult i8* %0, inttoptr (i32 269484031 to i8*)
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %lor.lhs.false9.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end
  %cmp2.i = icmp ugt i8* %0, inttoptr (i32 1895825408 to i8*)
  %cmp4.i = icmp ult i8* %0, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i = and i1 %cmp2.i, %cmp4.i
  br i1 %or.cond27.i, label %lor.lhs.false9.i, label %lor.lhs.false5.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %cmp6.i = icmp ugt i8* %0, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i = icmp ne i8* %0, inttoptr (i32 -1 to i8*)
  %or.cond29.i = and i1 %cmp6.i, %cmp8.i
  br i1 %or.cond29.i, label %lor.lhs.false9.i, label %if.then.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false5.i, %lor.lhs.false.i, %if.end
  %cmp10.i = icmp ugt i8* %1, inttoptr (i32 268435456 to i8*)
  %cmp12.i = icmp ult i8* %1, inttoptr (i32 269484031 to i8*)
  %or.cond31.i = and i1 %cmp10.i, %cmp12.i
  br i1 %or.cond31.i, label %if.end.i, label %lor.lhs.false13.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false9.i
  %cmp14.i = icmp ugt i8* %1, inttoptr (i32 1895825408 to i8*)
  %cmp16.i = icmp ult i8* %1, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i = and i1 %cmp14.i, %cmp16.i
  br i1 %or.cond33.i, label %if.end.i, label %lor.lhs.false17.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false13.i
  %cmp18.i = icmp ugt i8* %1, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i = icmp ne i8* %1, inttoptr (i32 -1 to i8*)
  %or.cond35.i = and i1 %cmp18.i, %cmp20.i
  br i1 %or.cond35.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false17.i, %lor.lhs.false5.i
  %call.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef nonnull %0, i8* noundef nonnull %1) #7
  br label %omp_exit

if.end.i:                                         ; preds = %lor.lhs.false17.i, %lor.lhs.false13.i, %lor.lhs.false9.i
  %cmp21.i = icmp ugt i32 %mul, 1048576
  br i1 %cmp21.i, label %if.then22.i, label %if.end10

if.then22.i:                                      ; preds = %if.end.i
  %call23.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %mul) #7
  br label %omp_exit

if.end10:                                         ; preds = %if.end.i
  %mul11 = shl i32 %n, 2
  %call12 = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul11) #7
  %2 = inttoptr i32 %call12 to i32*
  store i32* %2, i32** %x_l1, align 4, !tbaa !13
  %mul14 = shl i32 %n, 5
  %call15 = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul14) #7
  %3 = inttoptr i32 %call15 to i32*
  %call18 = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul14) #7
  %4 = inttoptr i32 %call18 to i32*
  %5 = inttoptr i32 %call12 to i8*
  %cmp.i.i = icmp ugt i8* %5, inttoptr (i32 268435456 to i8*)
  %cmp1.i.i = icmp ult i8* %5, inttoptr (i32 269484031 to i8*)
  %or.cond.i.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end10
  %cmp2.i.i = icmp ugt i8* %5, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i = icmp ult i8* %5, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i = and i1 %cmp2.i.i, %cmp4.i.i
  br i1 %or.cond27.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %cmp6.i.i = icmp ugt i8* %5, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i = icmp ne i8* %5, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i = and i1 %cmp6.i.i, %cmp8.i.i
  br i1 %or.cond29.i.i, label %lor.lhs.false9.i.i, label %if.then.i.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i, %lor.lhs.false.i.i, %if.end10
  br i1 %or.cond31.i, label %if.end.i.i, label %lor.lhs.false13.i.i

lor.lhs.false13.i.i:                              ; preds = %lor.lhs.false9.i.i
  %cmp14.i.i = icmp ugt i8* %1, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i = icmp ult i8* %1, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i = and i1 %cmp14.i.i, %cmp16.i.i
  br i1 %or.cond33.i.i, label %if.end.i.i, label %lor.lhs.false17.i.i

lor.lhs.false17.i.i:                              ; preds = %lor.lhs.false13.i.i
  %cmp18.i.i = icmp ugt i8* %1, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i = icmp ne i8* %1, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i = and i1 %cmp18.i.i, %cmp20.i.i
  br i1 %or.cond35.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false17.i.i, %lor.lhs.false5.i.i
  %call.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef %5, i8* noundef nonnull %1) #7
  br label %for.body.lr.ph

if.end.i.i:                                       ; preds = %lor.lhs.false17.i.i, %lor.lhs.false13.i.i, %lor.lhs.false9.i.i
  %cmp21.i.i = icmp ugt i32 %mul11, 1048576
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end.i67

if.then22.i.i:                                    ; preds = %if.end.i.i
  %call23.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %mul11) #7
  br label %for.body.lr.ph

if.end.i67:                                       ; preds = %if.end.i.i
  %call1.i = tail call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %5, i8* noundef nonnull %1, i32 noundef %mul11) #7
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.i67, %if.then22.i.i, %if.then.i.i
  %call20 = tail call i32 bitcast (i32 (...)* @dm_wait to i32 ()*)() #7
  %6 = bitcast i32* %I to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #5
  %7 = bitcast i32* %rows_todo to i8*
  store i32 0, i32* %I, align 4, !tbaa !9
  %8 = inttoptr i32 %call15 to i8*
  %9 = inttoptr i32 %w_phys to i8*
  %cmp.i.i68 = icmp ugt i8* %8, inttoptr (i32 268435456 to i8*)
  %cmp1.i.i69 = icmp ult i8* %8, inttoptr (i32 269484031 to i8*)
  %or.cond.i.i70 = and i1 %cmp.i.i68, %cmp1.i.i69
  %cmp2.i.i71 = icmp ugt i8* %8, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i72 = icmp ult i8* %8, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i73 = and i1 %cmp2.i.i71, %cmp4.i.i72
  %cmp6.i.i75 = icmp ugt i8* %8, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i76 = icmp ne i8* %8, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i77 = and i1 %cmp6.i.i75, %cmp8.i.i76
  %cmp10.i.i79 = icmp ugt i8* %9, inttoptr (i32 268435456 to i8*)
  %cmp12.i.i80 = icmp ult i8* %9, inttoptr (i32 269484031 to i8*)
  %or.cond31.i.i81 = and i1 %cmp10.i.i79, %cmp12.i.i80
  %cmp14.i.i83 = icmp ugt i8* %9, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i84 = icmp ult i8* %9, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i85 = and i1 %cmp14.i.i83, %cmp16.i.i84
  %cmp18.i.i87 = icmp ugt i8* %9, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i88 = icmp ne i8* %9, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i89 = and i1 %cmp18.i.i87, %cmp20.i.i88
  %brmerge = or i1 %or.cond.i.i70, %or.cond27.i.i73
  %brmerge137 = select i1 %brmerge, i1 true, i1 %or.cond29.i.i77
  %brmerge138 = or i1 %or.cond31.i.i81, %or.cond33.i.i85
  %brmerge139 = or i1 %brmerge138, %or.cond35.i.i89
  %or.cond140 = and i1 %brmerge137, %brmerge139
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end45
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #5
  br label %omp_exit

for.body:                                         ; preds = %for.body.lr.ph, %if.end45
  %w_row_l1_copy.0136 = phi i32* [ undef, %for.body.lr.ph ], [ %18, %if.end45 ]
  %storemerge135 = phi i32 [ 0, %for.body.lr.ph ], [ %add46, %if.end45 ]
  %sub = sub i32 %d, %storemerge135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5
  %10 = call i32 @llvm.smin.i32(i32 %sub, i32 8), !range !15
  store i32 %10, i32* %rows_todo, align 4, !tbaa !9
  %cmp22 = icmp eq i32 %storemerge135, 0
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %for.body
  %11 = load i32, i32* %n.addr, align 4, !tbaa !9
  %mul26 = shl i32 %10, 2
  %mul27 = mul i32 %mul26, %11
  br i1 %or.cond140, label %if.end.i.i94, label %if.then.i.i92

if.then.i.i92:                                    ; preds = %if.then23
  %call.i.i91 = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef %8, i8* noundef nonnull %9) #7
  br label %dev_dma_memcpy.exit99

if.end.i.i94:                                     ; preds = %if.then23
  %cmp21.i.i93 = icmp ugt i32 %mul27, 1048576
  br i1 %cmp21.i.i93, label %if.then22.i.i96, label %if.end.i98

if.then22.i.i96:                                  ; preds = %if.end.i.i94
  %call23.i.i95 = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %mul27) #7
  br label %dev_dma_memcpy.exit99

if.end.i98:                                       ; preds = %if.end.i.i94
  %call1.i97 = call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %8, i8* noundef nonnull %9, i32 noundef %mul27) #7
  br label %dev_dma_memcpy.exit99

dev_dma_memcpy.exit99:                            ; preds = %if.then.i.i92, %if.then22.i.i96, %if.end.i98
  store i32* %3, i32** %w_row_l1_comp, align 4, !tbaa !13
  br label %if.end28

if.end28:                                         ; preds = %dev_dma_memcpy.exit99, %for.body
  %w_row_l1_copy.1 = phi i32* [ %4, %dev_dma_memcpy.exit99 ], [ %w_row_l1_copy.0136, %for.body ]
  %call29 = call i32 bitcast (i32 (...)* @dm_wait to i32 ()*)() #7
  %12 = call i32 @llvm.smin.i32(i32 %sub, i32 16), !range !16
  %cmp37 = icmp sgt i32 %12, 8
  br i1 %cmp37, label %if.then38, label %if.end45

if.then38:                                        ; preds = %if.end28
  %13 = bitcast i32* %w_row_l1_copy.1 to i8*
  %14 = load i32, i32* %n.addr, align 4, !tbaa !9
  %mul39 = shl i32 %14, 2
  %15 = load i32, i32* %I, align 4, !tbaa !9
  %add40 = add nsw i32 %15, 8
  %mul41 = mul i32 %mul39, %add40
  %add42 = add i32 %mul41, %w_phys
  %16 = inttoptr i32 %add42 to i8*
  %17 = shl nuw nsw i32 %12, 2
  %mul43 = add nsw i32 %17, -32
  %mul44 = mul i32 %mul43, %14
  %cmp.i.i100 = icmp ugt i32* %w_row_l1_copy.1, inttoptr (i32 268435456 to i32*)
  %cmp1.i.i101 = icmp ult i32* %w_row_l1_copy.1, inttoptr (i32 269484031 to i32*)
  %or.cond.i.i102 = and i1 %cmp.i.i100, %cmp1.i.i101
  br i1 %or.cond.i.i102, label %lor.lhs.false9.i.i114, label %lor.lhs.false.i.i106

lor.lhs.false.i.i106:                             ; preds = %if.then38
  %cmp2.i.i103 = icmp ugt i32* %w_row_l1_copy.1, inttoptr (i32 1895825408 to i32*)
  %cmp4.i.i104 = icmp ult i32* %w_row_l1_copy.1, inttoptr (i32 1912602623 to i32*)
  %or.cond27.i.i105 = and i1 %cmp2.i.i103, %cmp4.i.i104
  br i1 %or.cond27.i.i105, label %lor.lhs.false9.i.i114, label %lor.lhs.false5.i.i110

lor.lhs.false5.i.i110:                            ; preds = %lor.lhs.false.i.i106
  %cmp6.i.i107 = icmp ugt i32* %w_row_l1_copy.1, inttoptr (i32 -1073741824 to i32*)
  %cmp8.i.i108 = icmp ne i32* %w_row_l1_copy.1, inttoptr (i32 -1 to i32*)
  %or.cond29.i.i109 = and i1 %cmp6.i.i107, %cmp8.i.i108
  br i1 %or.cond29.i.i109, label %lor.lhs.false9.i.i114, label %if.then.i.i124

lor.lhs.false9.i.i114:                            ; preds = %lor.lhs.false5.i.i110, %lor.lhs.false.i.i106, %if.then38
  %cmp10.i.i111 = icmp ugt i8* %16, inttoptr (i32 268435456 to i8*)
  %cmp12.i.i112 = icmp ult i8* %16, inttoptr (i32 269484031 to i8*)
  %or.cond31.i.i113 = and i1 %cmp10.i.i111, %cmp12.i.i112
  br i1 %or.cond31.i.i113, label %if.end.i.i126, label %lor.lhs.false13.i.i118

lor.lhs.false13.i.i118:                           ; preds = %lor.lhs.false9.i.i114
  %cmp14.i.i115 = icmp ugt i8* %16, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i116 = icmp ult i8* %16, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i117 = and i1 %cmp14.i.i115, %cmp16.i.i116
  br i1 %or.cond33.i.i117, label %if.end.i.i126, label %lor.lhs.false17.i.i122

lor.lhs.false17.i.i122:                           ; preds = %lor.lhs.false13.i.i118
  %cmp18.i.i119 = icmp ugt i8* %16, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i120 = icmp ne i8* %16, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i121 = and i1 %cmp18.i.i119, %cmp20.i.i120
  br i1 %or.cond35.i.i121, label %if.end.i.i126, label %if.then.i.i124

if.then.i.i124:                                   ; preds = %lor.lhs.false17.i.i122, %lor.lhs.false5.i.i110
  %call.i.i123 = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef %13, i8* noundef %16) #7
  br label %if.end45

if.end.i.i126:                                    ; preds = %lor.lhs.false17.i.i122, %lor.lhs.false13.i.i118, %lor.lhs.false9.i.i114
  %cmp21.i.i125 = icmp ugt i32 %mul44, 1048576
  br i1 %cmp21.i.i125, label %if.then22.i.i128, label %if.end.i130

if.then22.i.i128:                                 ; preds = %if.end.i.i126
  %call23.i.i127 = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %mul44) #7
  br label %if.end45

if.end.i130:                                      ; preds = %if.end.i.i126
  %call1.i129 = call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %13, i8* noundef %16, i32 noundef %mul44) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end.i130, %if.then22.i.i128, %if.then.i.i124, %if.end28
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %rows_todo, i32* nonnull %n.addr, i32** nonnull %x_l1, i32** nonnull %w_row_l1_comp, i32* nonnull %x_out_phys.addr, i32* nonnull %I)
  %18 = load i32*, i32** %w_row_l1_comp, align 4, !tbaa !13
  store i32* %w_row_l1_copy.1, i32** %w_row_l1_comp, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5
  %19 = load i32, i32* %I, align 4, !tbaa !9
  %add46 = add nsw i32 %19, 8
  store i32 %add46, i32* %I, align 4, !tbaa !9
  %cmp = icmp ult i32 %add46, %d
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !17

omp_exit:                                         ; preds = %if.then.i, %if.then22.i, %entry, %for.cond.cleanup
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint32_noblock(i64 noundef %addr, i32* nocapture noundef writeonly %val) #3 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i8 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8 to i32*
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i32* %0, i32 undef) #7, !srcloc !19
  %asmresult = extractvalue { i32, i32 } %1, 0
  store i32 %asmresult, i32* %val, align 4, !tbaa !9
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint32(i64 noundef %addr) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i8.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8.i to i32*
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i32* %0, i32 undef) #7, !srcloc !19
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  ret i32 %asmresult.i
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_store_uint32_noblock(i64 noundef %addr, i32 noundef %val) #3 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i6 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6 to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i32 %val, i32* %0, i32 undef) #7, !srcloc !20
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint32(i64 noundef %addr, i32 noundef %val) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i32 %val, i32* %0, i32 undef) #7, !srcloc !20
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint16_noblock(i64 noundef %addr, i16* nocapture noundef writeonly %val) #3 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i8 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8 to i16*
  %1 = tail call { i16, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lhu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i16* %0, i32 undef) #7, !srcloc !21
  %asmresult = extractvalue { i16, i32 } %1, 0
  store i16 %asmresult, i16* %val, align 2, !tbaa !22
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal zeroext i16 @hero_load_uint16(i64 noundef %addr) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i8.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8.i to i16*
  %1 = tail call { i16, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lhu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i16* %0, i32 undef) #7, !srcloc !21
  %asmresult.i = extractvalue { i16, i32 } %1, 0
  ret i16 %asmresult.i
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_store_uint16_noblock(i64 noundef %addr, i16 noundef zeroext %val) #3 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i6 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6 to i16*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sh $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i16 %val, i16* %0, i32 undef) #7, !srcloc !24
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint16(i64 noundef %addr, i16 noundef zeroext %val) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i16*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sh $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i16 %val, i16* %0, i32 undef) #7, !srcloc !24
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint8_noblock(i64 noundef %addr, i8* nocapture noundef writeonly %val) #3 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i7 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i7 to i8*
  %1 = tail call { i8, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lbu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i8* %0, i32 undef) #7, !srcloc !25
  %asmresult = extractvalue { i8, i32 } %1, 0
  store i8 %asmresult, i8* %val, align 1, !tbaa !26
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal zeroext i8 @hero_load_uint8(i64 noundef %addr) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i7.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i7.i to i8*
  %1 = tail call { i8, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lbu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i8* %0, i32 undef) #7, !srcloc !25
  %asmresult.i = extractvalue { i8, i32 } %1, 0
  ret i8 %asmresult.i
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_store_uint8_noblock(i64 noundef %addr, i8 noundef zeroext %val) #3 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i6 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6 to i8*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sb $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i8 %val, i8* %0, i32 undef) #7, !srcloc !27
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint8(i64 noundef %addr, i8 noundef zeroext %val) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i8*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sb $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i8 %val, i8* %0, i32 undef) #7, !srcloc !27
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i64 @hero_load_uint64(i64 noundef %addr) #3 {
entry:
  %shr.i.i.i = lshr i64 %addr, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %conv.i8.i.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8.i.i to i32*
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i.i, i32* %0, i32 undef) #7, !srcloc !19
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  %add = add i64 %addr, 4
  %shr.i.i.i7 = lshr i64 %add, 32
  %conv.i.i.i8 = trunc i64 %shr.i.i.i7 to i32
  %conv.i8.i.i9 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i8.i.i9 to i32*
  %3 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i.i8, i32* %2, i32 undef) #7, !srcloc !19
  %asmresult.i.i10 = extractvalue { i32, i32 } %3, 0
  %conv = zext i32 %asmresult.i.i10 to i64
  %shl = shl nuw i64 %conv, 32
  %conv2 = zext i32 %asmresult.i.i to i64
  %or = or i64 %shl, %conv2
  ret i64 %or
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint64(i64 noundef %addr, i64 noundef %val) #3 {
entry:
  %conv = trunc i64 %val to i32
  %shr.i.i.i = lshr i64 %addr, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %conv.i6.i.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i.i to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i.i, i32 %conv, i32* %0, i32 undef) #7, !srcloc !20
  %shr = lshr i64 %val, 32
  %conv1 = trunc i64 %shr to i32
  %add = add i64 %addr, 4
  %shr.i.i.i6 = lshr i64 %add, 32
  %conv.i.i.i7 = trunc i64 %shr.i.i.i6 to i32
  %conv.i6.i.i8 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i6.i.i8 to i32*
  %3 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i.i7, i32 %conv1, i32* %2, i32 undef) #7, !srcloc !20
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint64_noblock(i64 noundef %addr, i64* nocapture noundef writeonly %val) #3 {
entry:
  %0 = bitcast i64* %val to i32*
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i8.i = trunc i64 %addr to i32
  %1 = inttoptr i32 %conv.i8.i to i32*
  %2 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i32* %1, i32 undef) #7, !srcloc !19
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  store i32 %asmresult.i, i32* %0, align 4, !tbaa !9
  %add.ptr = getelementptr inbounds i32, i32* %0, i32 1
  %add = add i64 %addr, 4
  %shr.i.i8 = lshr i64 %add, 32
  %conv.i.i9 = trunc i64 %shr.i.i8 to i32
  %conv.i8.i10 = trunc i64 %add to i32
  %3 = inttoptr i32 %conv.i8.i10 to i32*
  %4 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i9, i32* %3, i32 undef) #7, !srcloc !19
  %asmresult.i11 = extractvalue { i32, i32 } %4, 0
  store i32 %asmresult.i11, i32* %add.ptr, align 4, !tbaa !9
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_store_uint64_noblock(i64 noundef %addr, i64 noundef %val) #3 {
entry:
  %conv = trunc i64 %val to i32
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i32 %conv, i32* %0, i32 undef) #7, !srcloc !20
  %shr = lshr i64 %val, 32
  %conv1 = trunc i64 %shr to i32
  %add = add i64 %addr, 4
  %shr.i.i9 = lshr i64 %add, 32
  %conv.i.i10 = trunc i64 %shr.i.i9 to i32
  %conv.i6.i11 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i6.i11 to i32*
  %3 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i10, i32 %conv1, i32* %2, i32 undef) #7, !srcloc !20
  ret i32 0
}

; Function Attrs: convergent nounwind
define protected i32 @dev_check_transfer(i8* noundef %dst, i8* noundef %src, i32 noundef %size) local_unnamed_addr #2 {
entry:
  %cmp = icmp ugt i8* %dst, inttoptr (i32 268435456 to i8*)
  %cmp1 = icmp ult i8* %dst, inttoptr (i32 269484031 to i8*)
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %lor.lhs.false9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp2 = icmp ugt i8* %dst, inttoptr (i32 1895825408 to i8*)
  %cmp4 = icmp ult i8* %dst, inttoptr (i32 1912602623 to i8*)
  %or.cond27 = and i1 %cmp2, %cmp4
  br i1 %or.cond27, label %lor.lhs.false9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %cmp6 = icmp ugt i8* %dst, inttoptr (i32 -1073741824 to i8*)
  %cmp8 = icmp ne i8* %dst, inttoptr (i32 -1 to i8*)
  %or.cond29 = and i1 %cmp6, %cmp8
  br i1 %or.cond29, label %lor.lhs.false9, label %if.then

lor.lhs.false9:                                   ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  %cmp10 = icmp ugt i8* %src, inttoptr (i32 268435456 to i8*)
  %cmp12 = icmp ult i8* %src, inttoptr (i32 269484031 to i8*)
  %or.cond31 = and i1 %cmp10, %cmp12
  br i1 %or.cond31, label %if.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %cmp14 = icmp ugt i8* %src, inttoptr (i32 1895825408 to i8*)
  %cmp16 = icmp ult i8* %src, inttoptr (i32 1912602623 to i8*)
  %or.cond33 = and i1 %cmp14, %cmp16
  br i1 %or.cond33, label %if.end, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %cmp18 = icmp ugt i8* %src, inttoptr (i32 -1073741824 to i8*)
  %cmp20 = icmp ne i8* %src, inttoptr (i32 -1 to i8*)
  %or.cond35 = and i1 %cmp18, %cmp20
  br i1 %or.cond35, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false5
  %call = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef %dst, i8* noundef %src) #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false9
  %cmp21 = icmp ugt i32 %size, 1048576
  br i1 %cmp21, label %if.then22, label %return

if.then22:                                        ; preds = %if.end
  %call23 = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %size) #7
  br label %return

return:                                           ; preds = %if.end, %if.then22, %if.then
  %retval.0 = phi i32 [ 1, %if.then22 ], [ 1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: convergent
declare dso_local i32 @snrt_l1alloc(...) local_unnamed_addr #4

; Function Attrs: convergent nounwind
define protected void @dev_dma_memcpy(i8* noundef %dst, i8* noundef %src, i32 noundef %size) local_unnamed_addr #2 {
entry:
  %cmp.i = icmp ugt i8* %dst, inttoptr (i32 268435456 to i8*)
  %cmp1.i = icmp ult i8* %dst, inttoptr (i32 269484031 to i8*)
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %lor.lhs.false9.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %cmp2.i = icmp ugt i8* %dst, inttoptr (i32 1895825408 to i8*)
  %cmp4.i = icmp ult i8* %dst, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i = and i1 %cmp2.i, %cmp4.i
  br i1 %or.cond27.i, label %lor.lhs.false9.i, label %lor.lhs.false5.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %cmp6.i = icmp ugt i8* %dst, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i = icmp ne i8* %dst, inttoptr (i32 -1 to i8*)
  %or.cond29.i = and i1 %cmp6.i, %cmp8.i
  br i1 %or.cond29.i, label %lor.lhs.false9.i, label %if.then.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false5.i, %lor.lhs.false.i, %entry
  %cmp10.i = icmp ugt i8* %src, inttoptr (i32 268435456 to i8*)
  %cmp12.i = icmp ult i8* %src, inttoptr (i32 269484031 to i8*)
  %or.cond31.i = and i1 %cmp10.i, %cmp12.i
  br i1 %or.cond31.i, label %if.end.i, label %lor.lhs.false13.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false9.i
  %cmp14.i = icmp ugt i8* %src, inttoptr (i32 1895825408 to i8*)
  %cmp16.i = icmp ult i8* %src, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i = and i1 %cmp14.i, %cmp16.i
  br i1 %or.cond33.i, label %if.end.i, label %lor.lhs.false17.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false13.i
  %cmp18.i = icmp ugt i8* %src, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i = icmp ne i8* %src, inttoptr (i32 -1 to i8*)
  %or.cond35.i = and i1 %cmp18.i, %cmp20.i
  br i1 %or.cond35.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false17.i, %lor.lhs.false5.i
  %call.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* noundef %dst, i8* noundef %src) #7
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false17.i, %lor.lhs.false13.i, %lor.lhs.false9.i
  %cmp21.i = icmp ugt i32 %size, 1048576
  br i1 %cmp21.i, label %if.then22.i, label %if.end

if.then22.i:                                      ; preds = %if.end.i
  %call23.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 noundef %size) #7
  br label %return

if.end:                                           ; preds = %if.end.i
  %call1 = tail call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %dst, i8* noundef %src, i32 noundef %size) #7
  br label %return

return:                                           ; preds = %if.then.i, %if.then22.i, %if.end
  ret void
}

; Function Attrs: convergent
declare dso_local i32 @dm_wait(...) local_unnamed_addr #4

; Function Attrs: alwaysinline convergent norecurse nounwind
define internal void @.omp_outlined.(i32* noalias nocapture noundef readnone %.global_tid., i32* noalias nocapture noundef readnone %.bound_tid., i32* nocapture noundef readonly %rows_todo, i32* nocapture noundef readonly %n, i32** nocapture noundef readonly %x_l1, i32** nocapture noundef readonly %w_row_l1_comp, i32* nocapture noundef readonly %x_out_phys, i32* nocapture noundef readonly %I) #0 {
entry:
  %call = tail call i32 bitcast (i32 (...)* @snrt_cluster_core_idx to i32 ()*)() #7
  %0 = load i32, i32* %rows_todo, align 4, !tbaa !9
  %cmp.not = icmp slt i32 %call, %0
  br i1 %cmp.not, label %for.cond.preheader, label %end

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, i32* %n, align 4, !tbaa !9
  %cmp115.not = icmp eq i32 %1, 0
  br i1 %cmp115.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  %val.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %add5, %for.body ]
  %2 = load i32, i32* %x_out_phys, align 4, !tbaa !9
  %3 = inttoptr i32 %2 to i32*
  %4 = load i32, i32* %I, align 4, !tbaa !9
  %call6 = tail call i32 bitcast (i32 (...)* @snrt_cluster_core_idx to i32 ()*)() #7
  %add7 = add nsw i32 %call6, %4
  %arrayidx8 = getelementptr inbounds i32, i32* %3, i32 %add7
  store i32 %val.0.lcssa, i32* %arrayidx8, align 4, !tbaa !9
  br label %end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %j.017 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %val.016 = phi i32 [ %add5, %for.body ], [ 0, %for.cond.preheader ]
  %5 = load i32*, i32** %x_l1, align 4, !tbaa !13
  %arrayidx = getelementptr inbounds i32, i32* %5, i32 %j.017
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !9
  %7 = load i32*, i32** %w_row_l1_comp, align 4, !tbaa !13
  %call2 = tail call i32 bitcast (i32 (...)* @snrt_cluster_core_idx to i32 ()*)() #7
  %8 = load i32, i32* %n, align 4, !tbaa !9
  %mul = mul i32 %8, %call2
  %add = add i32 %mul, %j.017
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i32 %add
  %9 = load i32, i32* %arrayidx3, align 4, !tbaa !9
  %mul4 = mul i32 %9, %6
  %add5 = add i32 %mul4, %val.016
  %inc = add nuw nsw i32 %j.017, 1
  %cmp1 = icmp ult i32 %inc, %8
  br i1 %cmp1, label %for.body, label %for.cond.cleanup, !llvm.loop !28

end:                                              ; preds = %entry, %for.cond.cleanup
  ret void
}

; Function Attrs: convergent
declare dso_local i32 @snrt_cluster_core_idx(...) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !29 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: convergent
declare dso_local i32 @snrt_printf(...) local_unnamed_addr #4

; Function Attrs: convergent
declare dso_local i32 @dm_memcpy_async(...) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { alwaysinline convergent norecurse nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { convergent nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #3 = { convergent inlinehint nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #4 = { convergent "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #5 = { nounwind }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { convergent nounwind }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 2049, i32 19662684, !"main", i32 64, i32 1}
!1 = !{i32 0, i32 2049, i32 19662684, !"main", i32 30, i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 1, !"target-abi", !"ilp32d"}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 7, !"openmp-device", i32 50}
!6 = !{i32 1, !"SmallDataLimit", i32 8}
!7 = !{!"clang version 15.0.0 (git@iis-git.ee.ethz.ch:iis-compilers/llvm-project.git dc4e635bebcc2811b0a07f4f044c766cab3b7ca5)"}
!8 = !{i64 643}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !11, i64 0}
!15 = !{i32 -2147483648, i32 9}
!16 = !{i32 -2147483648, i32 17}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{i64 2147797612, i64 2147796548, i64 2147796662, i64 2147796834, i64 2147796888}
!20 = !{i64 2147799264, i64 2147798361, i64 2147798475, i64 2147798646, i64 2147798701}
!21 = !{i64 2147801155, i64 2147800091, i64 2147800205, i64 2147800377, i64 2147800431}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !11, i64 0}
!24 = !{i64 2147802870, i64 2147801967, i64 2147802081, i64 2147802252, i64 2147802307}
!25 = !{i64 2147804803, i64 2147803750, i64 2147803864, i64 2147804036, i64 2147804090}
!26 = !{!11, !11, i64 0}
!27 = !{i64 2147806497, i64 2147805603, i64 2147805717, i64 2147805888, i64 2147805943}
!28 = distinct !{!28, !18}
!29 = !{!30}
!30 = !{i64 2, i64 -1, i64 -1, i1 true}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-riscv32-hero-hero1-elf

; __CLANG_OFFLOAD_BUNDLE____START__ host-riscv64-hero-linux-gnu
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

; __CLANG_OFFLOAD_BUNDLE____END__ host-riscv64-hero-linux-gnu
