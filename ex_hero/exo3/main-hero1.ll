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
