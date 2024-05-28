
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-riscv32-hero-hero1-elf
; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-p1:64:32-i64:64-n32-S128-P0-A0"
target triple = "riscv32-hero-hero1-elf"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"ERROR: Offloaded variables are NULL!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR: Memory allocation failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"L1!\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"L3!\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"[dev] DMA error: src (%x) or dst (%x) not in device memory\0A\0D\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"[dev] DMA error: transfer too large (%x)\0A\0D\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_801_12a0f73_main_l87\00"
@.omp_offloading.entry.__omp_offloading_801_12a0f73_main_l87 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* bitcast (void ()* @__omp_offloading_801_12a0f73_main_l87 to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i32 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.8 = internal unnamed_addr constant [39 x i8] c"__omp_offloading_801_12a0f73_main_l109\00"
@.omp_offloading.entry.__omp_offloading_801_12a0f73_main_l109 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* bitcast (void (i32*, i32*, i32*, i32*)* @__omp_offloading_801_12a0f73_main_l109 to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.omp_offloading.entry_name.8, i32 0, i32 0), i32 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.compiler.used = appending global [16 x i8*] [i8* bitcast (i16 (i64)* @hero_load_uint16 to i8*), i8* bitcast (i32 (i64, i16*)* @hero_load_uint16_noblock to i8*), i8* bitcast (i32 (i64)* @hero_load_uint32 to i8*), i8* bitcast (i32 (i64, i32*)* @hero_load_uint32_noblock to i8*), i8* bitcast (i64 (i64)* @hero_load_uint64 to i8*), i8* bitcast (i32 (i64, i64*)* @hero_load_uint64_noblock to i8*), i8* bitcast (i8 (i64)* @hero_load_uint8 to i8*), i8* bitcast (i32 (i64, i8*)* @hero_load_uint8_noblock to i8*), i8* bitcast (void (i64, i16)* @hero_store_uint16 to i8*), i8* bitcast (i32 (i64, i16)* @hero_store_uint16_noblock to i8*), i8* bitcast (void (i64, i32)* @hero_store_uint32 to i8*), i8* bitcast (i32 (i64, i32)* @hero_store_uint32_noblock to i8*), i8* bitcast (void (i64, i64)* @hero_store_uint64 to i8*), i8* bitcast (i32 (i64, i64)* @hero_store_uint64_noblock to i8*), i8* bitcast (void (i64, i8)* @hero_store_uint8 to i8*), i8* bitcast (i32 (i64, i8)* @hero_store_uint8_noblock to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak void @__omp_offloading_801_12a0f73_main_l87() #0 {
entry:
  tail call void asm sideeffect "nop", ""() #17, !srcloc !8
  ret void
}

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak void @__omp_offloading_801_12a0f73_main_l109(i32* noundef %in_buffer_l3_phys, i32* noundef %out_buffer_l3_phys, i32* noundef %width, i32* noundef %height) #0 {
entry:
  %sobel_h.addr.i.i.i = alloca i8 addrspace(1)*, align 4
  %sobel_v.addr.i.i.i = alloca i8 addrspace(1)*, align 4
  %gray_size.addr.i.i.i = alloca i32, align 4
  %contour_img.addr.i.i.i = alloca i8 addrspace(1)*, align 4
  %rgb.addr.i.i.i = alloca i8 addrspace(1)*, align 4
  %gray.addr.i.i.i = alloca i8 addrspace(1)*, align 4
  %buffer_size.addr.i.i.i = alloca i32, align 4
  %sobel_h.i.i = alloca [9 x i32], align 4
  %sobel_v.i.i = alloca [9 x i32], align 4
  %_in_buffer_l3_phys = alloca i32, align 4
  %_out_buffer_l3_phys = alloca i32, align 4
  %_width = alloca i32, align 4
  %_height = alloca i32, align 4
  %_in_buffer_l3_phys.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0..sroa_cast = bitcast i32* %_in_buffer_l3_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_in_buffer_l3_phys.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0..sroa_cast)
  %0 = load i32, i32* %in_buffer_l3_phys, align 4, !tbaa !9
  store volatile i32 %0, i32* %_in_buffer_l3_phys, align 4, !tbaa !9
  %_out_buffer_l3_phys.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0..sroa_cast = bitcast i32* %_out_buffer_l3_phys to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_out_buffer_l3_phys.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0..sroa_cast)
  %1 = load i32, i32* %out_buffer_l3_phys, align 4, !tbaa !9
  store volatile i32 %1, i32* %_out_buffer_l3_phys, align 4, !tbaa !9
  %_width.0._width.0._width.0..sroa_cast = bitcast i32* %_width to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_width.0._width.0._width.0..sroa_cast)
  %2 = load i32, i32* %width, align 4, !tbaa !9
  store volatile i32 %2, i32* %_width, align 4, !tbaa !9
  %_height.0._height.0._height.0..sroa_cast = bitcast i32* %_height to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_height.0._height.0._height.0..sroa_cast)
  %3 = load i32, i32* %height, align 4, !tbaa !9
  store volatile i32 %3, i32* %_height, align 4, !tbaa !9
  %_in_buffer_l3_phys.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0. = load volatile i32, i32* %_in_buffer_l3_phys, align 4, !tbaa !9
  %_out_buffer_l3_phys.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0. = load volatile i32, i32* %_out_buffer_l3_phys, align 4, !tbaa !9
  %_width.0._width.0._width.0. = load volatile i32, i32* %_width, align 4, !tbaa !9
  %_height.0._height.0._height.0. = load volatile i32, i32* %_height, align 4, !tbaa !9
  %tobool.i = icmp ne i32 %0, 0
  %tobool1.i = icmp ne i32 %1, 0
  %or.cond.i = and i1 %tobool.i, %tobool1.i
  %tobool3.i = icmp ne i32 %2, 0
  %or.cond37.i = and i1 %or.cond.i, %tobool3.i
  %tobool5.i = icmp ne i32 %3, 0
  %or.cond38.i = and i1 %or.cond37.i, %tobool5.i
  br i1 %or.cond38.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*)*)(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0)) #17
  br label %filter.internalized.exit

if.end.i:                                         ; preds = %entry
  %4 = inttoptr i32 %0 to i8*
  %5 = inttoptr i32 %1 to i8*
  %mul.i = mul i32 %3, %2
  %cmp.i.i = icmp ugt i8* %4, inttoptr (i32 268435456 to i8*)
  %cmp1.i.i = icmp ult i8* %4, inttoptr (i32 269484031 to i8*)
  %or.cond.i.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %cmp2.i.i = icmp ugt i8* %4, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i = icmp ult i8* %4, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i = and i1 %cmp2.i.i, %cmp4.i.i
  br i1 %or.cond27.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %cmp6.i.i = icmp ugt i8* %4, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i = icmp ne i8* %4, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i = and i1 %cmp6.i.i, %cmp8.i.i
  br i1 %or.cond29.i.i, label %lor.lhs.false9.i.i, label %if.then.i.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i, %lor.lhs.false.i.i, %if.end.i
  %cmp10.i.i = icmp ugt i8* %5, inttoptr (i32 268435456 to i8*)
  %cmp12.i.i = icmp ult i8* %5, inttoptr (i32 269484031 to i8*)
  %or.cond31.i.i = and i1 %cmp10.i.i, %cmp12.i.i
  br i1 %or.cond31.i.i, label %if.end.i.i, label %lor.lhs.false13.i.i

lor.lhs.false13.i.i:                              ; preds = %lor.lhs.false9.i.i
  %cmp14.i.i = icmp ugt i8* %5, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i = icmp ult i8* %5, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i = and i1 %cmp14.i.i, %cmp16.i.i
  br i1 %or.cond33.i.i, label %if.end.i.i, label %lor.lhs.false17.i.i

lor.lhs.false17.i.i:                              ; preds = %lor.lhs.false13.i.i
  %cmp18.i.i = icmp ugt i8* %5, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i = icmp ne i8* %5, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i = and i1 %cmp18.i.i, %cmp20.i.i
  br i1 %or.cond35.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false17.i.i, %lor.lhs.false5.i.i
  %call.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8* noundef nonnull %4, i8* noundef nonnull %5) #17
  br label %filter.internalized.exit

if.end.i.i:                                       ; preds = %lor.lhs.false17.i.i, %lor.lhs.false13.i.i, %lor.lhs.false9.i.i
  %cmp21.i.i = icmp ugt i32 %mul.i, 1048576
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end9.i

if.then22.i.i:                                    ; preds = %if.end.i.i
  %call23.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 noundef %mul.i) #17
  br label %filter.internalized.exit

if.end9.i:                                        ; preds = %if.end.i.i
  %mul11.i = mul nuw nsw i32 %mul.i, 3
  %call13.i = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul.i) #17
  %call15.i = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul11.i) #17
  %call18.i = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul.i) #17
  %cmp.i = icmp eq i32 %call13.i, 0
  %cmp22.i = icmp eq i32 %call15.i, 0
  %or.cond39.i = select i1 %cmp.i, i1 true, i1 %cmp22.i
  %cmp25.i = icmp eq i32 %call18.i, 0
  %or.cond40.i = select i1 %or.cond39.i, i1 true, i1 %cmp25.i
  br i1 %or.cond40.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end9.i
  %call28.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0)) #17
  br label %filter.internalized.exit

if.else.i:                                        ; preds = %if.end9.i
  %conv19.i = sext i32 %call18.i to i64
  %6 = inttoptr i64 %conv19.i to i8 addrspace(1)*
  %conv16.i = sext i32 %call15.i to i64
  %7 = inttoptr i64 %conv16.i to i8 addrspace(1)*
  %conv.i = sext i32 %call13.i to i64
  %8 = inttoptr i64 %conv.i to i8 addrspace(1)*
  %9 = addrspacecast i8 addrspace(1)* %7 to i8*
  %cmp.i.i.i = icmp ugt i8* %9, inttoptr (i32 268435456 to i8*)
  %cmp1.i.i.i = icmp ult i8* %9, inttoptr (i32 269484031 to i8*)
  %or.cond.i.i.i = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %lor.lhs.false9.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.else.i
  %cmp2.i.i.i = icmp ugt i8* %9, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i.i = icmp ult i8* %9, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i.i = and i1 %cmp2.i.i.i, %cmp4.i.i.i
  br i1 %or.cond27.i.i.i, label %lor.lhs.false9.i.i.i, label %lor.lhs.false5.i.i.i

lor.lhs.false5.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %cmp6.i.i.i = icmp ugt i8* %9, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i.i = icmp ne i8* %9, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i.i = and i1 %cmp6.i.i.i, %cmp8.i.i.i
  br i1 %or.cond29.i.i.i, label %lor.lhs.false9.i.i.i, label %if.then.i.i.i

lor.lhs.false9.i.i.i:                             ; preds = %lor.lhs.false5.i.i.i, %lor.lhs.false.i.i.i, %if.else.i
  br i1 %or.cond.i.i, label %if.end.i.i.i, label %lor.lhs.false13.i.i.i

lor.lhs.false13.i.i.i:                            ; preds = %lor.lhs.false9.i.i.i
  %cmp14.i.i.i = icmp ugt i8* %4, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i.i = icmp ult i8* %4, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i.i = and i1 %cmp14.i.i.i, %cmp16.i.i.i
  br i1 %or.cond33.i.i.i, label %if.end.i.i.i, label %lor.lhs.false17.i.i.i

lor.lhs.false17.i.i.i:                            ; preds = %lor.lhs.false13.i.i.i
  %cmp18.i.i.i = icmp ugt i8* %4, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i.i = icmp ne i8* %4, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i.i = and i1 %cmp18.i.i.i, %cmp20.i.i.i
  br i1 %or.cond35.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false17.i.i.i, %lor.lhs.false5.i.i.i
  %call.i.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8* noundef %9, i8* noundef nonnull %4) #17
  br label %dev_dma_memcpy.internalized.exit.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false17.i.i.i, %lor.lhs.false13.i.i.i, %lor.lhs.false9.i.i.i
  %cmp21.i.i.i = icmp ugt i32 %mul11.i, 1048576
  br i1 %cmp21.i.i.i, label %if.then22.i.i.i, label %if.end.i3.i

if.then22.i.i.i:                                  ; preds = %if.end.i.i.i
  %call23.i.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 noundef %mul11.i) #17
  br label %dev_dma_memcpy.internalized.exit.i

if.end.i3.i:                                      ; preds = %if.end.i.i.i
  %call1.i.i = tail call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %9, i8* noundef nonnull %4, i32 noundef %mul11.i) #17
  br label %dev_dma_memcpy.internalized.exit.i

dev_dma_memcpy.internalized.exit.i:               ; preds = %if.end.i3.i, %if.then22.i.i.i, %if.then.i.i.i
  %call30.i = tail call i32 bitcast (i32 (...)* @dm_wait to i32 ()*)() #17
  %call31.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #17
  %10 = bitcast [9 x i32]* %sobel_h.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %10) #10
  %11 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i.i, i32 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(36) %12, i8 0, i32 28, i1 false) #10
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i.i, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i.i, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i.i, i32 0, i32 3
  store i32 -2, i32* %15, align 4
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i.i, i32 0, i32 5
  store i32 2, i32* %16, align 4
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i.i, i32 0, i32 6
  store i32 -1, i32* %17, align 4
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i.i, i32 0, i32 8
  store i32 1, i32* %18, align 4
  %19 = bitcast [9 x i32]* %sobel_v.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %19) #10
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i.i, i32 0, i32 3
  %21 = bitcast i32* %20 to i8*
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(36) %21, i8 0, i32 12, i1 false) #10
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i.i, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i.i, i32 0, i32 1
  store i32 2, i32* %23, align 4
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i.i, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i.i, i32 0, i32 6
  store i32 -1, i32* %25, align 4
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i.i, i32 0, i32 7
  store i32 -2, i32* %26, align 4
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i.i, i32 0, i32 8
  store i32 -1, i32* %27, align 4
  %28 = bitcast i8 addrspace(1)** %rgb.addr.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #10
  %29 = bitcast i8 addrspace(1)** %gray.addr.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #10
  %30 = bitcast i32* %buffer_size.addr.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #10
  store i8 addrspace(1)* %7, i8 addrspace(1)** %rgb.addr.i.i.i, align 4, !tbaa !13
  store i8 addrspace(1)* %6, i8 addrspace(1)** %gray.addr.i.i.i, align 4, !tbaa !13
  store i32 %mul.i, i32* %buffer_size.addr.i.i.i, align 4, !tbaa !9
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i8 addrspace(1)**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %buffer_size.addr.i.i.i, i8 addrspace(1)** nonnull %gray.addr.i.i.i, i8 addrspace(1)** nonnull %rgb.addr.i.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #10
  %arraydecay.ascast.i.i = addrspacecast i32* %13 to i32 addrspace(1)*
  call fastcc void @itConv.internalized(i8 addrspace(1)* noundef %6, i32 noundef %mul.i, i32 noundef %2, i32 addrspace(1)* noundef %arraydecay.ascast.i.i, i8 addrspace(1)* noundef %7) #17
  %arraydecay2.ascast.i.i = addrspacecast i32* %22 to i32 addrspace(1)*
  call fastcc void @itConv.internalized(i8 addrspace(1)* noundef %6, i32 noundef %mul.i, i32 noundef %2, i32 addrspace(1)* noundef %arraydecay2.ascast.i.i, i8 addrspace(1)* noundef %8) #17
  %31 = bitcast i8 addrspace(1)** %sobel_h.addr.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #10
  %32 = bitcast i8 addrspace(1)** %sobel_v.addr.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #10
  %33 = bitcast i32* %gray_size.addr.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #10
  %34 = bitcast i8 addrspace(1)** %contour_img.addr.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #10
  store i8 addrspace(1)* %7, i8 addrspace(1)** %sobel_h.addr.i.i.i, align 4, !tbaa !13
  store i8 addrspace(1)* %8, i8 addrspace(1)** %sobel_v.addr.i.i.i, align 4, !tbaa !13
  store i32 %mul.i, i32* %gray_size.addr.i.i.i, align 4, !tbaa !9
  store i8 addrspace(1)* %6, i8 addrspace(1)** %contour_img.addr.i.i.i, align 4, !tbaa !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i8 addrspace(1)**, i8 addrspace(1)**)* @.omp_outlined..7 to void (i32*, i32*, ...)*), i32* nonnull %gray_size.addr.i.i.i, i8 addrspace(1)** nonnull %sobel_h.addr.i.i.i, i8 addrspace(1)** nonnull %sobel_v.addr.i.i.i, i8 addrspace(1)** nonnull %contour_img.addr.i.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #10
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %10) #10
  %35 = addrspacecast i8 addrspace(1)* %6 to i8*
  br i1 %or.cond31.i.i, label %lor.lhs.false9.i.i18.i, label %lor.lhs.false.i.i10.i

lor.lhs.false.i.i10.i:                            ; preds = %dev_dma_memcpy.internalized.exit.i
  %cmp2.i.i7.i = icmp ugt i8* %5, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i8.i = icmp ult i8* %5, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i9.i = and i1 %cmp2.i.i7.i, %cmp4.i.i8.i
  br i1 %or.cond27.i.i9.i, label %lor.lhs.false9.i.i18.i, label %lor.lhs.false5.i.i14.i

lor.lhs.false5.i.i14.i:                           ; preds = %lor.lhs.false.i.i10.i
  %cmp6.i.i11.i = icmp ugt i8* %5, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i12.i = icmp ne i8* %5, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i13.i = and i1 %cmp6.i.i11.i, %cmp8.i.i12.i
  br i1 %or.cond29.i.i13.i, label %lor.lhs.false9.i.i18.i, label %if.then.i.i28.i

lor.lhs.false9.i.i18.i:                           ; preds = %lor.lhs.false5.i.i14.i, %lor.lhs.false.i.i10.i, %dev_dma_memcpy.internalized.exit.i
  %cmp10.i.i15.i = icmp ugt i8* %35, inttoptr (i32 268435456 to i8*)
  %cmp12.i.i16.i = icmp ult i8* %35, inttoptr (i32 269484031 to i8*)
  %or.cond31.i.i17.i = and i1 %cmp10.i.i15.i, %cmp12.i.i16.i
  br i1 %or.cond31.i.i17.i, label %if.end.i34.i, label %lor.lhs.false13.i.i22.i

lor.lhs.false13.i.i22.i:                          ; preds = %lor.lhs.false9.i.i18.i
  %cmp14.i.i19.i = icmp ugt i8* %35, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i20.i = icmp ult i8* %35, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i21.i = and i1 %cmp14.i.i19.i, %cmp16.i.i20.i
  br i1 %or.cond33.i.i21.i, label %if.end.i34.i, label %lor.lhs.false17.i.i26.i

lor.lhs.false17.i.i26.i:                          ; preds = %lor.lhs.false13.i.i22.i
  %cmp18.i.i23.i = icmp ugt i8* %35, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i24.i = icmp ne i8* %35, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i25.i = and i1 %cmp18.i.i23.i, %cmp20.i.i24.i
  br i1 %or.cond35.i.i25.i, label %if.end.i34.i, label %if.then.i.i28.i

if.then.i.i28.i:                                  ; preds = %lor.lhs.false17.i.i26.i, %lor.lhs.false5.i.i14.i
  %call.i.i27.i = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8* noundef nonnull %5, i8* noundef %35) #17
  br label %dev_dma_memcpy.internalized.exit35.i

if.end.i34.i:                                     ; preds = %lor.lhs.false17.i.i26.i, %lor.lhs.false13.i.i22.i, %lor.lhs.false9.i.i18.i
  %call1.i33.i = call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef nonnull %5, i8* noundef %35, i32 noundef %mul.i) #17
  br label %dev_dma_memcpy.internalized.exit35.i

dev_dma_memcpy.internalized.exit35.i:             ; preds = %if.end.i34.i, %if.then.i.i28.i
  %call34.i = call i32 bitcast (i32 (...)* @dm_wait to i32 ()*)() #17
  %call35.i = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #17
  br label %filter.internalized.exit

filter.internalized.exit:                         ; preds = %if.then.i, %if.then.i.i, %if.then22.i.i, %if.then27.i, %dev_dma_memcpy.internalized.exit35.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_height.0._height.0._height.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_width.0._width.0._width.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_out_buffer_l3_phys.0._out_buffer_l3_phys.0._out_buffer_l3_phys.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_in_buffer_l3_phys.0._in_buffer_l3_phys.0._in_buffer_l3_phys.0..sroa_cast)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind
define protected void @filter(i32 noundef %in_phys, i32 noundef %out_phys, i32 noundef %width, i32 noundef %height) local_unnamed_addr #2 {
entry:
  %sobel_h.addr.i.i = alloca i8 addrspace(1)*, align 4
  %sobel_v.addr.i.i = alloca i8 addrspace(1)*, align 4
  %gray_size.addr.i.i = alloca i32, align 4
  %contour_img.addr.i.i = alloca i8 addrspace(1)*, align 4
  %rgb.addr.i.i = alloca i8 addrspace(1)*, align 4
  %gray.addr.i.i = alloca i8 addrspace(1)*, align 4
  %buffer_size.addr.i.i = alloca i32, align 4
  %sobel_h.i = alloca [9 x i32], align 4
  %sobel_v.i = alloca [9 x i32], align 4
  %tobool = icmp ne i32 %in_phys, 0
  %tobool1 = icmp ne i32 %out_phys, 0
  %or.cond = and i1 %tobool, %tobool1
  %tobool3 = icmp ne i32 %width, 0
  %or.cond37 = and i1 %or.cond, %tobool3
  %tobool5 = icmp ne i32 %height, 0
  %or.cond38 = and i1 %or.cond37, %tobool5
  br i1 %or.cond38, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*)*)(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0)) #17
  br label %return

if.end:                                           ; preds = %entry
  %0 = inttoptr i32 %in_phys to i8*
  %1 = inttoptr i32 %out_phys to i8*
  %mul = mul i32 %height, %width
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
  %call.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8* noundef nonnull %0, i8* noundef nonnull %1) #17
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false17.i, %lor.lhs.false13.i, %lor.lhs.false9.i
  %cmp21.i = icmp ugt i32 %mul, 1048576
  br i1 %cmp21.i, label %if.then22.i, label %if.end9

if.then22.i:                                      ; preds = %if.end.i
  %call23.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 noundef %mul) #17
  br label %return

if.end9:                                          ; preds = %if.end.i
  %mul11 = mul nuw nsw i32 %mul, 3
  %call13 = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul) #17
  %call15 = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul11) #17
  %call18 = tail call i32 bitcast (i32 (...)* @snrt_l1alloc to i32 (i32)*)(i32 noundef %mul) #17
  %cmp = icmp eq i32 %call13, 0
  %cmp22 = icmp eq i32 %call15, 0
  %or.cond39 = select i1 %cmp, i1 true, i1 %cmp22
  %cmp25 = icmp eq i32 %call18, 0
  %or.cond40 = select i1 %or.cond39, i1 true, i1 %cmp25
  br i1 %or.cond40, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end9
  %call28 = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0)) #17
  br label %return

if.else:                                          ; preds = %if.end9
  %conv19 = sext i32 %call18 to i64
  %2 = inttoptr i64 %conv19 to i8 addrspace(1)*
  %conv16 = sext i32 %call15 to i64
  %3 = inttoptr i64 %conv16 to i8 addrspace(1)*
  %conv = sext i32 %call13 to i64
  %4 = inttoptr i64 %conv to i8 addrspace(1)*
  %5 = addrspacecast i8 addrspace(1)* %3 to i8*
  %cmp.i.i = icmp ugt i8* %5, inttoptr (i32 268435456 to i8*)
  %cmp1.i.i = icmp ult i8* %5, inttoptr (i32 269484031 to i8*)
  %or.cond.i.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.else
  %cmp2.i.i = icmp ugt i8* %5, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i = icmp ult i8* %5, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i = and i1 %cmp2.i.i, %cmp4.i.i
  br i1 %or.cond27.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %cmp6.i.i = icmp ugt i8* %5, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i = icmp ne i8* %5, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i = and i1 %cmp6.i.i, %cmp8.i.i
  br i1 %or.cond29.i.i, label %lor.lhs.false9.i.i, label %if.then.i.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i, %lor.lhs.false.i.i, %if.else
  br i1 %or.cond.i, label %if.end.i.i, label %lor.lhs.false13.i.i

lor.lhs.false13.i.i:                              ; preds = %lor.lhs.false9.i.i
  %cmp14.i.i = icmp ugt i8* %0, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i = icmp ult i8* %0, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i = and i1 %cmp14.i.i, %cmp16.i.i
  br i1 %or.cond33.i.i, label %if.end.i.i, label %lor.lhs.false17.i.i

lor.lhs.false17.i.i:                              ; preds = %lor.lhs.false13.i.i
  %cmp18.i.i = icmp ugt i8* %0, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i = icmp ne i8* %0, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i = and i1 %cmp18.i.i, %cmp20.i.i
  br i1 %or.cond35.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false17.i.i, %lor.lhs.false5.i.i
  %call.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8* noundef %5, i8* noundef nonnull %0) #17
  br label %dev_dma_memcpy.exit

if.end.i.i:                                       ; preds = %lor.lhs.false17.i.i, %lor.lhs.false13.i.i, %lor.lhs.false9.i.i
  %cmp21.i.i = icmp ugt i32 %mul11, 1048576
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end.i69

if.then22.i.i:                                    ; preds = %if.end.i.i
  %call23.i.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 noundef %mul11) #17
  br label %dev_dma_memcpy.exit

if.end.i69:                                       ; preds = %if.end.i.i
  %call1.i = tail call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %5, i8* noundef nonnull %0, i32 noundef %mul11) #17
  br label %dev_dma_memcpy.exit

dev_dma_memcpy.exit:                              ; preds = %if.then.i.i, %if.then22.i.i, %if.end.i69
  %call30 = tail call i32 bitcast (i32 (...)* @dm_wait to i32 ()*)() #17
  %call31 = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #17
  %6 = bitcast [9 x i32]* %sobel_h.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %6) #10
  %7 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i, i32 0, i32 1
  %8 = bitcast i32* %7 to i8*
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(36) %8, i8 0, i32 28, i1 false) #10
  %9 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i, i32 0, i32 0
  store i32 -1, i32* %9, align 4
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i, i32 0, i32 2
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i, i32 0, i32 3
  store i32 -2, i32* %11, align 4
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i, i32 0, i32 5
  store i32 2, i32* %12, align 4
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i, i32 0, i32 6
  store i32 -1, i32* %13, align 4
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h.i, i32 0, i32 8
  store i32 1, i32* %14, align 4
  %15 = bitcast [9 x i32]* %sobel_v.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %15) #10
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i, i32 0, i32 3
  %17 = bitcast i32* %16 to i8*
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(36) %17, i8 0, i32 12, i1 false) #10
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i, i32 0, i32 1
  store i32 2, i32* %19, align 4
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i, i32 0, i32 2
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i, i32 0, i32 6
  store i32 -1, i32* %21, align 4
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i, i32 0, i32 7
  store i32 -2, i32* %22, align 4
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v.i, i32 0, i32 8
  store i32 -1, i32* %23, align 4
  %24 = bitcast i8 addrspace(1)** %rgb.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #10
  %25 = bitcast i8 addrspace(1)** %gray.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #10
  %26 = bitcast i32* %buffer_size.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10
  store i8 addrspace(1)* %3, i8 addrspace(1)** %rgb.addr.i.i, align 4, !tbaa !13
  store i8 addrspace(1)* %2, i8 addrspace(1)** %gray.addr.i.i, align 4, !tbaa !13
  store i32 %mul, i32* %buffer_size.addr.i.i, align 4, !tbaa !9
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i8 addrspace(1)**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %buffer_size.addr.i.i, i8 addrspace(1)** nonnull %gray.addr.i.i, i8 addrspace(1)** nonnull %rgb.addr.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10
  %arraydecay.ascast.i = addrspacecast i32* %9 to i32 addrspace(1)*
  call void @itConv(i8 addrspace(1)* noundef %2, i32 noundef %mul, i32 noundef %width, i32 addrspace(1)* noundef %arraydecay.ascast.i, i8 addrspace(1)* noundef %3) #17
  %arraydecay2.ascast.i = addrspacecast i32* %18 to i32 addrspace(1)*
  call void @itConv(i8 addrspace(1)* noundef %2, i32 noundef %mul, i32 noundef %width, i32 addrspace(1)* noundef %arraydecay2.ascast.i, i8 addrspace(1)* noundef %4) #17
  %27 = bitcast i8 addrspace(1)** %sobel_h.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #10
  %28 = bitcast i8 addrspace(1)** %sobel_v.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #10
  %29 = bitcast i32* %gray_size.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #10
  %30 = bitcast i8 addrspace(1)** %contour_img.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #10
  store i8 addrspace(1)* %3, i8 addrspace(1)** %sobel_h.addr.i.i, align 4, !tbaa !13
  store i8 addrspace(1)* %4, i8 addrspace(1)** %sobel_v.addr.i.i, align 4, !tbaa !13
  store i32 %mul, i32* %gray_size.addr.i.i, align 4, !tbaa !9
  store i8 addrspace(1)* %2, i8 addrspace(1)** %contour_img.addr.i.i, align 4, !tbaa !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i8 addrspace(1)**, i8 addrspace(1)**)* @.omp_outlined..7 to void (i32*, i32*, ...)*), i32* nonnull %gray_size.addr.i.i, i8 addrspace(1)** nonnull %sobel_h.addr.i.i, i8 addrspace(1)** nonnull %sobel_v.addr.i.i, i8 addrspace(1)** nonnull %contour_img.addr.i.i) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #10
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %15) #10
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %6) #10
  %31 = addrspacecast i8 addrspace(1)* %2 to i8*
  br i1 %or.cond31.i, label %lor.lhs.false9.i.i84, label %lor.lhs.false.i.i76

lor.lhs.false.i.i76:                              ; preds = %dev_dma_memcpy.exit
  %cmp2.i.i73 = icmp ugt i8* %1, inttoptr (i32 1895825408 to i8*)
  %cmp4.i.i74 = icmp ult i8* %1, inttoptr (i32 1912602623 to i8*)
  %or.cond27.i.i75 = and i1 %cmp2.i.i73, %cmp4.i.i74
  br i1 %or.cond27.i.i75, label %lor.lhs.false9.i.i84, label %lor.lhs.false5.i.i80

lor.lhs.false5.i.i80:                             ; preds = %lor.lhs.false.i.i76
  %cmp6.i.i77 = icmp ugt i8* %1, inttoptr (i32 -1073741824 to i8*)
  %cmp8.i.i78 = icmp ne i8* %1, inttoptr (i32 -1 to i8*)
  %or.cond29.i.i79 = and i1 %cmp6.i.i77, %cmp8.i.i78
  br i1 %or.cond29.i.i79, label %lor.lhs.false9.i.i84, label %if.then.i.i94

lor.lhs.false9.i.i84:                             ; preds = %lor.lhs.false5.i.i80, %lor.lhs.false.i.i76, %dev_dma_memcpy.exit
  %cmp10.i.i81 = icmp ugt i8* %31, inttoptr (i32 268435456 to i8*)
  %cmp12.i.i82 = icmp ult i8* %31, inttoptr (i32 269484031 to i8*)
  %or.cond31.i.i83 = and i1 %cmp10.i.i81, %cmp12.i.i82
  br i1 %or.cond31.i.i83, label %if.end.i100, label %lor.lhs.false13.i.i88

lor.lhs.false13.i.i88:                            ; preds = %lor.lhs.false9.i.i84
  %cmp14.i.i85 = icmp ugt i8* %31, inttoptr (i32 1895825408 to i8*)
  %cmp16.i.i86 = icmp ult i8* %31, inttoptr (i32 1912602623 to i8*)
  %or.cond33.i.i87 = and i1 %cmp14.i.i85, %cmp16.i.i86
  br i1 %or.cond33.i.i87, label %if.end.i100, label %lor.lhs.false17.i.i92

lor.lhs.false17.i.i92:                            ; preds = %lor.lhs.false13.i.i88
  %cmp18.i.i89 = icmp ugt i8* %31, inttoptr (i32 -1073741824 to i8*)
  %cmp20.i.i90 = icmp ne i8* %31, inttoptr (i32 -1 to i8*)
  %or.cond35.i.i91 = and i1 %cmp18.i.i89, %cmp20.i.i90
  br i1 %or.cond35.i.i91, label %if.end.i100, label %if.then.i.i94

if.then.i.i94:                                    ; preds = %lor.lhs.false17.i.i92, %lor.lhs.false5.i.i80
  %call.i.i93 = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8* noundef nonnull %1, i8* noundef %31) #17
  br label %dev_dma_memcpy.exit101

if.end.i100:                                      ; preds = %lor.lhs.false9.i.i84, %lor.lhs.false13.i.i88, %lor.lhs.false17.i.i92
  %call1.i99 = call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef nonnull %1, i8* noundef %31, i32 noundef %mul) #17
  br label %dev_dma_memcpy.exit101

dev_dma_memcpy.exit101:                           ; preds = %if.then.i.i94, %if.end.i100
  %call34 = call i32 bitcast (i32 (...)* @dm_wait to i32 ()*)() #17
  %call35 = call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #17
  br label %return

return:                                           ; preds = %if.then.i, %if.then22.i, %if.then27, %dev_dma_memcpy.exit101, %if.then
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
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i32* %0, i32 undef) #17, !srcloc !15
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
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i32* %0, i32 undef) #17, !srcloc !15
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
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i32 %val, i32* %0, i32 undef) #17, !srcloc !16
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint32(i64 noundef %addr, i32 noundef %val) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i32*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i32 %val, i32* %0, i32 undef) #17, !srcloc !16
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint16_noblock(i64 noundef %addr, i16* nocapture noundef writeonly %val) #3 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i8 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8 to i16*
  %1 = tail call { i16, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lhu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i16* %0, i32 undef) #17, !srcloc !17
  %asmresult = extractvalue { i16, i32 } %1, 0
  store i16 %asmresult, i16* %val, align 2, !tbaa !18
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal zeroext i16 @hero_load_uint16(i64 noundef %addr) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i8.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8.i to i16*
  %1 = tail call { i16, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lhu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i16* %0, i32 undef) #17, !srcloc !17
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
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sh $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i16 %val, i16* %0, i32 undef) #17, !srcloc !20
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint16(i64 noundef %addr, i16 noundef zeroext %val) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i16*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sh $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i16 %val, i16* %0, i32 undef) #17, !srcloc !20
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @hero_load_uint8_noblock(i64 noundef %addr, i8* nocapture noundef writeonly %val) #3 {
entry:
  %shr.i = lshr i64 %addr, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv.i7 = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i7 to i8*
  %1 = tail call { i8, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lbu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i, i8* %0, i32 undef) #17, !srcloc !21
  %asmresult = extractvalue { i8, i32 } %1, 0
  store i8 %asmresult, i8* %val, align 1, !tbaa !22
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal zeroext i8 @hero_load_uint8(i64 noundef %addr) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i7.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i7.i to i8*
  %1 = tail call { i8, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lbu $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i8* %0, i32 undef) #17, !srcloc !21
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
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sb $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i, i8 %val, i8* %0, i32 undef) #17, !srcloc !23
  ret i32 0
}

; Function Attrs: convergent inlinehint nounwind
define internal void @hero_store_uint8(i64 noundef %addr, i8 noundef zeroext %val) #3 {
entry:
  %shr.i.i = lshr i64 %addr, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv.i6.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i6.i to i8*
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sb $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i8 %val, i8* %0, i32 undef) #17, !srcloc !23
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i64 @hero_load_uint64(i64 noundef %addr) #3 {
entry:
  %shr.i.i.i = lshr i64 %addr, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %conv.i8.i.i = trunc i64 %addr to i32
  %0 = inttoptr i32 %conv.i8.i.i to i32*
  %1 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i.i, i32* %0, i32 undef) #17, !srcloc !15
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  %add = add i64 %addr, 4
  %shr.i.i.i7 = lshr i64 %add, 32
  %conv.i.i.i8 = trunc i64 %shr.i.i.i7 to i32
  %conv.i8.i.i9 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i8.i.i9 to i32*
  %3 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i.i8, i32* %2, i32 undef) #17, !srcloc !15
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
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i.i, i32 %conv, i32* %0, i32 undef) #17, !srcloc !16
  %shr = lshr i64 %val, 32
  %conv1 = trunc i64 %shr to i32
  %add = add i64 %addr, 4
  %shr.i.i.i6 = lshr i64 %add, 32
  %conv.i.i.i7 = trunc i64 %shr.i.i.i6 to i32
  %conv.i6.i.i8 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i6.i.i8 to i32*
  %3 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i.i7, i32 %conv1, i32* %2, i32 undef) #17, !srcloc !16
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
  %2 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i, i32* %1, i32 undef) #17, !srcloc !15
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  store i32 %asmresult.i, i32* %0, align 4, !tbaa !9
  %add.ptr = getelementptr inbounds i32, i32* %0, i32 1
  %add = add i64 %addr, 4
  %shr.i.i8 = lshr i64 %add, 32
  %conv.i.i9 = trunc i64 %shr.i.i8 to i32
  %conv.i8.i10 = trunc i64 %add to i32
  %3 = inttoptr i32 %conv.i8.i10 to i32*
  %4 = tail call { i32, i32 } asm sideeffect "csrrci $1, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09lw $0, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $1", "=&r,=&r,r,r,1,~{memory}"(i32 %conv.i.i9, i32* %3, i32 undef) #17, !srcloc !15
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
  %1 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i, i32 %conv, i32* %0, i32 undef) #17, !srcloc !16
  %shr = lshr i64 %val, 32
  %conv1 = trunc i64 %shr to i32
  %add = add i64 %addr, 4
  %shr.i.i9 = lshr i64 %add, 32
  %conv.i.i10 = trunc i64 %shr.i.i9 to i32
  %conv.i6.i11 = trunc i64 %add to i32
  %2 = inttoptr i32 %conv.i6.i11 to i32*
  %3 = tail call i32 asm sideeffect "csrrci $0, 0x300, 3\0A\09csrw 0xbc0, zero\0A\09sw $2, 0($3)\0A\09csrw 0xbc0, zero\0A\09csrrw x0, 0x300, $0", "=&r,r,r,r,0,~{memory}"(i32 %conv.i.i10, i32 %conv1, i32* %2, i32 undef) #17, !srcloc !16
  ret i32 0
}

; Function Attrs: convergent
declare dso_local i32 @snrt_printf(...) local_unnamed_addr #4

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
  %call = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8* noundef %dst, i8* noundef %src) #17
  br label %return

if.end:                                           ; preds = %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false9
  %cmp21 = icmp ugt i32 %size, 1048576
  br i1 %cmp21, label %if.then22, label %return

if.then22:                                        ; preds = %if.end
  %call23 = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 noundef %size) #17
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
  %call.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i8*, i8*)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8* noundef %dst, i8* noundef %src) #17
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false17.i, %lor.lhs.false13.i, %lor.lhs.false9.i
  %cmp21.i = icmp ugt i32 %size, 1048576
  br i1 %cmp21.i, label %if.then22.i, label %if.end

if.then22.i:                                      ; preds = %if.end.i
  %call23.i = tail call i32 bitcast (i32 (...)* @snrt_printf to i32 (i8*, i32)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 noundef %size) #17
  br label %return

if.end:                                           ; preds = %if.end.i
  %call1 = tail call i32 bitcast (i32 (...)* @dm_memcpy_async to i32 (i8*, i8*, i32)*)(i8* noundef %dst, i8* noundef %src, i32 noundef %size) #17
  br label %return

return:                                           ; preds = %if.then.i, %if.then22.i, %if.end
  ret void
}

; Function Attrs: convergent
declare dso_local i32 @dm_wait(...) local_unnamed_addr #4

; Function Attrs: convergent nounwind
define protected i32 @sobelFilter(i8 addrspace(1)* noundef %in_buffer, i8 addrspace(1)* noundef %out_buffer, i8 addrspace(1)* noundef %tmp_buffer, i32 noundef %width, i32 noundef %height) local_unnamed_addr #2 {
entry:
  %sobel_h.addr.i = alloca i8 addrspace(1)*, align 4
  %sobel_v.addr.i = alloca i8 addrspace(1)*, align 4
  %gray_size.addr.i = alloca i32, align 4
  %contour_img.addr.i = alloca i8 addrspace(1)*, align 4
  %rgb.addr.i = alloca i8 addrspace(1)*, align 4
  %gray.addr.i = alloca i8 addrspace(1)*, align 4
  %buffer_size.addr.i = alloca i32, align 4
  %sobel_h = alloca [9 x i32], align 4
  %sobel_v = alloca [9 x i32], align 4
  %0 = bitcast [9 x i32]* %sobel_h to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #10
  %1 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h, i32 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 28, i1 false)
  %3 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h, i32 0, i32 0
  store i32 -1, i32* %3, align 4
  %4 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h, i32 0, i32 2
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h, i32 0, i32 3
  store i32 -2, i32* %5, align 4
  %6 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h, i32 0, i32 5
  store i32 2, i32* %6, align 4
  %7 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h, i32 0, i32 6
  store i32 -1, i32* %7, align 4
  %8 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_h, i32 0, i32 8
  store i32 1, i32* %8, align 4
  %9 = bitcast [9 x i32]* %sobel_v to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %9) #10
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v, i32 0, i32 3
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(36) %11, i8 0, i32 12, i1 false)
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v, i32 0, i32 1
  store i32 2, i32* %13, align 4
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v, i32 0, i32 6
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v, i32 0, i32 7
  store i32 -2, i32* %16, align 4
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %sobel_v, i32 0, i32 8
  store i32 -1, i32* %17, align 4
  %mul = mul nsw i32 %height, %width
  %18 = bitcast i8 addrspace(1)** %rgb.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18)
  %19 = bitcast i8 addrspace(1)** %gray.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19)
  %20 = bitcast i32* %buffer_size.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20)
  store i8 addrspace(1)* %in_buffer, i8 addrspace(1)** %rgb.addr.i, align 4, !tbaa !13
  store i8 addrspace(1)* %out_buffer, i8 addrspace(1)** %gray.addr.i, align 4, !tbaa !13
  store i32 %mul, i32* %buffer_size.addr.i, align 4, !tbaa !9
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i8 addrspace(1)**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %buffer_size.addr.i, i8 addrspace(1)** nonnull %gray.addr.i, i8 addrspace(1)** nonnull %rgb.addr.i) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20)
  %arraydecay.ascast = addrspacecast i32* %3 to i32 addrspace(1)*
  call void @itConv(i8 addrspace(1)* noundef %out_buffer, i32 noundef %mul, i32 noundef %width, i32 addrspace(1)* noundef %arraydecay.ascast, i8 addrspace(1)* noundef %in_buffer) #18
  %arraydecay2.ascast = addrspacecast i32* %12 to i32 addrspace(1)*
  call void @itConv(i8 addrspace(1)* noundef %out_buffer, i32 noundef %mul, i32 noundef %width, i32 addrspace(1)* noundef %arraydecay2.ascast, i8 addrspace(1)* noundef %tmp_buffer) #18
  %21 = bitcast i8 addrspace(1)** %sobel_h.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21)
  %22 = bitcast i8 addrspace(1)** %sobel_v.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22)
  %23 = bitcast i32* %gray_size.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23)
  %24 = bitcast i8 addrspace(1)** %contour_img.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24)
  store i8 addrspace(1)* %in_buffer, i8 addrspace(1)** %sobel_h.addr.i, align 4, !tbaa !13
  store i8 addrspace(1)* %tmp_buffer, i8 addrspace(1)** %sobel_v.addr.i, align 4, !tbaa !13
  store i32 %mul, i32* %gray_size.addr.i, align 4, !tbaa !9
  store i8 addrspace(1)* %out_buffer, i8 addrspace(1)** %contour_img.addr.i, align 4, !tbaa !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i8 addrspace(1)**, i8 addrspace(1)**)* @.omp_outlined..7 to void (i32*, i32*, ...)*), i32* nonnull %gray_size.addr.i, i8 addrspace(1)** nonnull %sobel_h.addr.i, i8 addrspace(1)** nonnull %sobel_v.addr.i, i8 addrspace(1)** nonnull %contour_img.addr.i) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24)
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #10
  ret i32 %mul
}

; Function Attrs: convergent
declare dso_local i32 @dm_memcpy_async(...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind
define protected void @rgbToGray(i8 addrspace(1)* noundef %rgb, i8 addrspace(1)* noundef %gray, i32 noundef %buffer_size) local_unnamed_addr #6 {
entry:
  %rgb.addr = alloca i8 addrspace(1)*, align 4
  %gray.addr = alloca i8 addrspace(1)*, align 4
  %buffer_size.addr = alloca i32, align 4
  store i8 addrspace(1)* %rgb, i8 addrspace(1)** %rgb.addr, align 4, !tbaa !13
  store i8 addrspace(1)* %gray, i8 addrspace(1)** %gray.addr, align 4, !tbaa !13
  store i32 %buffer_size, i32* %buffer_size.addr, align 4, !tbaa !9
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i8 addrspace(1)**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %buffer_size.addr, i8 addrspace(1)** nonnull %gray.addr, i8 addrspace(1)** nonnull %rgb.addr) #10
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind
define private fastcc void @itConv.internalized(i8 addrspace(1)* noundef %buffer, i32 noundef %buffer_size, i32 noundef %width, i32 addrspace(1)* noundef %op, i8 addrspace(1)* noundef %res) unnamed_addr #7 {
entry:
  %buffer.addr = alloca i8 addrspace(1)*, align 4
  %buffer_size.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %op.addr = alloca i32 addrspace(1)*, align 4
  %res.addr = alloca i8 addrspace(1)*, align 4
  %op_mem = alloca [9 x i8], align 1
  store i8 addrspace(1)* %buffer, i8 addrspace(1)** %buffer.addr, align 4, !tbaa !13
  store i32 %buffer_size, i32* %buffer_size.addr, align 4, !tbaa !9
  store i32 %width, i32* %width.addr, align 4, !tbaa !9
  store i32 addrspace(1)* %op, i32 addrspace(1)** %op.addr, align 4, !tbaa !13
  store i8 addrspace(1)* %res, i8 addrspace(1)** %res.addr, align 4, !tbaa !13
  %0 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %0) #10
  %arraydecay.ascast = addrspacecast i8* %0 to i8 addrspace(1)*
  call void @llvm.memset.p1i8.i32(i8 addrspace(1)* noundef align 1 dereferenceable(9) %arraydecay.ascast, i8 noundef 0, i32 noundef 9, i1 false) #17
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i32*, [9 x i8]*, i8 addrspace(1)**, i32 addrspace(1)**)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* nonnull %buffer_size.addr, i8 addrspace(1)** nonnull %buffer.addr, i32* nonnull %width.addr, [9 x i8]* nonnull %op_mem, i8 addrspace(1)** nonnull %res.addr, i32 addrspace(1)** nonnull %op.addr) #10
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %0) #10
  ret void
}

; Function Attrs: convergent noinline nounwind
define protected void @itConv(i8 addrspace(1)* noundef %buffer, i32 noundef %buffer_size, i32 noundef %width, i32 addrspace(1)* noundef %op, i8 addrspace(1)* noundef %res) local_unnamed_addr #8 {
entry:
  %buffer.addr = alloca i8 addrspace(1)*, align 4
  %buffer_size.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %op.addr = alloca i32 addrspace(1)*, align 4
  %res.addr = alloca i8 addrspace(1)*, align 4
  %op_mem = alloca [9 x i8], align 1
  store i8 addrspace(1)* %buffer, i8 addrspace(1)** %buffer.addr, align 4, !tbaa !13
  store i32 %buffer_size, i32* %buffer_size.addr, align 4, !tbaa !9
  store i32 %width, i32* %width.addr, align 4, !tbaa !9
  store i32 addrspace(1)* %op, i32 addrspace(1)** %op.addr, align 4, !tbaa !13
  store i8 addrspace(1)* %res, i8 addrspace(1)** %res.addr, align 4, !tbaa !13
  %0 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %0) #10
  %arraydecay.ascast = addrspacecast i8* %0 to i8 addrspace(1)*
  call void @llvm.memset.p1i8.i32(i8 addrspace(1)* noundef align 1 dereferenceable(9) %arraydecay.ascast, i8 noundef 0, i32 noundef 9, i1 false) #18
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i32*, [9 x i8]*, i8 addrspace(1)**, i32 addrspace(1)**)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* nonnull %buffer_size.addr, i8 addrspace(1)** nonnull %buffer.addr, i32* nonnull %width.addr, [9 x i8]* nonnull %op_mem, i8 addrspace(1)** nonnull %res.addr, i32 addrspace(1)** nonnull %op.addr) #10
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
define protected void @contour(i8 addrspace(1)* noundef %sobel_h, i8 addrspace(1)* noundef %sobel_v, i32 noundef %gray_size, i8 addrspace(1)* noundef %contour_img) local_unnamed_addr #6 {
entry:
  %sobel_h.addr = alloca i8 addrspace(1)*, align 4
  %sobel_v.addr = alloca i8 addrspace(1)*, align 4
  %gray_size.addr = alloca i32, align 4
  %contour_img.addr = alloca i8 addrspace(1)*, align 4
  store i8 addrspace(1)* %sobel_h, i8 addrspace(1)** %sobel_h.addr, align 4, !tbaa !13
  store i8 addrspace(1)* %sobel_v, i8 addrspace(1)** %sobel_v.addr, align 4, !tbaa !13
  store i32 %gray_size, i32* %gray_size.addr, align 4, !tbaa !9
  store i8 addrspace(1)* %contour_img, i8 addrspace(1)** %contour_img.addr, align 4, !tbaa !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8 addrspace(1)**, i8 addrspace(1)**, i8 addrspace(1)**)* @.omp_outlined..7 to void (i32*, i32*, ...)*), i32* nonnull %gray_size.addr, i8 addrspace(1)** nonnull %sobel_h.addr, i8 addrspace(1)** nonnull %sobel_v.addr, i8 addrspace(1)** nonnull %contour_img.addr) #10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind
define internal void @.omp_outlined.(i32* noalias nocapture noundef readonly %.global_tid., i32* noalias nocapture noundef readnone %.bound_tid., i32* nocapture noundef readonly %buffer_size, i8 addrspace(1)** nocapture noundef readonly %gray, i8 addrspace(1)** nocapture noundef readonly %rgb) #9 {
entry:
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %0 = load i32, i32* %buffer_size, align 4, !tbaa !9
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %omp.precond.end, label %omp.precond.then

omp.precond.then:                                 ; preds = %entry
  %sub2 = add i32 %0, -1
  %1 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %.omp.lb, align 4, !tbaa !9
  %2 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  store i32 %sub2, i32* %.omp.ub, align 4, !tbaa !9
  %3 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  store i32 1, i32* %.omp.stride, align 4, !tbaa !9
  %4 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !9
  %5 = load i32, i32* %.global_tid., align 4, !tbaa !9
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %5, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1) #10
  %6 = load i32, i32* %.omp.ub, align 4, !tbaa !9
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 %sub2), !range !24
  store i32 %7, i32* %.omp.ub, align 4, !tbaa !9
  %8 = load i32, i32* %.omp.lb, align 4, !tbaa !9
  %cmp540.not = icmp ugt i32 %8, %7
  br i1 %cmp540.not, label %omp.loop.exit, label %omp.inner.for.body

omp.inner.for.body:                               ; preds = %omp.precond.then, %omp.inner.for.body
  %.omp.iv.041 = phi i32 [ %add24, %omp.inner.for.body ], [ %8, %omp.precond.then ]
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %rgb, align 4, !tbaa !13
  %mul7 = mul i32 %.omp.iv.041, 3
  %10 = sext i32 %mul7 to i64
  %arrayidx = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %10
  %11 = load i8, i8 addrspace(1)* %arrayidx, align 1, !tbaa !22
  %conv8 = uitofp i8 %11 to double
  %add11 = add i32 %mul7, 1
  %12 = sext i32 %add11 to i64
  %arrayidx12 = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %12
  %13 = load i8, i8 addrspace(1)* %arrayidx12, align 1, !tbaa !22
  %conv14 = uitofp i8 %13 to double
  %mul15 = fmul double %conv14, 5.900000e-01
  %14 = call double @llvm.fmuladd.f64(double %conv8, double 3.000000e-01, double %mul15)
  %add17 = add i32 %mul7, 2
  %15 = sext i32 %add17 to i64
  %arrayidx18 = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %15
  %16 = load i8, i8 addrspace(1)* %arrayidx18, align 1, !tbaa !22
  %conv20 = uitofp i8 %16 to double
  %17 = call double @llvm.fmuladd.f64(double %conv20, double 1.100000e-01, double %14)
  %conv22 = fptoui double %17 to i8
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %gray, align 4, !tbaa !13
  %19 = sext i32 %.omp.iv.041 to i64
  %arrayidx23 = getelementptr inbounds i8, i8 addrspace(1)* %18, i64 %19
  store i8 %conv22, i8 addrspace(1)* %arrayidx23, align 1, !tbaa !22
  %add24 = add nuw i32 %.omp.iv.041, 1
  %20 = load i32, i32* %.omp.ub, align 4, !tbaa !9
  %add = add i32 %20, 1
  %cmp5 = icmp ult i32 %add24, %add
  br i1 %cmp5, label %omp.inner.for.body, label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.body, %omp.precond.then
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !25 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #10

; Function Attrs: alwaysinline norecurse nounwind
define internal void @.omp_outlined..6(i32* noalias nocapture noundef readonly %.global_tid., i32* noalias nocapture noundef readnone %.bound_tid., i32* nocapture noundef readonly %buffer_size, i8 addrspace(1)** nocapture noundef readonly %buffer, i32* nocapture noundef readonly %width, [9 x i8]* nocapture noundef %op_mem, i8 addrspace(1)** nocapture noundef readonly %res, i32 addrspace(1)** nocapture noundef readonly %op) #9 {
entry:
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %0 = load i32, i32* %buffer_size, align 4, !tbaa !9
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  %sub2 = add nsw i32 %0, -1
  %1 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %.omp.lb, align 4, !tbaa !9
  %2 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  store i32 %sub2, i32* %.omp.ub, align 4, !tbaa !9
  %3 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  store i32 1, i32* %.omp.stride, align 4, !tbaa !9
  %4 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !9
  %5 = load i32, i32* %.global_tid., align 4, !tbaa !9
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %5, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1) #10
  %6 = load i32, i32* %.omp.ub, align 4, !tbaa !9
  %7 = call i32 @llvm.smin.i32(i32 %6, i32 %sub2), !range !27
  store i32 %7, i32* %.omp.ub, align 4, !tbaa !9
  %8 = load i32, i32* %.omp.lb, align 4, !tbaa !9
  %cmp5.not33 = icmp sgt i32 %8, %7
  br i1 %cmp5.not33, label %omp.loop.exit, label %omp.inner.for.body.lr.ph

omp.inner.for.body.lr.ph:                         ; preds = %omp.precond.then
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 0
  %arraydecay.ascast = addrspacecast i8* %arraydecay to i8 addrspace(1)*
  %arrayidx24.i21 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 1
  %arrayidx24.i = addrspacecast i8* %arrayidx24.i21 to i8 addrspace(1)*
  %arrayidx37.i22 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 2
  %arrayidx37.i = addrspacecast i8* %arrayidx37.i22 to i8 addrspace(1)*
  %arrayidx47.i23 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 3
  %arrayidx47.i = addrspacecast i8* %arrayidx47.i23 to i8 addrspace(1)*
  %arrayidx49.i24 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 4
  %arrayidx49.i = addrspacecast i8* %arrayidx49.i24 to i8 addrspace(1)*
  %arrayidx59.i25 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 5
  %arrayidx59.i = addrspacecast i8* %arrayidx59.i25 to i8 addrspace(1)*
  %arrayidx72.i26 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 6
  %arrayidx72.i = addrspacecast i8* %arrayidx72.i26 to i8 addrspace(1)*
  %arrayidx82.i27 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 7
  %arrayidx82.i = addrspacecast i8* %arrayidx82.i27 to i8 addrspace(1)*
  %arrayidx95.i28 = getelementptr inbounds [9 x i8], [9 x i8]* %op_mem, i32 0, i32 8
  %arrayidx95.i = addrspacecast i8* %arrayidx95.i28 to i8 addrspace(1)*
  br label %omp.inner.for.body

omp.inner.for.body:                               ; preds = %omp.inner.for.body.lr.ph, %makeOpMem.internalized.exit
  %.omp.iv.034 = phi i32 [ %8, %omp.inner.for.body.lr.ph ], [ %add5.i, %makeOpMem.internalized.exit ]
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %buffer, align 4, !tbaa !13
  %10 = load i32, i32* %buffer_size, align 4, !tbaa !9
  %11 = load i32, i32* %width, align 4, !tbaa !9
  %sub.i = sub nsw i32 %.omp.iv.034, %11
  %cmp.i = icmp slt i32 %sub.i, 0
  %add.i = add nsw i32 %11, %.omp.iv.034
  %cmp1.i = icmp sge i32 %add.i, %10
  %rem.i = srem i32 %.omp.iv.034, %11
  %cmp3.i = icmp eq i32 %rem.i, 0
  %add5.i = add nsw i32 %.omp.iv.034, 1
  %rem6.i = srem i32 %add5.i, %11
  %cmp7.i = icmp eq i32 %rem6.i, 0
  %or.cond.i = or i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %omp.inner.for.body
  %sub11.i = add nsw i32 %sub.i, -1
  %12 = sext i32 %sub11.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %12
  %13 = load i8, i8 addrspace(1)* %arrayidx.i, align 1, !tbaa !22
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %omp.inner.for.body
  %cond.i = phi i8 [ %13, %cond.true.i ], [ 0, %omp.inner.for.body ]
  store i8 %cond.i, i8 addrspace(1)* %arraydecay.ascast, align 1, !tbaa !22
  br i1 %cmp.i, label %cond.end34.critedge.i, label %cond.true16.i

cond.true16.i:                                    ; preds = %cond.end.i
  %14 = zext i32 %sub.i to i64
  %arrayidx18.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %14
  %15 = load i8, i8 addrspace(1)* %arrayidx18.i, align 1, !tbaa !22
  store i8 %15, i8 addrspace(1)* %arrayidx24.i, align 1, !tbaa !22
  br i1 %cmp7.i, label %cond.end34.i, label %cond.true28.i

cond.true28.i:                                    ; preds = %cond.true16.i
  %add30.i = add nuw nsw i32 %sub.i, 1
  %16 = zext i32 %add30.i to i64
  %arrayidx31.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %16
  %17 = load i8, i8 addrspace(1)* %arrayidx31.i, align 1, !tbaa !22
  br label %cond.end34.i

cond.end34.critedge.i:                            ; preds = %cond.end.i
  store i8 0, i8 addrspace(1)* %arrayidx24.i, align 1, !tbaa !22
  br label %cond.end34.i

cond.end34.i:                                     ; preds = %cond.end34.critedge.i, %cond.true28.i, %cond.true16.i
  %18 = phi i8 [ %15, %cond.true28.i ], [ %15, %cond.true16.i ], [ 0, %cond.end34.critedge.i ]
  %cond35.i = phi i8 [ %17, %cond.true28.i ], [ 0, %cond.true16.i ], [ 0, %cond.end34.critedge.i ]
  store i8 %cond35.i, i8 addrspace(1)* %arrayidx37.i, align 1, !tbaa !22
  br i1 %cmp3.i, label %cond.end44.i, label %cond.true39.i

cond.true39.i:                                    ; preds = %cond.end34.i
  %sub40.i = add nsw i32 %.omp.iv.034, -1
  %19 = sext i32 %sub40.i to i64
  %arrayidx41.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %19
  %20 = load i8, i8 addrspace(1)* %arrayidx41.i, align 1, !tbaa !22
  br label %cond.end44.i

cond.end44.i:                                     ; preds = %cond.true39.i, %cond.end34.i
  %cond45.i = phi i8 [ %20, %cond.true39.i ], [ 0, %cond.end34.i ]
  store i8 %cond45.i, i8 addrspace(1)* %arrayidx47.i, align 1, !tbaa !22
  %21 = sext i32 %.omp.iv.034 to i64
  %arrayidx48.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %21
  %22 = load i8, i8 addrspace(1)* %arrayidx48.i, align 1, !tbaa !22
  store i8 %22, i8 addrspace(1)* %arrayidx49.i, align 1, !tbaa !22
  br i1 %cmp7.i, label %cond.end56.i, label %cond.true51.i

cond.true51.i:                                    ; preds = %cond.end44.i
  %23 = sext i32 %add5.i to i64
  %arrayidx53.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %23
  %24 = load i8, i8 addrspace(1)* %arrayidx53.i, align 1, !tbaa !22
  br label %cond.end56.i

cond.end56.i:                                     ; preds = %cond.true51.i, %cond.end44.i
  %cond57.i = phi i8 [ %24, %cond.true51.i ], [ 0, %cond.end44.i ]
  store i8 %cond57.i, i8 addrspace(1)* %arrayidx59.i, align 1, !tbaa !22
  %or.cond97.i = or i1 %cmp1.i, %cmp3.i
  br i1 %or.cond97.i, label %cond.end69.i, label %cond.true63.i

cond.true63.i:                                    ; preds = %cond.end56.i
  %sub65.i = add nsw i32 %add.i, -1
  %25 = sext i32 %sub65.i to i64
  %arrayidx66.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %25
  %26 = load i8, i8 addrspace(1)* %arrayidx66.i, align 1, !tbaa !22
  br label %cond.end69.i

cond.end69.i:                                     ; preds = %cond.true63.i, %cond.end56.i
  %cond70.i = phi i8 [ %26, %cond.true63.i ], [ 0, %cond.end56.i ]
  store i8 %cond70.i, i8 addrspace(1)* %arrayidx72.i, align 1, !tbaa !22
  br i1 %cmp1.i, label %cond.end92.critedge.i, label %cond.true74.i

cond.true74.i:                                    ; preds = %cond.end69.i
  %27 = sext i32 %add.i to i64
  %arrayidx76.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %27
  %28 = load i8, i8 addrspace(1)* %arrayidx76.i, align 1, !tbaa !22
  store i8 %28, i8 addrspace(1)* %arrayidx82.i, align 1, !tbaa !22
  br i1 %cmp7.i, label %makeOpMem.internalized.exit, label %cond.true86.i

cond.true86.i:                                    ; preds = %cond.true74.i
  %add88.i = add nsw i32 %add.i, 1
  %29 = sext i32 %add88.i to i64
  %arrayidx89.i = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %29
  %30 = load i8, i8 addrspace(1)* %arrayidx89.i, align 1, !tbaa !22
  br label %makeOpMem.internalized.exit

cond.end92.critedge.i:                            ; preds = %cond.end69.i
  store i8 0, i8 addrspace(1)* %arrayidx82.i, align 1, !tbaa !22
  br label %makeOpMem.internalized.exit

makeOpMem.internalized.exit:                      ; preds = %cond.true74.i, %cond.true86.i, %cond.end92.critedge.i
  %31 = phi i8 [ %28, %cond.true86.i ], [ %28, %cond.true74.i ], [ 0, %cond.end92.critedge.i ]
  %cond93.i = phi i8 [ %30, %cond.true86.i ], [ 0, %cond.true74.i ], [ 0, %cond.end92.critedge.i ]
  store i8 %cond93.i, i8 addrspace(1)* %arrayidx95.i, align 1, !tbaa !22
  %32 = load i32 addrspace(1)*, i32 addrspace(1)** %op, align 4, !tbaa !13
  %conv.i = zext i8 %cond.i to i32
  %arrayidx2.i = getelementptr inbounds i32, i32 addrspace(1)* %32, i64 8
  %33 = load i32, i32 addrspace(1)* %arrayidx2.i, align 4, !tbaa !9
  %mul.i = mul nsw i32 %33, %conv.i
  %conv.1.i = zext i8 %18 to i32
  %arrayidx2.1.i = getelementptr inbounds i32, i32 addrspace(1)* %32, i64 7
  %34 = load i32, i32 addrspace(1)* %arrayidx2.1.i, align 4, !tbaa !9
  %mul.1.i = mul nsw i32 %34, %conv.1.i
  %add.1.i = add nsw i32 %mul.1.i, %mul.i
  %conv.2.i = zext i8 %cond35.i to i32
  %arrayidx2.2.i = getelementptr inbounds i32, i32 addrspace(1)* %32, i64 6
  %35 = load i32, i32 addrspace(1)* %arrayidx2.2.i, align 4, !tbaa !9
  %mul.2.i = mul nsw i32 %35, %conv.2.i
  %add.2.i = add nsw i32 %add.1.i, %mul.2.i
  %conv.3.i = zext i8 %cond45.i to i32
  %arrayidx2.3.i = getelementptr inbounds i32, i32 addrspace(1)* %32, i64 5
  %36 = load i32, i32 addrspace(1)* %arrayidx2.3.i, align 4, !tbaa !9
  %mul.3.i = mul nsw i32 %36, %conv.3.i
  %add.3.i = add nsw i32 %add.2.i, %mul.3.i
  %conv.4.i = zext i8 %22 to i32
  %arrayidx2.4.i = getelementptr inbounds i32, i32 addrspace(1)* %32, i64 4
  %37 = load i32, i32 addrspace(1)* %arrayidx2.4.i, align 4, !tbaa !9
  %mul.4.i = mul nsw i32 %37, %conv.4.i
  %add.4.i = add nsw i32 %add.3.i, %mul.4.i
  %conv.5.i = zext i8 %cond57.i to i32
  %arrayidx2.5.i = getelementptr inbounds i32, i32 addrspace(1)* %32, i64 3
  %38 = load i32, i32 addrspace(1)* %arrayidx2.5.i, align 4, !tbaa !9
  %mul.5.i = mul nsw i32 %38, %conv.5.i
  %add.5.i = add nsw i32 %add.4.i, %mul.5.i
  %conv.6.i = zext i8 %cond70.i to i32
  %arrayidx2.6.i = getelementptr inbounds i32, i32 addrspace(1)* %32, i64 2
  %39 = load i32, i32 addrspace(1)* %arrayidx2.6.i, align 4, !tbaa !9
  %mul.6.i = mul nsw i32 %39, %conv.6.i
  %add.6.i = add nsw i32 %add.5.i, %mul.6.i
  %conv.7.i = zext i8 %31 to i32
  %arrayidx2.7.i = getelementptr inbounds i32, i32 addrspace(1)* %32, i64 1
  %40 = load i32, i32 addrspace(1)* %arrayidx2.7.i, align 4, !tbaa !9
  %mul.7.i = mul nsw i32 %40, %conv.7.i
  %add.7.i = add nsw i32 %add.6.i, %mul.7.i
  %conv.8.i = zext i8 %cond93.i to i32
  %41 = load i32, i32 addrspace(1)* %32, align 4, !tbaa !9
  %mul.8.i = mul nsw i32 %41, %conv.8.i
  %add.8.i = add nsw i32 %add.7.i, %mul.8.i
  %42 = call i32 @llvm.abs.i32(i32 %add.8.i, i1 true)
  %conv = trunc i32 %42 to i8
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %res, align 4, !tbaa !13
  %arrayidx = getelementptr inbounds i8, i8 addrspace(1)* %43, i64 %21
  store i8 %conv, i8 addrspace(1)* %arrayidx, align 1, !tbaa !22
  %44 = load i32, i32* %.omp.ub, align 4, !tbaa !9
  %cmp5.not.not = icmp slt i32 %.omp.iv.034, %44
  br i1 %cmp5.not.not, label %omp.inner.for.body, label %omp.loop.exit

omp.loop.exit:                                    ; preds = %makeOpMem.internalized.exit, %omp.precond.then
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected void @makeOpMem(i8 addrspace(1)* nocapture noundef readonly %buffer, i32 noundef %buffer_size, i32 noundef %width, i32 noundef %cindex, i8 addrspace(1)* nocapture noundef writeonly %op_mem) local_unnamed_addr #12 {
entry:
  %sub = sub nsw i32 %cindex, %width
  %cmp = icmp slt i32 %sub, 0
  %add = add nsw i32 %cindex, %width
  %cmp1 = icmp sge i32 %add, %buffer_size
  %rem = srem i32 %cindex, %width
  %cmp3 = icmp eq i32 %rem, 0
  %add5 = add nsw i32 %cindex, 1
  %rem6 = srem i32 %add5, %width
  %cmp7 = icmp eq i32 %rem6, 0
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %sub11 = add nsw i32 %sub, -1
  %0 = sext i32 %sub11 to i64
  %arrayidx = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %0
  %1 = load i8, i8 addrspace(1)* %arrayidx, align 1, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8 [ %1, %cond.true ], [ 0, %entry ]
  store i8 %cond, i8 addrspace(1)* %op_mem, align 1, !tbaa !22
  br i1 %cmp, label %cond.end34.critedge, label %cond.true16

cond.true16:                                      ; preds = %cond.end
  %2 = zext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %2
  %3 = load i8, i8 addrspace(1)* %arrayidx18, align 1, !tbaa !22
  %arrayidx24 = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 1
  store i8 %3, i8 addrspace(1)* %arrayidx24, align 1, !tbaa !22
  br i1 %cmp7, label %cond.end34, label %cond.true28

cond.true28:                                      ; preds = %cond.true16
  %add30 = add nuw nsw i32 %sub, 1
  %4 = zext i32 %add30 to i64
  %arrayidx31 = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %4
  %5 = load i8, i8 addrspace(1)* %arrayidx31, align 1, !tbaa !22
  br label %cond.end34

cond.end34.critedge:                              ; preds = %cond.end
  %arrayidx24.c = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 1
  store i8 0, i8 addrspace(1)* %arrayidx24.c, align 1, !tbaa !22
  br label %cond.end34

cond.end34:                                       ; preds = %cond.end34.critedge, %cond.true16, %cond.true28
  %cond35 = phi i8 [ %5, %cond.true28 ], [ 0, %cond.true16 ], [ 0, %cond.end34.critedge ]
  %arrayidx37 = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 2
  store i8 %cond35, i8 addrspace(1)* %arrayidx37, align 1, !tbaa !22
  br i1 %cmp3, label %cond.end44, label %cond.true39

cond.true39:                                      ; preds = %cond.end34
  %sub40 = add nsw i32 %cindex, -1
  %6 = sext i32 %sub40 to i64
  %arrayidx41 = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %6
  %7 = load i8, i8 addrspace(1)* %arrayidx41, align 1, !tbaa !22
  br label %cond.end44

cond.end44:                                       ; preds = %cond.end34, %cond.true39
  %cond45 = phi i8 [ %7, %cond.true39 ], [ 0, %cond.end34 ]
  %arrayidx47 = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 3
  store i8 %cond45, i8 addrspace(1)* %arrayidx47, align 1, !tbaa !22
  %8 = sext i32 %cindex to i64
  %arrayidx48 = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %8
  %9 = load i8, i8 addrspace(1)* %arrayidx48, align 1, !tbaa !22
  %arrayidx49 = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 4
  store i8 %9, i8 addrspace(1)* %arrayidx49, align 1, !tbaa !22
  br i1 %cmp7, label %cond.end56, label %cond.true51

cond.true51:                                      ; preds = %cond.end44
  %10 = sext i32 %add5 to i64
  %arrayidx53 = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %10
  %11 = load i8, i8 addrspace(1)* %arrayidx53, align 1, !tbaa !22
  br label %cond.end56

cond.end56:                                       ; preds = %cond.end44, %cond.true51
  %cond57 = phi i8 [ %11, %cond.true51 ], [ 0, %cond.end44 ]
  %arrayidx59 = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 5
  store i8 %cond57, i8 addrspace(1)* %arrayidx59, align 1, !tbaa !22
  %or.cond97 = or i1 %cmp1, %cmp3
  br i1 %or.cond97, label %cond.end69, label %cond.true63

cond.true63:                                      ; preds = %cond.end56
  %sub65 = add nsw i32 %add, -1
  %12 = sext i32 %sub65 to i64
  %arrayidx66 = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %12
  %13 = load i8, i8 addrspace(1)* %arrayidx66, align 1, !tbaa !22
  br label %cond.end69

cond.end69:                                       ; preds = %cond.end56, %cond.true63
  %cond70 = phi i8 [ %13, %cond.true63 ], [ 0, %cond.end56 ]
  %arrayidx72 = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 6
  store i8 %cond70, i8 addrspace(1)* %arrayidx72, align 1, !tbaa !22
  br i1 %cmp1, label %cond.end92.critedge, label %cond.true74

cond.true74:                                      ; preds = %cond.end69
  %14 = sext i32 %add to i64
  %arrayidx76 = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %14
  %15 = load i8, i8 addrspace(1)* %arrayidx76, align 1, !tbaa !22
  %arrayidx82 = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 7
  store i8 %15, i8 addrspace(1)* %arrayidx82, align 1, !tbaa !22
  br i1 %cmp7, label %cond.end92, label %cond.true86

cond.true86:                                      ; preds = %cond.true74
  %add88 = add nsw i32 %add, 1
  %16 = sext i32 %add88 to i64
  %arrayidx89 = getelementptr inbounds i8, i8 addrspace(1)* %buffer, i64 %16
  %17 = load i8, i8 addrspace(1)* %arrayidx89, align 1, !tbaa !22
  br label %cond.end92

cond.end92.critedge:                              ; preds = %cond.end69
  %arrayidx82.c = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 7
  store i8 0, i8 addrspace(1)* %arrayidx82.c, align 1, !tbaa !22
  br label %cond.end92

cond.end92:                                       ; preds = %cond.end92.critedge, %cond.true74, %cond.true86
  %cond93 = phi i8 [ %17, %cond.true86 ], [ 0, %cond.true74 ], [ 0, %cond.end92.critedge ]
  %arrayidx95 = getelementptr inbounds i8, i8 addrspace(1)* %op_mem, i64 8
  store i8 %cond93, i8 addrspace(1)* %arrayidx95, align 1, !tbaa !22
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly
define protected i32 @convolution(i8 addrspace(1)* nocapture noundef readonly %X, i32 addrspace(1)* nocapture noundef readonly %Y, i32 noundef %c_size) local_unnamed_addr #13 {
entry:
  %cmp10 = icmp sgt i32 %c_size, 0
  br i1 %cmp10, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %sum.0.lcssa

for.body:                                         ; preds = %entry, %for.body
  %i.012 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %sum.011 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %0 = zext i32 %i.012 to i64
  %arrayidx = getelementptr inbounds i8, i8 addrspace(1)* %X, i64 %0
  %1 = load i8, i8 addrspace(1)* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %1 to i32
  %2 = xor i32 %i.012, -1
  %sub1 = add i32 %2, %c_size
  %3 = sext i32 %sub1 to i64
  %arrayidx2 = getelementptr inbounds i32, i32 addrspace(1)* %Y, i64 %3
  %4 = load i32, i32 addrspace(1)* %arrayidx2, align 4, !tbaa !9
  %mul = mul nsw i32 %4, %conv
  %add = add nsw i32 %mul, %sum.011
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %c_size
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !28
}

; Function Attrs: alwaysinline norecurse nounwind
define internal void @.omp_outlined..7(i32* noalias nocapture noundef readonly %.global_tid., i32* noalias nocapture noundef readnone %.bound_tid., i32* nocapture noundef readonly %gray_size, i8 addrspace(1)** nocapture noundef readonly %sobel_h, i8 addrspace(1)** nocapture noundef readonly %sobel_v, i8 addrspace(1)** nocapture noundef readonly %contour_img) #9 {
entry:
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %0 = load i32, i32* %gray_size, align 4, !tbaa !9
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  %sub2 = add nsw i32 %0, -1
  %1 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %.omp.lb, align 4, !tbaa !9
  %2 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  store i32 %sub2, i32* %.omp.ub, align 4, !tbaa !9
  %3 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  store i32 1, i32* %.omp.stride, align 4, !tbaa !9
  %4 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !9
  %5 = load i32, i32* %.global_tid., align 4, !tbaa !9
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %5, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1) #10
  %6 = load i32, i32* %.omp.ub, align 4, !tbaa !9
  %7 = call i32 @llvm.smin.i32(i32 %6, i32 %sub2), !range !27
  store i32 %7, i32* %.omp.ub, align 4, !tbaa !9
  %8 = load i32, i32* %.omp.lb, align 4, !tbaa !9
  %cmp5.not38 = icmp sgt i32 %8, %7
  br i1 %cmp5.not38, label %omp.loop.exit, label %omp.inner.for.body

omp.inner.for.body:                               ; preds = %omp.precond.then, %omp.inner.for.body
  %.omp.iv.039 = phi i32 [ %add19, %omp.inner.for.body ], [ %8, %omp.precond.then ]
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %sobel_h, align 4, !tbaa !13
  %10 = sext i32 %.omp.iv.039 to i64
  %arrayidx = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %10
  %11 = load i8, i8 addrspace(1)* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %11 to i32
  %mul8 = mul nuw nsw i32 %conv, %conv
  %conv9 = sitofp i32 %mul8 to float
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %sobel_v, align 4, !tbaa !13
  %arrayidx10 = getelementptr inbounds i8, i8 addrspace(1)* %12, i64 %10
  %13 = load i8, i8 addrspace(1)* %arrayidx10, align 1, !tbaa !22
  %conv11 = zext i8 %13 to i32
  %mul14 = mul nuw nsw i32 %conv11, %conv11
  %conv15 = sitofp i32 %mul14 to float
  %add16 = fadd float %conv9, %conv15
  %14 = bitcast float %add16 to i32
  %shr.i = ashr i32 %14, 1
  %add.i = add nsw i32 %shr.i, 532365312
  %15 = bitcast i32 %add.i to float
  %conv17 = fptoui float %15 to i8
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %contour_img, align 4, !tbaa !13
  %arrayidx18 = getelementptr inbounds i8, i8 addrspace(1)* %16, i64 %10
  store i8 %conv17, i8 addrspace(1)* %arrayidx18, align 1, !tbaa !22
  %add19 = add nsw i32 %.omp.iv.039, 1
  %17 = load i32, i32* %.omp.ub, align 4, !tbaa !9
  %cmp5.not.not = icmp slt i32 %.omp.iv.039, %17
  br i1 %cmp5.not.not, label %omp.inner.for.body, label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.body, %omp.precond.then
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define protected float @sqrt_approx(float noundef %f) local_unnamed_addr #14 {
entry:
  %0 = bitcast float %f to i32
  %shr = ashr i32 %0, 1
  %add = add nsw i32 %shr, 532365312
  %1 = bitcast i32 %add to float
  ret float %1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p1i8.i32(i8 addrspace(1)* nocapture writeonly, i8, i32, i1 immarg) #15

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

attributes #0 = { alwaysinline convergent norecurse nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { convergent nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #3 = { convergent inlinehint nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #4 = { convergent "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #7 = { convergent noinline norecurse nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #8 = { convergent noinline nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #9 = { alwaysinline norecurse nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #10 = { nounwind }
attributes #11 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #13 = { argmemonly nofree norecurse nosync nounwind readonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+d,+f,+m,+relax,+xdma,-save-restore" }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { convergent nounwind }
attributes #18 = { convergent }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 2049, i32 19533683, !"main", i32 109, i32 1}
!1 = !{i32 0, i32 2049, i32 19533683, !"main", i32 87, i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 1, !"target-abi", !"ilp32d"}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 7, !"openmp-device", i32 50}
!6 = !{i32 1, !"SmallDataLimit", i32 8}
!7 = !{!"clang version 15.0.0 (git@iis-git.ee.ethz.ch:iis-compilers/llvm-project.git dc4e635bebcc2811b0a07f4f044c766cab3b7ca5)"}
!8 = !{i64 1797}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !11, i64 0}
!15 = !{i64 2147795289, i64 2147794225, i64 2147794339, i64 2147794511, i64 2147794565}
!16 = !{i64 2147796941, i64 2147796038, i64 2147796152, i64 2147796323, i64 2147796378}
!17 = !{i64 2147798832, i64 2147797768, i64 2147797882, i64 2147798054, i64 2147798108}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !11, i64 0}
!20 = !{i64 2147800547, i64 2147799644, i64 2147799758, i64 2147799929, i64 2147799984}
!21 = !{i64 2147802480, i64 2147801427, i64 2147801541, i64 2147801713, i64 2147801767}
!22 = !{!11, !11, i64 0}
!23 = !{i64 2147804174, i64 2147803280, i64 2147803394, i64 2147803565, i64 2147803620}
!24 = !{i32 0, i32 -1}
!25 = !{!26}
!26 = !{i64 2, i64 -1, i64 -1, i1 true}
!27 = !{i32 -2147483648, i32 2147483647}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-riscv32-hero-hero1-elf

; __CLANG_OFFLOAD_BUNDLE____START__ host-riscv64-hero-linux-gnu
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

; __CLANG_OFFLOAD_BUNDLE____END__ host-riscv64-hero-linux-gnu
