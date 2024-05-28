/home/soc_master/ex_single_core/2024/v1.0.16-pulp-riscv-gcc-centos-7/bin/riscv32-unknown-elf-objdump -Mmarch=rv32imfcxpulpv2 /home/soc_12fs24/ex01_socdaml/dot_product/build/pulpissimo/test/test -d

/home/soc_12fs24/ex01_socdaml/dot_product/build/pulpissimo/test/test:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	0ec0006f          	j	1c0080ec <__rt_illegal_instr>
1c008004:	0900006f          	j	1c008094 <__rt_no_irq_handler>
1c008008:	08c0006f          	j	1c008094 <__rt_no_irq_handler>
1c00800c:	0880006f          	j	1c008094 <__rt_no_irq_handler>
1c008010:	0840006f          	j	1c008094 <__rt_no_irq_handler>
1c008014:	0800006f          	j	1c008094 <__rt_no_irq_handler>
1c008018:	07c0006f          	j	1c008094 <__rt_no_irq_handler>
1c00801c:	0780006f          	j	1c008094 <__rt_no_irq_handler>
1c008020:	0740006f          	j	1c008094 <__rt_no_irq_handler>
1c008024:	0700006f          	j	1c008094 <__rt_no_irq_handler>
1c008028:	06c0006f          	j	1c008094 <__rt_no_irq_handler>
1c00802c:	0680006f          	j	1c008094 <__rt_no_irq_handler>
1c008030:	0640006f          	j	1c008094 <__rt_no_irq_handler>
1c008034:	0600006f          	j	1c008094 <__rt_no_irq_handler>
1c008038:	05c0006f          	j	1c008094 <__rt_no_irq_handler>
1c00803c:	0580006f          	j	1c008094 <__rt_no_irq_handler>
1c008040:	0540006f          	j	1c008094 <__rt_no_irq_handler>
1c008044:	0500006f          	j	1c008094 <__rt_no_irq_handler>
1c008048:	04c0006f          	j	1c008094 <__rt_no_irq_handler>
1c00804c:	0480006f          	j	1c008094 <__rt_no_irq_handler>
1c008050:	0440006f          	j	1c008094 <__rt_no_irq_handler>
1c008054:	0400006f          	j	1c008094 <__rt_no_irq_handler>
1c008058:	03c0006f          	j	1c008094 <__rt_no_irq_handler>
1c00805c:	0380006f          	j	1c008094 <__rt_no_irq_handler>
1c008060:	0340006f          	j	1c008094 <__rt_no_irq_handler>
1c008064:	0300006f          	j	1c008094 <__rt_no_irq_handler>
1c008068:	02c0006f          	j	1c008094 <__rt_no_irq_handler>
1c00806c:	0280006f          	j	1c008094 <__rt_no_irq_handler>
1c008070:	0240006f          	j	1c008094 <__rt_no_irq_handler>
1c008074:	0200006f          	j	1c008094 <__rt_no_irq_handler>
1c008078:	01c0006f          	j	1c008094 <__rt_no_irq_handler>
1c00807c:	0180006f          	j	1c008094 <__rt_no_irq_handler>

1c008080 <_start>:
1c008080:	0200006f          	j	1c0080a0 <_entry>
1c008084:	0680006f          	j	1c0080ec <__rt_illegal_instr>
	...

1c008090 <__rt_debug_struct_ptr>:
1c008090:	0db4                	addi	a3,sp,728
1c008092:	1c00                	addi	s0,sp,560

1c008094 <__rt_no_irq_handler>:
1c008094:	0000006f          	j	1c008094 <__rt_no_irq_handler>

1c008098 <__rt_semihosting_call>:
1c008098:	00100073          	ebreak
1c00809c:	00008067          	ret

Disassembly of section .text:

1c0080a0 <_entry>:
1c0080a0:	7a101073          	csrw	pcmr,zero
1c0080a4:	ffff9297          	auipc	t0,0xffff9
1c0080a8:	dec28293          	addi	t0,t0,-532 # 1c000e90 <_edata>
1c0080ac:	ffff9317          	auipc	t1,0xffff9
1c0080b0:	69430313          	addi	t1,t1,1684 # 1c001740 <__l2_priv0_end>
1c0080b4:	0002a023          	sw	zero,0(t0)
1c0080b8:	0291                	addi	t0,t0,4
1c0080ba:	fe62ede3          	bltu	t0,t1,1c0080b4 <_entry+0x14>
1c0080be:	ffff9117          	auipc	sp,0xffff9
1c0080c2:	cc210113          	addi	sp,sp,-830 # 1c000d80 <stack>
1c0080c6:	6ea000ef          	jal	ra,1c0087b0 <__rt_init>
1c0080ca:	00000513          	li	a0,0
1c0080ce:	00000593          	li	a1,0
1c0080d2:	00000397          	auipc	t2,0x0
1c0080d6:	26438393          	addi	t2,t2,612 # 1c008336 <main>
1c0080da:	000380e7          	jalr	t2
1c0080de:	842a                	mv	s0,a0
1c0080e0:	7a6000ef          	jal	ra,1c008886 <__rt_deinit>
1c0080e4:	8522                	mv	a0,s0
1c0080e6:	6e6010ef          	jal	ra,1c0097cc <exit>

1c0080ea <_fini>:
1c0080ea:	8082                	ret

1c0080ec <__rt_illegal_instr>:
1c0080ec:	fe112e23          	sw	ra,-4(sp)
1c0080f0:	fea12c23          	sw	a0,-8(sp)
1c0080f4:	00001517          	auipc	a0,0x1
1c0080f8:	81050513          	addi	a0,a0,-2032 # 1c008904 <__rt_handle_illegal_instr>
1c0080fc:	010000ef          	jal	ra,1c00810c <__rt_call_c_function>
1c008100:	ffc12083          	lw	ra,-4(sp)
1c008104:	ff812503          	lw	a0,-8(sp)
1c008108:	30200073          	mret

1c00810c <__rt_call_c_function>:
1c00810c:	7119                	addi	sp,sp,-128
1c00810e:	c006                	sw	ra,0(sp)
1c008110:	c20e                	sw	gp,4(sp)
1c008112:	c412                	sw	tp,8(sp)
1c008114:	c616                	sw	t0,12(sp)
1c008116:	c81a                	sw	t1,16(sp)
1c008118:	ca1e                	sw	t2,20(sp)
1c00811a:	ce2e                	sw	a1,28(sp)
1c00811c:	d032                	sw	a2,32(sp)
1c00811e:	d236                	sw	a3,36(sp)
1c008120:	d43a                	sw	a4,40(sp)
1c008122:	d63e                	sw	a5,44(sp)
1c008124:	d842                	sw	a6,48(sp)
1c008126:	da46                	sw	a7,52(sp)
1c008128:	dc72                	sw	t3,56(sp)
1c00812a:	de76                	sw	t4,60(sp)
1c00812c:	c0fa                	sw	t5,64(sp)
1c00812e:	c6fe                	sw	t6,76(sp)
1c008130:	000500e7          	jalr	a0
1c008134:	4082                	lw	ra,0(sp)
1c008136:	4192                	lw	gp,4(sp)
1c008138:	4222                	lw	tp,8(sp)
1c00813a:	42b2                	lw	t0,12(sp)
1c00813c:	4342                	lw	t1,16(sp)
1c00813e:	43d2                	lw	t2,20(sp)
1c008140:	45f2                	lw	a1,28(sp)
1c008142:	5602                	lw	a2,32(sp)
1c008144:	5692                	lw	a3,36(sp)
1c008146:	5722                	lw	a4,40(sp)
1c008148:	57b2                	lw	a5,44(sp)
1c00814a:	5842                	lw	a6,48(sp)
1c00814c:	58d2                	lw	a7,52(sp)
1c00814e:	5e62                	lw	t3,56(sp)
1c008150:	5ef2                	lw	t4,60(sp)
1c008152:	4f06                	lw	t5,64(sp)
1c008154:	4fb6                	lw	t6,76(sp)
1c008156:	6109                	addi	sp,sp,128
1c008158:	8082                	ret

1c00815a <udma_event_handler>:
1c00815a:	00157413          	andi	s0,a0,1
1c00815e:	00155613          	srli	a2,a0,0x1
1c008162:	8e41                	or	a2,a2,s0
1c008164:	e3ff8417          	auipc	s0,0xe3ff8
1c008168:	ecc40413          	addi	s0,s0,-308 # 30 <periph_channels>
1c00816c:	00561493          	slli	s1,a2,0x5
1c008170:	94a2                	add	s1,s1,s0
1c008172:	4080                	lw	s0,0(s1)
1c008174:	448c                	lw	a1,8(s1)
1c008176:	06040163          	beqz	s0,1c0081d8 <__rt_udma_no_copy>
1c00817a:	4c50                	lw	a2,28(s0)
1c00817c:	4848                	lw	a0,20(s0)
1c00817e:	04061b63          	bnez	a2,1c0081d4 <dmaCmd>
1c008182:	c088                	sw	a0,0(s1)
1c008184:	4448                	lw	a0,12(s0)
1c008186:	e52d                	bnez	a0,1c0081f0 <handle_special_end>

1c008188 <resume_after_special_end>:
1c008188:	02058b63          	beqz	a1,1c0081be <checkTask>
1c00818c:	4990                	lw	a2,16(a1)
1c00818e:	49c8                	lw	a0,20(a1)
1c008190:	c611                	beqz	a2,1c00819c <__rt_udma_call_enqueue_callback_resume>
1c008192:	00000497          	auipc	s1,0x0
1c008196:	00a48493          	addi	s1,s1,10 # 1c00819c <__rt_udma_call_enqueue_callback_resume>
1c00819a:	8602                	jr	a2

1c00819c <__rt_udma_call_enqueue_callback_resume>:
1c00819c:	44d0                	lw	a2,12(s1)
1c00819e:	c488                	sw	a0,8(s1)
1c0081a0:	4188                	lw	a0,0(a1)
1c0081a2:	41c4                	lw	s1,4(a1)
1c0081a4:	c208                	sw	a0,0(a2)
1c0081a6:	c244                	sw	s1,4(a2)
1c0081a8:	45c4                	lw	s1,12(a1)
1c0081aa:	88bd                	andi	s1,s1,15
1c0081ac:	4515                	li	a0,5
1c0081ae:	00a4c663          	blt	s1,a0,1c0081ba <dual>
1c0081b2:	0064a463          	p.beqimm	s1,6,1c0081ba <dual>
1c0081b6:	0074a263          	p.beqimm	s1,7,1c0081ba <dual>

1c0081ba <dual>:
1c0081ba:	4588                	lw	a0,8(a1)
1c0081bc:	c608                	sw	a0,8(a2)

1c0081be <checkTask>:
1c0081be:	4c0c                	lw	a1,24(s0)
1c0081c0:	00000497          	auipc	s1,0x0
1c0081c4:	0ba48493          	addi	s1,s1,186 # 1c00827a <__rt_fc_socevents_handler_exit>
1c0081c8:	00058463          	beqz	a1,1c0081d0 <checkTask+0x12>
1c0081cc:	0be0006f          	j	1c00828a <__rt_event_enqueue>
1c0081d0:	0aa0006f          	j	1c00827a <__rt_fc_socevents_handler_exit>

1c0081d4 <dmaCmd>:
1c0081d4:	0a60006f          	j	1c00827a <__rt_fc_socevents_handler_exit>

1c0081d8 <__rt_udma_no_copy>:
1c0081d8:	00555593          	srli	a1,a0,0x5
1c0081dc:	058a                	slli	a1,a1,0x2
1c0081de:	2b05a603          	lw	a2,688(a1)
1c0081e2:	897d                	andi	a0,a0,31
1c0081e4:	80a64633          	p.bsetr	a2,a2,a0
1c0081e8:	2ac5a823          	sw	a2,688(a1)
1c0081ec:	08e0006f          	j	1c00827a <__rt_fc_socevents_handler_exit>

1c0081f0 <handle_special_end>:
1c0081f0:	00352563          	p.beqimm	a0,3,1c0081fa <i2c_step1>
1c0081f4:	02452163          	p.beqimm	a0,4,1c008216 <i2c_step2>
1c0081f8:	bf41                	j	1c008188 <resume_after_special_end>

1c0081fa <i2c_step1>:
1c0081fa:	5408                	lw	a0,40(s0)
1c0081fc:	c448                	sw	a0,12(s0)
1c0081fe:	4088                	lw	a0,0(s1)
1c008200:	c848                	sw	a0,20(s0)
1c008202:	c080                	sw	s0,0(s1)
1c008204:	44d0                	lw	a2,12(s1)
1c008206:	4008                	lw	a0,0(s0)
1c008208:	c208                	sw	a0,0(a2)
1c00820a:	5048                	lw	a0,36(s0)
1c00820c:	c248                	sw	a0,4(a2)
1c00820e:	4408                	lw	a0,8(s0)
1c008210:	c608                	sw	a0,8(a2)
1c008212:	0680006f          	j	1c00827a <__rt_fc_socevents_handler_exit>

1c008216 <i2c_step2>:
1c008216:	00042623          	sw	zero,12(s0)
1c00821a:	4088                	lw	a0,0(s1)
1c00821c:	c848                	sw	a0,20(s0)
1c00821e:	c080                	sw	s0,0(s1)
1c008220:	02000613          	li	a2,32
1c008224:	c070                	sw	a2,68(s0)
1c008226:	44d0                	lw	a2,12(s1)
1c008228:	04440513          	addi	a0,s0,68
1c00822c:	c208                	sw	a0,0(a2)
1c00822e:	4505                	li	a0,1
1c008230:	c248                	sw	a0,4(a2)
1c008232:	4541                	li	a0,16
1c008234:	c608                	sw	a0,8(a2)
1c008236:	0440006f          	j	1c00827a <__rt_fc_socevents_handler_exit>

1c00823a <__rt_fc_socevents_handler>:
1c00823a:	7119                	addi	sp,sp,-128
1c00823c:	c022                	sw	s0,0(sp)
1c00823e:	c226                	sw	s1,4(sp)
1c008240:	c42a                	sw	a0,8(sp)
1c008242:	c62e                	sw	a1,12(sp)
1c008244:	c832                	sw	a2,16(sp)
1c008246:	1a10a437          	lui	s0,0x1a10a
1c00824a:	80040413          	addi	s0,s0,-2048 # 1a109800 <__rt_udma_callback_data+0x1a109508>
1c00824e:	5048                	lw	a0,36(s0)
1c008250:	02800493          	li	s1,40
1c008254:	00955963          	ble	s1,a0,1c008266 <__rt_fc_socevents_register>
1c008258:	ffc57613          	andi	a2,a0,-4
1c00825c:	2d062583          	lw	a1,720(a2)
1c008260:	2f862403          	lw	s0,760(a2)
1c008264:	8582                	jr	a1

1c008266 <__rt_fc_socevents_register>:
1c008266:	00555593          	srli	a1,a0,0x5
1c00826a:	058a                	slli	a1,a1,0x2
1c00826c:	2b05a603          	lw	a2,688(a1)
1c008270:	897d                	andi	a0,a0,31
1c008272:	80a64633          	p.bsetr	a2,a2,a0
1c008276:	2ac5a823          	sw	a2,688(a1)

1c00827a <__rt_fc_socevents_handler_exit>:
1c00827a:	4402                	lw	s0,0(sp)
1c00827c:	4492                	lw	s1,4(sp)
1c00827e:	4522                	lw	a0,8(sp)
1c008280:	45b2                	lw	a1,12(sp)
1c008282:	4642                	lw	a2,16(sp)
1c008284:	6109                	addi	sp,sp,128
1c008286:	30200073          	mret

1c00828a <__rt_event_enqueue>:
1c00828a:	0035f513          	andi	a0,a1,3
1c00828e:	02051063          	bnez	a0,1c0082ae <__rt_handle_special_event>
1c008292:	e3ff8517          	auipc	a0,0xe3ff8
1c008296:	d8a50513          	addi	a0,a0,-630 # 1c <__rt_sched>
1c00829a:	0005ac23          	sw	zero,24(a1)
1c00829e:	4110                	lw	a2,0(a0)
1c0082a0:	c601                	beqz	a2,1c0082a8 <__rt_no_first>
1c0082a2:	4150                	lw	a2,4(a0)
1c0082a4:	ce0c                	sw	a1,24(a2)
1c0082a6:	a011                	j	1c0082aa <__rt_common>

1c0082a8 <__rt_no_first>:
1c0082a8:	c10c                	sw	a1,0(a0)

1c0082aa <__rt_common>:
1c0082aa:	c14c                	sw	a1,4(a0)

1c0082ac <enqueue_end>:
1c0082ac:	8482                	jr	s1

1c0082ae <__rt_handle_special_event>:
1c0082ae:	5571                	li	a0,-4
1c0082b0:	8de9                	and	a1,a1,a0
1c0082b2:	4190                	lw	a2,0(a1)
1c0082b4:	41c8                	lw	a0,4(a1)
1c0082b6:	a82d                	j	1c0082f0 <__rt_call_external_c_function>

1c0082b8 <__rt_bridge_enqueue_event>:
1c0082b8:	fe812e23          	sw	s0,-4(sp)
1c0082bc:	fe912c23          	sw	s1,-8(sp)
1c0082c0:	fea12a23          	sw	a0,-12(sp)
1c0082c4:	feb12823          	sw	a1,-16(sp)
1c0082c8:	fec12623          	sw	a2,-20(sp)
1c0082cc:	00001617          	auipc	a2,0x1
1c0082d0:	80860613          	addi	a2,a2,-2040 # 1c008ad4 <__rt_bridge_handle_notif>
1c0082d4:	01c004ef          	jal	s1,1c0082f0 <__rt_call_external_c_function>
1c0082d8:	ffc12403          	lw	s0,-4(sp)
1c0082dc:	ff812483          	lw	s1,-8(sp)
1c0082e0:	ff412503          	lw	a0,-12(sp)
1c0082e4:	ff012583          	lw	a1,-16(sp)
1c0082e8:	fec12603          	lw	a2,-20(sp)
1c0082ec:	30200073          	mret

1c0082f0 <__rt_call_external_c_function>:
1c0082f0:	7119                	addi	sp,sp,-128
1c0082f2:	c006                	sw	ra,0(sp)
1c0082f4:	c20e                	sw	gp,4(sp)
1c0082f6:	c412                	sw	tp,8(sp)
1c0082f8:	c616                	sw	t0,12(sp)
1c0082fa:	c81a                	sw	t1,16(sp)
1c0082fc:	ca1e                	sw	t2,20(sp)
1c0082fe:	d236                	sw	a3,36(sp)
1c008300:	d43a                	sw	a4,40(sp)
1c008302:	d63e                	sw	a5,44(sp)
1c008304:	d842                	sw	a6,48(sp)
1c008306:	da46                	sw	a7,52(sp)
1c008308:	dc72                	sw	t3,56(sp)
1c00830a:	de76                	sw	t4,60(sp)
1c00830c:	c0fa                	sw	t5,64(sp)
1c00830e:	c6fe                	sw	t6,76(sp)
1c008310:	000600e7          	jalr	a2
1c008314:	4082                	lw	ra,0(sp)
1c008316:	4192                	lw	gp,4(sp)
1c008318:	4222                	lw	tp,8(sp)
1c00831a:	42b2                	lw	t0,12(sp)
1c00831c:	4342                	lw	t1,16(sp)
1c00831e:	43d2                	lw	t2,20(sp)
1c008320:	5692                	lw	a3,36(sp)
1c008322:	5722                	lw	a4,40(sp)
1c008324:	57b2                	lw	a5,44(sp)
1c008326:	5842                	lw	a6,48(sp)
1c008328:	58d2                	lw	a7,52(sp)
1c00832a:	5e62                	lw	t3,56(sp)
1c00832c:	5ef2                	lw	t4,60(sp)
1c00832e:	4f06                	lw	t5,64(sp)
1c008330:	4fb6                	lw	t6,76(sp)
1c008332:	6109                	addi	sp,sp,128
1c008334:	8482                	jr	s1

1c008336 <main>:
1c008336:	1141                	addi	sp,sp,-16
1c008338:	f14027f3          	csrr	a5,mhartid
1c00833c:	c606                	sw	ra,12(sp)
1c00833e:	c422                	sw	s0,8(sp)
1c008340:	c226                	sw	s1,4(sp)
1c008342:	f457b7b3          	p.bclr	a5,a5,26,5
1c008346:	efb5                	bnez	a5,1c0083c2 <main+0x8c>
1c008348:	1c0015b7          	lui	a1,0x1c001
1c00834c:	33858693          	addi	a3,a1,824 # 1c001338 <vecA>
1c008350:	4701                	li	a4,0
1c008352:	3e82d0fb          	lp.setupi	x1,1000,1c00835c <main+0x26>
1c008356:	863a                	mv	a2,a4
1c008358:	00c680ab          	p.sb	a2,1(a3!)
1c00835c:	0705                	addi	a4,a4,1
1c00835e:	1c001637          	lui	a2,0x1c001
1c008362:	f5060693          	addi	a3,a2,-176 # 1c000f50 <vecB>
1c008366:	4705                	li	a4,1
1c008368:	3e82d0fb          	lp.setupi	x1,1000,1c008372 <main+0x3c>
1c00836c:	853a                	mv	a0,a4
1c00836e:	00a680ab          	p.sb	a0,1(a3!)
1c008372:	0705                	addi	a4,a4,1
1c008374:	f5060613          	addi	a2,a2,-176
1c008378:	3e800693          	li	a3,1000
1c00837c:	33858593          	addi	a1,a1,824
1c008380:	4501                	li	a0,0
1c008382:	1c001437          	lui	s0,0x1c001
1c008386:	20a1                	jal	1c0083ce <dotproduct_loopunroll>
1c008388:	e7440413          	addi	s0,s0,-396 # 1c000e74 <GOLDEN_VALUE>
1c00838c:	4010                	lw	a2,0(s0)
1c00838e:	84aa                	mv	s1,a0
1c008390:	02a60263          	beq	a2,a0,1c0083b4 <main+0x7e>
1c008394:	85aa                	mv	a1,a0
1c008396:	1c000537          	lui	a0,0x1c000
1c00839a:	35850513          	addi	a0,a0,856 # 1c000358 <__DTOR_END__>
1c00839e:	52e010ef          	jal	ra,1c0098cc <printf>
1c0083a2:	4008                	lw	a0,0(s0)
1c0083a4:	40b2                	lw	ra,12(sp)
1c0083a6:	4422                	lw	s0,8(sp)
1c0083a8:	8d05                	sub	a0,a0,s1
1c0083aa:	00a03533          	snez	a0,a0
1c0083ae:	4492                	lw	s1,4(sp)
1c0083b0:	0141                	addi	sp,sp,16
1c0083b2:	8082                	ret
1c0083b4:	1c000537          	lui	a0,0x1c000
1c0083b8:	37c50513          	addi	a0,a0,892 # 1c00037c <__DTOR_END__+0x24>
1c0083bc:	3b0010ef          	jal	ra,1c00976c <puts>
1c0083c0:	b7cd                	j	1c0083a2 <main+0x6c>
1c0083c2:	1c001437          	lui	s0,0x1c001
1c0083c6:	4481                	li	s1,0
1c0083c8:	e7440413          	addi	s0,s0,-396 # 1c000e74 <GOLDEN_VALUE>
1c0083cc:	bfd9                	j	1c0083a2 <main+0x6c>

1c0083ce <dotproduct_loopunroll>:
1c0083ce:	1101                	addi	sp,sp,-32
1c0083d0:	cc22                	sw	s0,24(sp)
1c0083d2:	ca26                	sw	s1,20(sp)
1c0083d4:	842a                	mv	s0,a0
1c0083d6:	84ae                	mv	s1,a1
1c0083d8:	4509                	li	a0,2
1c0083da:	04c00593          	li	a1,76
1c0083de:	ce06                	sw	ra,28(sp)
1c0083e0:	c84a                	sw	s2,16(sp)
1c0083e2:	c64e                	sw	s3,12(sp)
1c0083e4:	8932                	mv	s2,a2
1c0083e6:	89b6                	mv	s3,a3
1c0083e8:	c452                	sw	s4,8(sp)
1c0083ea:	2a0d                	jal	1c00851c <rt_alloc>
1c0083ec:	8a2a                	mv	s4,a0
1c0083ee:	2af9                	jal	1c0085cc <rt_perf_init>
1c0083f0:	45fd                	li	a1,31
1c0083f2:	8552                	mv	a0,s4
1c0083f4:	22dd                	jal	1c0085da <rt_perf_conf>
1c0083f6:	477d                	li	a4,31
1c0083f8:	f14027f3          	csrr	a5,mhartid
1c0083fc:	ca5797b3          	p.extractu	a5,a5,5,5
1c008400:	00e79a63          	bne	a5,a4,1c008414 <dotproduct_loopunroll+0x46>
1c008404:	4785                	li	a5,1
1c008406:	1a10b737          	lui	a4,0x1a10b
1c00840a:	02f72023          	sw	a5,32(a4) # 1a10b020 <__rt_udma_callback_data+0x1a10ad28>
1c00840e:	4781                	li	a5,0
1c008410:	79f79073          	csrw	pccr31,a5
1c008414:	f14027f3          	csrr	a5,mhartid
1c008418:	477d                	li	a4,31
1c00841a:	ca5797b3          	p.extractu	a5,a5,5,5
1c00841e:	00e79a63          	bne	a5,a4,1c008432 <dotproduct_loopunroll+0x64>
1c008422:	4785                	li	a5,1
1c008424:	1a10b737          	lui	a4,0x1a10b
1c008428:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__rt_udma_callback_data+0x1a10ad20>
1c00842c:	478d                	li	a5,3
1c00842e:	cc179073          	csrw	0xcc1,a5
1c008432:	468d                	li	a3,3
1c008434:	02d9d6b3          	divu	a3,s3,a3
1c008438:	4781                	li	a5,0
1c00843a:	4701                	li	a4,0
1c00843c:	4501                	li	a0,0
1c00843e:	4801                	li	a6,0
1c008440:	85a6                	mv	a1,s1
1c008442:	864a                	mv	a2,s2
1c008444:	0001                	nop
1c008446:	00c6c07b          	lp.setup	x0,a3,1c00845e <stop_lloop>
1c00844a:	0015c78b          	p.lbu	a5,1(a1!)
1c00844e:	0016470b          	p.lbu	a4,1(a2!)
1c008452:	0015c50b          	p.lbu	a0,1(a1!)
1c008456:	0016480b          	p.lbu	a6,1(a2!)
1c00845a:	42e78433          	p.mac	s0,a5,a4

1c00845e <stop_lloop>:
1c00845e:	43050433          	p.mac	s0,a0,a6
1c008462:	f14027f3          	csrr	a5,mhartid
1c008466:	477d                	li	a4,31
1c008468:	ca5797b3          	p.extractu	a5,a5,5,5
1c00846c:	00e79963          	bne	a5,a4,1c00847e <stop_lloop+0x20>
1c008470:	1a10b7b7          	lui	a5,0x1a10b
1c008474:	0007a023          	sw	zero,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c008478:	4781                	li	a5,0
1c00847a:	cc179073          	csrw	0xcc1,a5
1c00847e:	8552                	mv	a0,s4
1c008480:	228d                	jal	1c0085e2 <rt_perf_save>
1c008482:	014a2783          	lw	a5,20(s4)
1c008486:	010a2703          	lw	a4,16(s4)
1c00848a:	00ca2683          	lw	a3,12(s4)
1c00848e:	008a2603          	lw	a2,8(s4)
1c008492:	004a2583          	lw	a1,4(s4)
1c008496:	1c000537          	lui	a0,0x1c000
1c00849a:	39850513          	addi	a0,a0,920 # 1c000398 <__DTOR_END__+0x40>
1c00849e:	42e010ef          	jal	ra,1c0098cc <printf>
1c0084a2:	8522                	mv	a0,s0
1c0084a4:	40f2                	lw	ra,28(sp)
1c0084a6:	4462                	lw	s0,24(sp)
1c0084a8:	44d2                	lw	s1,20(sp)
1c0084aa:	4942                	lw	s2,16(sp)
1c0084ac:	49b2                	lw	s3,12(sp)
1c0084ae:	4a22                	lw	s4,8(sp)
1c0084b0:	6105                	addi	sp,sp,32
1c0084b2:	8082                	ret

1c0084b4 <rt_user_alloc_init>:
1c0084b4:	00758793          	addi	a5,a1,7
1c0084b8:	c407b7b3          	p.bclr	a5,a5,2,0
1c0084bc:	40b785b3          	sub	a1,a5,a1
1c0084c0:	c11c                	sw	a5,0(a0)
1c0084c2:	8e0d                	sub	a2,a2,a1
1c0084c4:	00c05763          	blez	a2,1c0084d2 <rt_user_alloc_init+0x1e>
1c0084c8:	c4063633          	p.bclr	a2,a2,2,0
1c0084cc:	c390                	sw	a2,0(a5)
1c0084ce:	0007a223          	sw	zero,4(a5)
1c0084d2:	8082                	ret

1c0084d4 <rt_user_alloc>:
1c0084d4:	411c                	lw	a5,0(a0)
1c0084d6:	059d                	addi	a1,a1,7
1c0084d8:	c405b5b3          	p.bclr	a1,a1,2,0
1c0084dc:	4701                	li	a4,0
1c0084de:	cb89                	beqz	a5,1c0084f0 <rt_user_alloc+0x1c>
1c0084e0:	4394                	lw	a3,0(a5)
1c0084e2:	43d0                	lw	a2,4(a5)
1c0084e4:	00b6c863          	blt	a3,a1,1c0084f4 <rt_user_alloc+0x20>
1c0084e8:	00b69b63          	bne	a3,a1,1c0084fe <rt_user_alloc+0x2a>
1c0084ec:	c719                	beqz	a4,1c0084fa <rt_user_alloc+0x26>
1c0084ee:	c350                	sw	a2,4(a4)
1c0084f0:	853e                	mv	a0,a5
1c0084f2:	8082                	ret
1c0084f4:	873e                	mv	a4,a5
1c0084f6:	87b2                	mv	a5,a2
1c0084f8:	b7dd                	j	1c0084de <rt_user_alloc+0xa>
1c0084fa:	c110                	sw	a2,0(a0)
1c0084fc:	bfd5                	j	1c0084f0 <rt_user_alloc+0x1c>
1c0084fe:	00b78833          	add	a6,a5,a1
1c008502:	40b685b3          	sub	a1,a3,a1
1c008506:	00b82023          	sw	a1,0(a6)
1c00850a:	00c82223          	sw	a2,4(a6)
1c00850e:	c701                	beqz	a4,1c008516 <rt_user_alloc+0x42>
1c008510:	01072223          	sw	a6,4(a4)
1c008514:	bff1                	j	1c0084f0 <rt_user_alloc+0x1c>
1c008516:	01052023          	sw	a6,0(a0)
1c00851a:	bfd9                	j	1c0084f0 <rt_user_alloc+0x1c>

1c00851c <rt_alloc>:
1c00851c:	1101                	addi	sp,sp,-32
1c00851e:	c84a                	sw	s2,16(sp)
1c008520:	1c001937          	lui	s2,0x1c001
1c008524:	cc22                	sw	s0,24(sp)
1c008526:	ca26                	sw	s1,20(sp)
1c008528:	c64e                	sw	s3,12(sp)
1c00852a:	ce06                	sw	ra,28(sp)
1c00852c:	842a                	mv	s0,a0
1c00852e:	89ae                	mv	s3,a1
1c008530:	448d                	li	s1,3
1c008532:	72090913          	addi	s2,s2,1824 # 1c001720 <__rt_alloc_l2>
1c008536:	00241513          	slli	a0,s0,0x2
1c00853a:	85ce                	mv	a1,s3
1c00853c:	954a                	add	a0,a0,s2
1c00853e:	3f59                	jal	1c0084d4 <rt_user_alloc>
1c008540:	e519                	bnez	a0,1c00854e <rt_alloc+0x32>
1c008542:	0405                	addi	s0,s0,1
1c008544:	00343363          	p.bneimm	s0,3,1c00854a <rt_alloc+0x2e>
1c008548:	4401                	li	s0,0
1c00854a:	14fd                	addi	s1,s1,-1
1c00854c:	f4ed                	bnez	s1,1c008536 <rt_alloc+0x1a>
1c00854e:	40f2                	lw	ra,28(sp)
1c008550:	4462                	lw	s0,24(sp)
1c008552:	44d2                	lw	s1,20(sp)
1c008554:	4942                	lw	s2,16(sp)
1c008556:	49b2                	lw	s3,12(sp)
1c008558:	6105                	addi	sp,sp,32
1c00855a:	8082                	ret

1c00855c <__rt_allocs_init>:
1c00855c:	1141                	addi	sp,sp,-16
1c00855e:	1c0015b7          	lui	a1,0x1c001
1c008562:	c606                	sw	ra,12(sp)
1c008564:	74058793          	addi	a5,a1,1856 # 1c001740 <__l2_priv0_end>
1c008568:	1c008637          	lui	a2,0x1c008
1c00856c:	04c7c863          	blt	a5,a2,1c0085bc <__rt_allocs_init+0x60>
1c008570:	4581                	li	a1,0
1c008572:	4601                	li	a2,0
1c008574:	1c001537          	lui	a0,0x1c001
1c008578:	72050513          	addi	a0,a0,1824 # 1c001720 <__rt_alloc_l2>
1c00857c:	3f25                	jal	1c0084b4 <rt_user_alloc_init>
1c00857e:	1c00a5b7          	lui	a1,0x1c00a
1c008582:	42058793          	addi	a5,a1,1056 # 1c00a420 <__l2_priv1_end>
1c008586:	1c010637          	lui	a2,0x1c010
1c00858a:	02c7cd63          	blt	a5,a2,1c0085c4 <__rt_allocs_init+0x68>
1c00858e:	4581                	li	a1,0
1c008590:	4601                	li	a2,0
1c008592:	1c001537          	lui	a0,0x1c001
1c008596:	72450513          	addi	a0,a0,1828 # 1c001724 <__rt_alloc_l2+0x4>
1c00859a:	3f29                	jal	1c0084b4 <rt_user_alloc_init>
1c00859c:	1c0105b7          	lui	a1,0x1c010
1c0085a0:	40b2                	lw	ra,12(sp)
1c0085a2:	0ec58793          	addi	a5,a1,236 # 1c0100ec <__l2_shared_end>
1c0085a6:	1c080637          	lui	a2,0x1c080
1c0085aa:	1c001537          	lui	a0,0x1c001
1c0085ae:	8e1d                	sub	a2,a2,a5
1c0085b0:	0ec58593          	addi	a1,a1,236
1c0085b4:	72850513          	addi	a0,a0,1832 # 1c001728 <__rt_alloc_l2+0x8>
1c0085b8:	0141                	addi	sp,sp,16
1c0085ba:	bded                	j	1c0084b4 <rt_user_alloc_init>
1c0085bc:	8e1d                	sub	a2,a2,a5
1c0085be:	74058593          	addi	a1,a1,1856
1c0085c2:	bf4d                	j	1c008574 <__rt_allocs_init+0x18>
1c0085c4:	8e1d                	sub	a2,a2,a5
1c0085c6:	42058593          	addi	a1,a1,1056
1c0085ca:	b7e1                	j	1c008592 <__rt_allocs_init+0x36>

1c0085cc <rt_perf_init>:
1c0085cc:	0511                	addi	a0,a0,4
1c0085ce:	012250fb          	lp.setupi	x1,18,1c0085d6 <rt_perf_init+0xa>
1c0085d2:	0005222b          	p.sw	zero,4(a0!)
1c0085d6:	0001                	nop
1c0085d8:	8082                	ret

1c0085da <rt_perf_conf>:
1c0085da:	c10c                	sw	a1,0(a0)
1c0085dc:	cc059073          	csrw	0xcc0,a1
1c0085e0:	8082                	ret

1c0085e2 <rt_perf_save>:
1c0085e2:	4110                	lw	a2,0(a0)
1c0085e4:	7179                	addi	sp,sp,-48
1c0085e6:	f14026f3          	csrr	a3,mhartid
1c0085ea:	8695                	srai	a3,a3,0x5
1c0085ec:	d622                	sw	s0,44(sp)
1c0085ee:	d426                	sw	s1,40(sp)
1c0085f0:	d24a                	sw	s2,36(sp)
1c0085f2:	d04e                	sw	s3,32(sp)
1c0085f4:	ce52                	sw	s4,28(sp)
1c0085f6:	cc56                	sw	s5,24(sp)
1c0085f8:	ca5a                	sw	s6,20(sp)
1c0085fa:	c85e                	sw	s7,16(sp)
1c0085fc:	c662                	sw	s8,12(sp)
1c0085fe:	c466                	sw	s9,8(sp)
1c008600:	4f85                	li	t6,1
1c008602:	f266b6b3          	p.bclr	a3,a3,25,6
1c008606:	42fd                	li	t0,31
1c008608:	43c5                	li	t2,17
1c00860a:	4439                	li	s0,14
1c00860c:	45dd                	li	a1,23
1c00860e:	486d                	li	a6,27
1c008610:	48f5                	li	a7,29
1c008612:	44f9                	li	s1,30
1c008614:	4365                	li	t1,25
1c008616:	4e4d                	li	t3,19
1c008618:	4ed5                	li	t4,21
1c00861a:	4f41                	li	t5,16
1c00861c:	4949                	li	s2,18
1c00861e:	4999                	li	s3,6
1c008620:	4a29                	li	s4,10
1c008622:	4ab1                	li	s5,12
1c008624:	4b21                	li	s6,8
1c008626:	4b89                	li	s7,2
1c008628:	4c11                	li	s8,4
1c00862a:	ee09                	bnez	a2,1c008644 <rt_perf_save+0x62>
1c00862c:	5432                	lw	s0,44(sp)
1c00862e:	54a2                	lw	s1,40(sp)
1c008630:	5912                	lw	s2,36(sp)
1c008632:	5982                	lw	s3,32(sp)
1c008634:	4a72                	lw	s4,28(sp)
1c008636:	4ae2                	lw	s5,24(sp)
1c008638:	4b52                	lw	s6,20(sp)
1c00863a:	4bc2                	lw	s7,16(sp)
1c00863c:	4c32                	lw	s8,12(sp)
1c00863e:	4ca2                	lw	s9,8(sp)
1c008640:	6145                	addi	sp,sp,48
1c008642:	8082                	ret
1c008644:	100617b3          	p.fl1	a5,a2
1c008648:	00ff9733          	sll	a4,t6,a5
1c00864c:	fff74713          	not	a4,a4
1c008650:	8e79                	and	a2,a2,a4
1c008652:	fc569ce3          	bne	a3,t0,1c00862a <rt_perf_save+0x48>
1c008656:	00779d63          	bne	a5,t2,1c008670 <rt_perf_save+0x8e>
1c00865a:	1a10b737          	lui	a4,0x1a10b
1c00865e:	00872703          	lw	a4,8(a4) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008662:	078a                	slli	a5,a5,0x2
1c008664:	97aa                	add	a5,a5,a0
1c008666:	0047ac83          	lw	s9,4(a5)
1c00866a:	9766                	add	a4,a4,s9
1c00866c:	c3d8                	sw	a4,4(a5)
1c00866e:	bf75                	j	1c00862a <rt_perf_save+0x48>
1c008670:	0ee7a763          	p.beqimm	a5,14,1c00875e <rt_perf_save+0x17c>
1c008674:	04f44863          	blt	s0,a5,1c0086c4 <rt_perf_save+0xe2>
1c008678:	0c67a163          	p.beqimm	a5,6,1c00873a <rt_perf_save+0x158>
1c00867c:	02f9c263          	blt	s3,a5,1c0086a0 <rt_perf_save+0xbe>
1c008680:	0a27a463          	p.beqimm	a5,2,1c008728 <rt_perf_save+0x146>
1c008684:	00fbc763          	blt	s7,a5,1c008692 <rt_perf_save+0xb0>
1c008688:	cbd1                	beqz	a5,1c00871c <rt_perf_save+0x13a>
1c00868a:	0817ac63          	p.beqimm	a5,1,1c008722 <rt_perf_save+0x140>
1c00868e:	4701                	li	a4,0
1c008690:	bfc9                	j	1c008662 <rt_perf_save+0x80>
1c008692:	0a47a163          	p.beqimm	a5,4,1c008734 <rt_perf_save+0x152>
1c008696:	08fc5c63          	ble	a5,s8,1c00872e <rt_perf_save+0x14c>
1c00869a:	78502773          	csrr	a4,pccr5
1c00869e:	b7d1                	j	1c008662 <rt_perf_save+0x80>
1c0086a0:	0aa7a663          	p.beqimm	a5,10,1c00874c <rt_perf_save+0x16a>
1c0086a4:	00fa4963          	blt	s4,a5,1c0086b6 <rt_perf_save+0xd4>
1c0086a8:	0887af63          	p.beqimm	a5,8,1c008746 <rt_perf_save+0x164>
1c0086ac:	08fb5a63          	ble	a5,s6,1c008740 <rt_perf_save+0x15e>
1c0086b0:	78902773          	csrr	a4,pccr9
1c0086b4:	b77d                	j	1c008662 <rt_perf_save+0x80>
1c0086b6:	0ac7a163          	p.beqimm	a5,12,1c008758 <rt_perf_save+0x176>
1c0086ba:	08fadc63          	ble	a5,s5,1c008752 <rt_perf_save+0x170>
1c0086be:	78d02773          	csrr	a4,pccr13
1c0086c2:	b745                	j	1c008662 <rt_perf_save+0x80>
1c0086c4:	0ab78f63          	beq	a5,a1,1c008782 <rt_perf_save+0x1a0>
1c0086c8:	02f5c663          	blt	a1,a5,1c0086f4 <rt_perf_save+0x112>
1c0086cc:	0bc78263          	beq	a5,t3,1c008770 <rt_perf_save+0x18e>
1c0086d0:	00fe4b63          	blt	t3,a5,1c0086e6 <rt_perf_save+0x104>
1c0086d4:	09e78b63          	beq	a5,t5,1c00876a <rt_perf_save+0x188>
1c0086d8:	09e7c663          	blt	a5,t5,1c008764 <rt_perf_save+0x182>
1c0086dc:	fb2799e3          	bne	a5,s2,1c00868e <rt_perf_save+0xac>
1c0086e0:	79202773          	csrr	a4,pccr18
1c0086e4:	bfbd                	j	1c008662 <rt_perf_save+0x80>
1c0086e6:	09d78b63          	beq	a5,t4,1c00877c <rt_perf_save+0x19a>
1c0086ea:	08fed663          	ble	a5,t4,1c008776 <rt_perf_save+0x194>
1c0086ee:	79602773          	csrr	a4,pccr22
1c0086f2:	bf85                	j	1c008662 <rt_perf_save+0x80>
1c0086f4:	0b078063          	beq	a5,a6,1c008794 <rt_perf_save+0x1b2>
1c0086f8:	00f84963          	blt	a6,a5,1c00870a <rt_perf_save+0x128>
1c0086fc:	08678963          	beq	a5,t1,1c00878e <rt_perf_save+0x1ac>
1c008700:	08f35463          	ble	a5,t1,1c008788 <rt_perf_save+0x1a6>
1c008704:	79a02773          	csrr	a4,pccr26
1c008708:	bfa9                	j	1c008662 <rt_perf_save+0x80>
1c00870a:	09178b63          	beq	a5,a7,1c0087a0 <rt_perf_save+0x1be>
1c00870e:	0917c663          	blt	a5,a7,1c00879a <rt_perf_save+0x1b8>
1c008712:	f6979ee3          	bne	a5,s1,1c00868e <rt_perf_save+0xac>
1c008716:	79e02773          	csrr	a4,pccr30
1c00871a:	b7a1                	j	1c008662 <rt_perf_save+0x80>
1c00871c:	78002773          	csrr	a4,pccr0
1c008720:	b789                	j	1c008662 <rt_perf_save+0x80>
1c008722:	78102773          	csrr	a4,pccr1
1c008726:	bf35                	j	1c008662 <rt_perf_save+0x80>
1c008728:	78202773          	csrr	a4,pccr2
1c00872c:	bf1d                	j	1c008662 <rt_perf_save+0x80>
1c00872e:	78302773          	csrr	a4,pccr3
1c008732:	bf05                	j	1c008662 <rt_perf_save+0x80>
1c008734:	78402773          	csrr	a4,pccr4
1c008738:	b72d                	j	1c008662 <rt_perf_save+0x80>
1c00873a:	78602773          	csrr	a4,pccr6
1c00873e:	b715                	j	1c008662 <rt_perf_save+0x80>
1c008740:	78702773          	csrr	a4,pccr7
1c008744:	bf39                	j	1c008662 <rt_perf_save+0x80>
1c008746:	78802773          	csrr	a4,pccr8
1c00874a:	bf21                	j	1c008662 <rt_perf_save+0x80>
1c00874c:	78a02773          	csrr	a4,pccr10
1c008750:	bf09                	j	1c008662 <rt_perf_save+0x80>
1c008752:	78b02773          	csrr	a4,pccr11
1c008756:	b731                	j	1c008662 <rt_perf_save+0x80>
1c008758:	78c02773          	csrr	a4,pccr12
1c00875c:	b719                	j	1c008662 <rt_perf_save+0x80>
1c00875e:	78e02773          	csrr	a4,pccr14
1c008762:	b701                	j	1c008662 <rt_perf_save+0x80>
1c008764:	78f02773          	csrr	a4,pccr15
1c008768:	bded                	j	1c008662 <rt_perf_save+0x80>
1c00876a:	79002773          	csrr	a4,pccr16
1c00876e:	bdd5                	j	1c008662 <rt_perf_save+0x80>
1c008770:	79302773          	csrr	a4,pccr19
1c008774:	b5fd                	j	1c008662 <rt_perf_save+0x80>
1c008776:	79402773          	csrr	a4,pccr20
1c00877a:	b5e5                	j	1c008662 <rt_perf_save+0x80>
1c00877c:	79502773          	csrr	a4,pccr21
1c008780:	b5cd                	j	1c008662 <rt_perf_save+0x80>
1c008782:	79702773          	csrr	a4,pccr23
1c008786:	bdf1                	j	1c008662 <rt_perf_save+0x80>
1c008788:	79802773          	csrr	a4,pccr24
1c00878c:	bdd9                	j	1c008662 <rt_perf_save+0x80>
1c00878e:	79902773          	csrr	a4,pccr25
1c008792:	bdc1                	j	1c008662 <rt_perf_save+0x80>
1c008794:	79b02773          	csrr	a4,pccr27
1c008798:	b5e9                	j	1c008662 <rt_perf_save+0x80>
1c00879a:	79c02773          	csrr	a4,pccr28
1c00879e:	b5d1                	j	1c008662 <rt_perf_save+0x80>
1c0087a0:	79d02773          	csrr	a4,pccr29
1c0087a4:	bd7d                	j	1c008662 <rt_perf_save+0x80>

1c0087a6 <__rt_himax_init>:
1c0087a6:	1c0017b7          	lui	a5,0x1c001
1c0087aa:	d8078023          	sb	zero,-640(a5) # 1c000d80 <stack>
1c0087ae:	8082                	ret

1c0087b0 <__rt_init>:
1c0087b0:	1141                	addi	sp,sp,-16
1c0087b2:	c606                	sw	ra,12(sp)
1c0087b4:	c422                	sw	s0,8(sp)
1c0087b6:	2ef1                	jal	1c008b92 <__rt_bridge_set_available>
1c0087b8:	1c0017b7          	lui	a5,0x1c001
1c0087bc:	e787a783          	lw	a5,-392(a5) # 1c000e78 <__rt_platform>
1c0087c0:	0237b263          	p.bneimm	a5,3,1c0087e4 <__rt_init+0x34>
1c0087c4:	7d005073          	csrwi	0x7d0,0
1c0087c8:	1c0007b7          	lui	a5,0x1c000
1c0087cc:	58078793          	addi	a5,a5,1408 # 1c000580 <stack_start>
1c0087d0:	7d179073          	csrw	0x7d1,a5
1c0087d4:	1c0017b7          	lui	a5,0x1c001
1c0087d8:	d8078793          	addi	a5,a5,-640 # 1c000d80 <stack>
1c0087dc:	7d279073          	csrw	0x7d2,a5
1c0087e0:	7d00d073          	csrwi	0x7d0,1
1c0087e4:	2a85                	jal	1c008954 <__rt_irq_init>
1c0087e6:	1a1067b7          	lui	a5,0x1a106
1c0087ea:	577d                	li	a4,-1
1c0087ec:	00478693          	addi	a3,a5,4 # 1a106004 <__rt_udma_callback_data+0x1a105d0c>
1c0087f0:	c298                	sw	a4,0(a3)
1c0087f2:	00878693          	addi	a3,a5,8
1c0087f6:	c298                	sw	a4,0(a3)
1c0087f8:	00c78693          	addi	a3,a5,12
1c0087fc:	c298                	sw	a4,0(a3)
1c0087fe:	01078693          	addi	a3,a5,16
1c008802:	c298                	sw	a4,0(a3)
1c008804:	01478693          	addi	a3,a5,20
1c008808:	c298                	sw	a4,0(a3)
1c00880a:	01878693          	addi	a3,a5,24
1c00880e:	c298                	sw	a4,0(a3)
1c008810:	01c78693          	addi	a3,a5,28
1c008814:	c298                	sw	a4,0(a3)
1c008816:	02078793          	addi	a5,a5,32
1c00881a:	1c0085b7          	lui	a1,0x1c008
1c00881e:	23a58593          	addi	a1,a1,570 # 1c00823a <__rt_fc_socevents_handler>
1c008822:	4569                	li	a0,26
1c008824:	c398                	sw	a4,0(a5)
1c008826:	2851                	jal	1c0088ba <rt_irq_set_handler>
1c008828:	1a10a7b7          	lui	a5,0x1a10a
1c00882c:	04000737          	lui	a4,0x4000
1c008830:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__rt_udma_callback_data+0x1a10950c>
1c008834:	1c000437          	lui	s0,0x1c000
1c008838:	189000ef          	jal	ra,1c0091c0 <__rt_freq_init>
1c00883c:	32840413          	addi	s0,s0,808 # 1c000328 <ctor_list+0x4>
1c008840:	2275                	jal	1c0089ec <__rt_utils_init>
1c008842:	3b29                	jal	1c00855c <__rt_allocs_init>
1c008844:	2519                	jal	1c008e4a <__rt_event_sched_init>
1c008846:	1f7000ef          	jal	ra,1c00923c <__rt_padframe_init>
1c00884a:	0044278b          	p.lw	a5,4(s0!)
1c00884e:	e795                	bnez	a5,1c00887a <__rt_init+0xca>
1c008850:	300467f3          	csrrsi	a5,mstatus,8
1c008854:	4501                	li	a0,0
1c008856:	229d                	jal	1c0089bc <__rt_cbsys_exec>
1c008858:	c11d                	beqz	a0,1c00887e <__rt_init+0xce>
1c00885a:	f1402673          	csrr	a2,mhartid
1c00885e:	1c000537          	lui	a0,0x1c000
1c008862:	40565593          	srai	a1,a2,0x5
1c008866:	f265b5b3          	p.bclr	a1,a1,25,6
1c00886a:	f4563633          	p.bclr	a2,a2,26,5
1c00886e:	42850513          	addi	a0,a0,1064 # 1c000428 <__DTOR_END__+0xd0>
1c008872:	05a010ef          	jal	ra,1c0098cc <printf>
1c008876:	7c3000ef          	jal	ra,1c009838 <abort>
1c00887a:	9782                	jalr	a5
1c00887c:	b7f9                	j	1c00884a <__rt_init+0x9a>
1c00887e:	40b2                	lw	ra,12(sp)
1c008880:	4422                	lw	s0,8(sp)
1c008882:	0141                	addi	sp,sp,16
1c008884:	8082                	ret

1c008886 <__rt_deinit>:
1c008886:	1c0017b7          	lui	a5,0x1c001
1c00888a:	e787a783          	lw	a5,-392(a5) # 1c000e78 <__rt_platform>
1c00888e:	1141                	addi	sp,sp,-16
1c008890:	c606                	sw	ra,12(sp)
1c008892:	c422                	sw	s0,8(sp)
1c008894:	0037b463          	p.bneimm	a5,3,1c00889c <__rt_deinit+0x16>
1c008898:	7d005073          	csrwi	0x7d0,0
1c00889c:	4505                	li	a0,1
1c00889e:	1c000437          	lui	s0,0x1c000
1c0088a2:	2a29                	jal	1c0089bc <__rt_cbsys_exec>
1c0088a4:	35440413          	addi	s0,s0,852 # 1c000354 <dtor_list+0x4>
1c0088a8:	0044278b          	p.lw	a5,4(s0!)
1c0088ac:	e789                	bnez	a5,1c0088b6 <__rt_deinit+0x30>
1c0088ae:	40b2                	lw	ra,12(sp)
1c0088b0:	4422                	lw	s0,8(sp)
1c0088b2:	0141                	addi	sp,sp,16
1c0088b4:	8082                	ret
1c0088b6:	9782                	jalr	a5
1c0088b8:	bfc5                	j	1c0088a8 <__rt_deinit+0x22>

1c0088ba <rt_irq_set_handler>:
1c0088ba:	f14027f3          	csrr	a5,mhartid
1c0088be:	46fd                	li	a3,31
1c0088c0:	ca5797b3          	p.extractu	a5,a5,5,5
1c0088c4:	4701                	li	a4,0
1c0088c6:	00d79663          	bne	a5,a3,1c0088d2 <rt_irq_set_handler+0x18>
1c0088ca:	30502773          	csrr	a4,mtvec
1c0088ce:	c0073733          	p.bclr	a4,a4,0,0
1c0088d2:	050a                	slli	a0,a0,0x2
1c0088d4:	8d89                	sub	a1,a1,a0
1c0088d6:	8d99                	sub	a1,a1,a4
1c0088d8:	c14586b3          	p.extract	a3,a1,0,20
1c0088dc:	06f00793          	li	a5,111
1c0088e0:	c1f6a7b3          	p.insert	a5,a3,0,31
1c0088e4:	d21586b3          	p.extract	a3,a1,9,1
1c0088e8:	d356a7b3          	p.insert	a5,a3,9,21
1c0088ec:	c0b586b3          	p.extract	a3,a1,0,11
1c0088f0:	c146a7b3          	p.insert	a5,a3,0,20
1c0088f4:	cec585b3          	p.extract	a1,a1,7,12
1c0088f8:	cec5a7b3          	p.insert	a5,a1,7,12
1c0088fc:	00f56723          	p.sw	a5,a4(a0)
1c008900:	8082                	ret

1c008902 <illegal_insn_handler_c>:
1c008902:	8082                	ret

1c008904 <__rt_handle_illegal_instr>:
1c008904:	1141                	addi	sp,sp,-16
1c008906:	c606                	sw	ra,12(sp)
1c008908:	c422                	sw	s0,8(sp)
1c00890a:	341026f3          	csrr	a3,mepc
1c00890e:	1c0017b7          	lui	a5,0x1c001
1c008912:	d887a703          	lw	a4,-632(a5) # 1c000d88 <__rt_debug_config>
1c008916:	843e                	mv	s0,a5
1c008918:	fc173733          	p.bclr	a4,a4,30,1
1c00891c:	c305                	beqz	a4,1c00893c <__rt_handle_illegal_instr+0x38>
1c00891e:	4298                	lw	a4,0(a3)
1c008920:	f1402673          	csrr	a2,mhartid
1c008924:	1c000537          	lui	a0,0x1c000
1c008928:	40565593          	srai	a1,a2,0x5
1c00892c:	f265b5b3          	p.bclr	a1,a1,25,6
1c008930:	f4563633          	p.bclr	a2,a2,26,5
1c008934:	48050513          	addi	a0,a0,1152 # 1c000480 <__DTOR_END__+0x128>
1c008938:	795000ef          	jal	ra,1c0098cc <printf>
1c00893c:	d8842783          	lw	a5,-632(s0)
1c008940:	c01797b3          	p.extractu	a5,a5,0,1
1c008944:	c399                	beqz	a5,1c00894a <__rt_handle_illegal_instr+0x46>
1c008946:	6f3000ef          	jal	ra,1c009838 <abort>
1c00894a:	4422                	lw	s0,8(sp)
1c00894c:	40b2                	lw	ra,12(sp)
1c00894e:	0141                	addi	sp,sp,16
1c008950:	fb3ff06f          	j	1c008902 <illegal_insn_handler_c>

1c008954 <__rt_irq_init>:
1c008954:	1a10a7b7          	lui	a5,0x1a10a
1c008958:	577d                	li	a4,-1
1c00895a:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__rt_udma_callback_data+0x1a109510>
1c00895e:	f14027f3          	csrr	a5,mhartid
1c008962:	477d                	li	a4,31
1c008964:	ca5797b3          	p.extractu	a5,a5,5,5
1c008968:	00e79a63          	bne	a5,a4,1c00897c <__rt_irq_init+0x28>
1c00896c:	1c0087b7          	lui	a5,0x1c008
1c008970:	00078793          	mv	a5,a5
1c008974:	c007c7b3          	p.bset	a5,a5,0,0
1c008978:	30579073          	csrw	mtvec,a5
1c00897c:	8082                	ret

1c00897e <__rt_cbsys_add>:
1c00897e:	1101                	addi	sp,sp,-32
1c008980:	cc22                	sw	s0,24(sp)
1c008982:	ca26                	sw	s1,20(sp)
1c008984:	842a                	mv	s0,a0
1c008986:	84ae                	mv	s1,a1
1c008988:	4501                	li	a0,0
1c00898a:	45b1                	li	a1,12
1c00898c:	c632                	sw	a2,12(sp)
1c00898e:	ce06                	sw	ra,28(sp)
1c008990:	3671                	jal	1c00851c <rt_alloc>
1c008992:	4632                	lw	a2,12(sp)
1c008994:	c115                	beqz	a0,1c0089b8 <__rt_cbsys_add+0x3a>
1c008996:	1c0017b7          	lui	a5,0x1c001
1c00899a:	040a                	slli	s0,s0,0x2
1c00899c:	d8c78793          	addi	a5,a5,-628 # 1c000d8c <cbsys_first>
1c0089a0:	97a2                	add	a5,a5,s0
1c0089a2:	4398                	lw	a4,0(a5)
1c0089a4:	c104                	sw	s1,0(a0)
1c0089a6:	c150                	sw	a2,4(a0)
1c0089a8:	c518                	sw	a4,8(a0)
1c0089aa:	c388                	sw	a0,0(a5)
1c0089ac:	4501                	li	a0,0
1c0089ae:	40f2                	lw	ra,28(sp)
1c0089b0:	4462                	lw	s0,24(sp)
1c0089b2:	44d2                	lw	s1,20(sp)
1c0089b4:	6105                	addi	sp,sp,32
1c0089b6:	8082                	ret
1c0089b8:	557d                	li	a0,-1
1c0089ba:	bfd5                	j	1c0089ae <__rt_cbsys_add+0x30>

1c0089bc <__rt_cbsys_exec>:
1c0089bc:	1141                	addi	sp,sp,-16
1c0089be:	c422                	sw	s0,8(sp)
1c0089c0:	1c001437          	lui	s0,0x1c001
1c0089c4:	050a                	slli	a0,a0,0x2
1c0089c6:	d8c40413          	addi	s0,s0,-628 # 1c000d8c <cbsys_first>
1c0089ca:	20a47403          	p.lw	s0,a0(s0)
1c0089ce:	c606                	sw	ra,12(sp)
1c0089d0:	e411                	bnez	s0,1c0089dc <__rt_cbsys_exec+0x20>
1c0089d2:	4501                	li	a0,0
1c0089d4:	40b2                	lw	ra,12(sp)
1c0089d6:	4422                	lw	s0,8(sp)
1c0089d8:	0141                	addi	sp,sp,16
1c0089da:	8082                	ret
1c0089dc:	401c                	lw	a5,0(s0)
1c0089de:	4048                	lw	a0,4(s0)
1c0089e0:	9782                	jalr	a5
1c0089e2:	e119                	bnez	a0,1c0089e8 <__rt_cbsys_exec+0x2c>
1c0089e4:	4400                	lw	s0,8(s0)
1c0089e6:	b7ed                	j	1c0089d0 <__rt_cbsys_exec+0x14>
1c0089e8:	557d                	li	a0,-1
1c0089ea:	b7ed                	j	1c0089d4 <__rt_cbsys_exec+0x18>

1c0089ec <__rt_utils_init>:
1c0089ec:	1c0017b7          	lui	a5,0x1c001
1c0089f0:	d8c78793          	addi	a5,a5,-628 # 1c000d8c <cbsys_first>
1c0089f4:	0007a023          	sw	zero,0(a5)
1c0089f8:	0007a223          	sw	zero,4(a5)
1c0089fc:	0007a423          	sw	zero,8(a5)
1c008a00:	0007a623          	sw	zero,12(a5)
1c008a04:	0007a823          	sw	zero,16(a5)
1c008a08:	0007aa23          	sw	zero,20(a5)
1c008a0c:	8082                	ret

1c008a0e <__rt_fc_lock>:
1c008a0e:	1141                	addi	sp,sp,-16
1c008a10:	c422                	sw	s0,8(sp)
1c008a12:	c606                	sw	ra,12(sp)
1c008a14:	c226                	sw	s1,4(sp)
1c008a16:	842a                	mv	s0,a0
1c008a18:	300474f3          	csrrci	s1,mstatus,8
1c008a1c:	401c                	lw	a5,0(s0)
1c008a1e:	eb91                	bnez	a5,1c008a32 <__rt_fc_lock+0x24>
1c008a20:	4785                	li	a5,1
1c008a22:	c01c                	sw	a5,0(s0)
1c008a24:	30049073          	csrw	mstatus,s1
1c008a28:	40b2                	lw	ra,12(sp)
1c008a2a:	4422                	lw	s0,8(sp)
1c008a2c:	4492                	lw	s1,4(sp)
1c008a2e:	0141                	addi	sp,sp,16
1c008a30:	8082                	ret
1c008a32:	4585                	li	a1,1
1c008a34:	e3ff7517          	auipc	a0,0xe3ff7
1c008a38:	5e850513          	addi	a0,a0,1512 # 1c <__rt_sched>
1c008a3c:	26b5                	jal	1c008da8 <__rt_event_execute>
1c008a3e:	bff9                	j	1c008a1c <__rt_fc_lock+0xe>

1c008a40 <__rt_fc_unlock>:
1c008a40:	300477f3          	csrrci	a5,mstatus,8
1c008a44:	00052023          	sw	zero,0(a0)
1c008a48:	30079073          	csrw	mstatus,a5
1c008a4c:	8082                	ret

1c008a4e <__rt_event_enqueue>:
1c008a4e:	01c02783          	lw	a5,28(zero) # 1c <__rt_sched>
1c008a52:	00052c23          	sw	zero,24(a0)
1c008a56:	c799                	beqz	a5,1c008a64 <__rt_event_enqueue+0x16>
1c008a58:	02002783          	lw	a5,32(zero) # 20 <__rt_sched+0x4>
1c008a5c:	cf88                	sw	a0,24(a5)
1c008a5e:	02a02023          	sw	a0,32(zero) # 20 <__rt_sched+0x4>
1c008a62:	8082                	ret
1c008a64:	00a02e23          	sw	a0,28(zero) # 1c <__rt_sched>
1c008a68:	bfdd                	j	1c008a5e <__rt_event_enqueue+0x10>

1c008a6a <__rt_bridge_check_bridge_req.part.5>:
1c008a6a:	1c001737          	lui	a4,0x1c001
1c008a6e:	db470793          	addi	a5,a4,-588 # 1c000db4 <__hal_debug_struct>
1c008a72:	0a47a783          	lw	a5,164(a5)
1c008a76:	db470713          	addi	a4,a4,-588
1c008a7a:	c789                	beqz	a5,1c008a84 <__rt_bridge_check_bridge_req.part.5+0x1a>
1c008a7c:	4f94                	lw	a3,24(a5)
1c008a7e:	e681                	bnez	a3,1c008a86 <__rt_bridge_check_bridge_req.part.5+0x1c>
1c008a80:	0af72623          	sw	a5,172(a4)
1c008a84:	8082                	ret
1c008a86:	479c                	lw	a5,8(a5)
1c008a88:	bfcd                	j	1c008a7a <__rt_bridge_check_bridge_req.part.5+0x10>

1c008a8a <__rt_bridge_wait>:
1c008a8a:	f14027f3          	csrr	a5,mhartid
1c008a8e:	477d                	li	a4,31
1c008a90:	ca5797b3          	p.extractu	a5,a5,5,5
1c008a94:	02e79f63          	bne	a5,a4,1c008ad2 <__rt_bridge_wait+0x48>
1c008a98:	1a10a7b7          	lui	a5,0x1a10a
1c008a9c:	80c78513          	addi	a0,a5,-2036 # 1a10980c <__rt_udma_callback_data+0x1a109514>
1c008aa0:	6711                	lui	a4,0x4
1c008aa2:	80478593          	addi	a1,a5,-2044
1c008aa6:	80878613          	addi	a2,a5,-2040
1c008aaa:	300476f3          	csrrci	a3,mstatus,8
1c008aae:	00052803          	lw	a6,0(a0)
1c008ab2:	01181893          	slli	a7,a6,0x11
1c008ab6:	0008c963          	bltz	a7,1c008ac8 <__rt_bridge_wait+0x3e>
1c008aba:	c198                	sw	a4,0(a1)
1c008abc:	10500073          	wfi
1c008ac0:	c218                	sw	a4,0(a2)
1c008ac2:	30069073          	csrw	mstatus,a3
1c008ac6:	b7d5                	j	1c008aaa <__rt_bridge_wait+0x20>
1c008ac8:	81478793          	addi	a5,a5,-2028
1c008acc:	c398                	sw	a4,0(a5)
1c008ace:	30069073          	csrw	mstatus,a3
1c008ad2:	8082                	ret

1c008ad4 <__rt_bridge_handle_notif>:
1c008ad4:	1141                	addi	sp,sp,-16
1c008ad6:	c422                	sw	s0,8(sp)
1c008ad8:	1c001437          	lui	s0,0x1c001
1c008adc:	db440793          	addi	a5,s0,-588 # 1c000db4 <__hal_debug_struct>
1c008ae0:	0a47a783          	lw	a5,164(a5)
1c008ae4:	c606                	sw	ra,12(sp)
1c008ae6:	c226                	sw	s1,4(sp)
1c008ae8:	c04a                	sw	s2,0(sp)
1c008aea:	db440413          	addi	s0,s0,-588
1c008aee:	c399                	beqz	a5,1c008af4 <__rt_bridge_handle_notif+0x20>
1c008af0:	4bd8                	lw	a4,20(a5)
1c008af2:	e30d                	bnez	a4,1c008b14 <__rt_bridge_handle_notif+0x40>
1c008af4:	0b442783          	lw	a5,180(s0)
1c008af8:	c789                	beqz	a5,1c008b02 <__rt_bridge_handle_notif+0x2e>
1c008afa:	43a8                	lw	a0,64(a5)
1c008afc:	0a042a23          	sw	zero,180(s0)
1c008b00:	37b9                	jal	1c008a4e <__rt_event_enqueue>
1c008b02:	0ac42783          	lw	a5,172(s0)
1c008b06:	eb9d                	bnez	a5,1c008b3c <__rt_bridge_handle_notif+0x68>
1c008b08:	4422                	lw	s0,8(sp)
1c008b0a:	40b2                	lw	ra,12(sp)
1c008b0c:	4492                	lw	s1,4(sp)
1c008b0e:	4902                	lw	s2,0(sp)
1c008b10:	0141                	addi	sp,sp,16
1c008b12:	bfa1                	j	1c008a6a <__rt_bridge_check_bridge_req.part.5>
1c008b14:	0087a903          	lw	s2,8(a5)
1c008b18:	4fd8                	lw	a4,28(a5)
1c008b1a:	0b242223          	sw	s2,164(s0)
1c008b1e:	cb01                	beqz	a4,1c008b2e <__rt_bridge_handle_notif+0x5a>
1c008b20:	0b042703          	lw	a4,176(s0)
1c008b24:	c798                	sw	a4,8(a5)
1c008b26:	0af42823          	sw	a5,176(s0)
1c008b2a:	87ca                	mv	a5,s2
1c008b2c:	b7c9                	j	1c008aee <__rt_bridge_handle_notif+0x1a>
1c008b2e:	43a8                	lw	a0,64(a5)
1c008b30:	300474f3          	csrrci	s1,mstatus,8
1c008b34:	3f29                	jal	1c008a4e <__rt_event_enqueue>
1c008b36:	30049073          	csrw	mstatus,s1
1c008b3a:	bfc5                	j	1c008b2a <__rt_bridge_handle_notif+0x56>
1c008b3c:	40b2                	lw	ra,12(sp)
1c008b3e:	4422                	lw	s0,8(sp)
1c008b40:	4492                	lw	s1,4(sp)
1c008b42:	4902                	lw	s2,0(sp)
1c008b44:	0141                	addi	sp,sp,16
1c008b46:	8082                	ret

1c008b48 <__rt_bridge_check_connection>:
1c008b48:	1c0016b7          	lui	a3,0x1c001
1c008b4c:	db468693          	addi	a3,a3,-588 # 1c000db4 <__hal_debug_struct>
1c008b50:	469c                	lw	a5,8(a3)
1c008b52:	ef9d                	bnez	a5,1c008b90 <__rt_bridge_check_connection+0x48>
1c008b54:	1a1047b7          	lui	a5,0x1a104
1c008b58:	07478793          	addi	a5,a5,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008b5c:	4398                	lw	a4,0(a5)
1c008b5e:	8325                	srli	a4,a4,0x9
1c008b60:	f8373733          	p.bclr	a4,a4,28,3
1c008b64:	02773663          	p.bneimm	a4,7,1c008b90 <__rt_bridge_check_connection+0x48>
1c008b68:	1141                	addi	sp,sp,-16
1c008b6a:	c422                	sw	s0,8(sp)
1c008b6c:	c606                	sw	ra,12(sp)
1c008b6e:	4705                	li	a4,1
1c008b70:	c698                	sw	a4,8(a3)
1c008b72:	4709                	li	a4,2
1c008b74:	c398                	sw	a4,0(a5)
1c008b76:	843e                	mv	s0,a5
1c008b78:	401c                	lw	a5,0(s0)
1c008b7a:	83a5                	srli	a5,a5,0x9
1c008b7c:	f837b7b3          	p.bclr	a5,a5,28,3
1c008b80:	0077a663          	p.beqimm	a5,7,1c008b8c <__rt_bridge_check_connection+0x44>
1c008b84:	40b2                	lw	ra,12(sp)
1c008b86:	4422                	lw	s0,8(sp)
1c008b88:	0141                	addi	sp,sp,16
1c008b8a:	8082                	ret
1c008b8c:	3dfd                	jal	1c008a8a <__rt_bridge_wait>
1c008b8e:	b7ed                	j	1c008b78 <__rt_bridge_check_connection+0x30>
1c008b90:	8082                	ret

1c008b92 <__rt_bridge_set_available>:
1c008b92:	1c0017b7          	lui	a5,0x1c001
1c008b96:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008b9a:	4798                	lw	a4,8(a5)
1c008b9c:	1a1047b7          	lui	a5,0x1a104
1c008ba0:	07478793          	addi	a5,a5,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008ba4:	e701                	bnez	a4,1c008bac <__rt_bridge_set_available+0x1a>
1c008ba6:	4721                	li	a4,8
1c008ba8:	c398                	sw	a4,0(a5)
1c008baa:	8082                	ret
1c008bac:	4709                	li	a4,2
1c008bae:	bfed                	j	1c008ba8 <__rt_bridge_set_available+0x16>

1c008bb0 <__rt_bridge_send_notif>:
1c008bb0:	1141                	addi	sp,sp,-16
1c008bb2:	c606                	sw	ra,12(sp)
1c008bb4:	3f51                	jal	1c008b48 <__rt_bridge_check_connection>
1c008bb6:	1c0017b7          	lui	a5,0x1c001
1c008bba:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008bbe:	479c                	lw	a5,8(a5)
1c008bc0:	c789                	beqz	a5,1c008bca <__rt_bridge_send_notif+0x1a>
1c008bc2:	1a1047b7          	lui	a5,0x1a104
1c008bc6:	4719                	li	a4,6
1c008bc8:	dbf8                	sw	a4,116(a5)
1c008bca:	40b2                	lw	ra,12(sp)
1c008bcc:	0141                	addi	sp,sp,16
1c008bce:	8082                	ret

1c008bd0 <__rt_bridge_clear_notif>:
1c008bd0:	1141                	addi	sp,sp,-16
1c008bd2:	c606                	sw	ra,12(sp)
1c008bd4:	3f95                	jal	1c008b48 <__rt_bridge_check_connection>
1c008bd6:	1c0017b7          	lui	a5,0x1c001
1c008bda:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008bde:	479c                	lw	a5,8(a5)
1c008be0:	c781                	beqz	a5,1c008be8 <__rt_bridge_clear_notif+0x18>
1c008be2:	40b2                	lw	ra,12(sp)
1c008be4:	0141                	addi	sp,sp,16
1c008be6:	b775                	j	1c008b92 <__rt_bridge_set_available>
1c008be8:	40b2                	lw	ra,12(sp)
1c008bea:	0141                	addi	sp,sp,16
1c008bec:	8082                	ret

1c008bee <__rt_bridge_printf_flush>:
1c008bee:	1141                	addi	sp,sp,-16
1c008bf0:	c422                	sw	s0,8(sp)
1c008bf2:	c606                	sw	ra,12(sp)
1c008bf4:	1c001437          	lui	s0,0x1c001
1c008bf8:	3f81                	jal	1c008b48 <__rt_bridge_check_connection>
1c008bfa:	db440793          	addi	a5,s0,-588 # 1c000db4 <__hal_debug_struct>
1c008bfe:	479c                	lw	a5,8(a5)
1c008c00:	c385                	beqz	a5,1c008c20 <__rt_bridge_printf_flush+0x32>
1c008c02:	db440413          	addi	s0,s0,-588
1c008c06:	485c                	lw	a5,20(s0)
1c008c08:	e399                	bnez	a5,1c008c0e <__rt_bridge_printf_flush+0x20>
1c008c0a:	4c1c                	lw	a5,24(s0)
1c008c0c:	cb91                	beqz	a5,1c008c20 <__rt_bridge_printf_flush+0x32>
1c008c0e:	374d                	jal	1c008bb0 <__rt_bridge_send_notif>
1c008c10:	485c                	lw	a5,20(s0)
1c008c12:	e789                	bnez	a5,1c008c1c <__rt_bridge_printf_flush+0x2e>
1c008c14:	4422                	lw	s0,8(sp)
1c008c16:	40b2                	lw	ra,12(sp)
1c008c18:	0141                	addi	sp,sp,16
1c008c1a:	bf5d                	j	1c008bd0 <__rt_bridge_clear_notif>
1c008c1c:	35bd                	jal	1c008a8a <__rt_bridge_wait>
1c008c1e:	bfcd                	j	1c008c10 <__rt_bridge_printf_flush+0x22>
1c008c20:	40b2                	lw	ra,12(sp)
1c008c22:	4422                	lw	s0,8(sp)
1c008c24:	0141                	addi	sp,sp,16
1c008c26:	8082                	ret

1c008c28 <__rt_bridge_req_shutdown>:
1c008c28:	1141                	addi	sp,sp,-16
1c008c2a:	c606                	sw	ra,12(sp)
1c008c2c:	c422                	sw	s0,8(sp)
1c008c2e:	3f29                	jal	1c008b48 <__rt_bridge_check_connection>
1c008c30:	1c0017b7          	lui	a5,0x1c001
1c008c34:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008c38:	479c                	lw	a5,8(a5)
1c008c3a:	c7a1                	beqz	a5,1c008c82 <__rt_bridge_req_shutdown+0x5a>
1c008c3c:	1a104437          	lui	s0,0x1a104
1c008c40:	377d                	jal	1c008bee <__rt_bridge_printf_flush>
1c008c42:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008c46:	401c                	lw	a5,0(s0)
1c008c48:	83a5                	srli	a5,a5,0x9
1c008c4a:	f837b7b3          	p.bclr	a5,a5,28,3
1c008c4e:	0277ae63          	p.beqimm	a5,7,1c008c8a <__rt_bridge_req_shutdown+0x62>
1c008c52:	4791                	li	a5,4
1c008c54:	c01c                	sw	a5,0(s0)
1c008c56:	1a104437          	lui	s0,0x1a104
1c008c5a:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008c5e:	401c                	lw	a5,0(s0)
1c008c60:	83a5                	srli	a5,a5,0x9
1c008c62:	f837b7b3          	p.bclr	a5,a5,28,3
1c008c66:	0277b463          	p.bneimm	a5,7,1c008c8e <__rt_bridge_req_shutdown+0x66>
1c008c6a:	00042023          	sw	zero,0(s0)
1c008c6e:	1a104437          	lui	s0,0x1a104
1c008c72:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008c76:	401c                	lw	a5,0(s0)
1c008c78:	83a5                	srli	a5,a5,0x9
1c008c7a:	f837b7b3          	p.bclr	a5,a5,28,3
1c008c7e:	0077aa63          	p.beqimm	a5,7,1c008c92 <__rt_bridge_req_shutdown+0x6a>
1c008c82:	40b2                	lw	ra,12(sp)
1c008c84:	4422                	lw	s0,8(sp)
1c008c86:	0141                	addi	sp,sp,16
1c008c88:	8082                	ret
1c008c8a:	3501                	jal	1c008a8a <__rt_bridge_wait>
1c008c8c:	bf6d                	j	1c008c46 <__rt_bridge_req_shutdown+0x1e>
1c008c8e:	3bf5                	jal	1c008a8a <__rt_bridge_wait>
1c008c90:	b7f9                	j	1c008c5e <__rt_bridge_req_shutdown+0x36>
1c008c92:	3be5                	jal	1c008a8a <__rt_bridge_wait>
1c008c94:	b7cd                	j	1c008c76 <__rt_bridge_req_shutdown+0x4e>

1c008c96 <__rt_bridge_init>:
1c008c96:	1c0017b7          	lui	a5,0x1c001
1c008c9a:	1a10a737          	lui	a4,0x1a10a
1c008c9e:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008ca2:	81070713          	addi	a4,a4,-2032 # 1a109810 <__rt_udma_callback_data+0x1a109518>
1c008ca6:	0ae7ac23          	sw	a4,184(a5)
1c008caa:	4741                	li	a4,16
1c008cac:	0a07a223          	sw	zero,164(a5)
1c008cb0:	0a07a623          	sw	zero,172(a5)
1c008cb4:	0a07aa23          	sw	zero,180(a5)
1c008cb8:	0ae7ae23          	sw	a4,188(a5)
1c008cbc:	00400793          	li	a5,4
1c008cc0:	0007a823          	sw	zero,16(a5)
1c008cc4:	0007a023          	sw	zero,0(a5)
1c008cc8:	8082                	ret

1c008cca <__rt_event_init>:
1c008cca:	02052023          	sw	zero,32(a0)
1c008cce:	02052223          	sw	zero,36(a0)
1c008cd2:	02052823          	sw	zero,48(a0)
1c008cd6:	00052023          	sw	zero,0(a0)
1c008cda:	8082                	ret

1c008cdc <__rt_wait_event_prepare_blocking>:
1c008cdc:	01800793          	li	a5,24
1c008ce0:	4388                	lw	a0,0(a5)
1c008ce2:	4d18                	lw	a4,24(a0)
1c008ce4:	02052223          	sw	zero,36(a0)
1c008ce8:	c398                	sw	a4,0(a5)
1c008cea:	4785                	li	a5,1
1c008cec:	d11c                	sw	a5,32(a0)
1c008cee:	00052023          	sw	zero,0(a0)
1c008cf2:	8082                	ret

1c008cf4 <rt_event_alloc>:
1c008cf4:	1141                	addi	sp,sp,-16
1c008cf6:	c422                	sw	s0,8(sp)
1c008cf8:	c606                	sw	ra,12(sp)
1c008cfa:	c226                	sw	s1,4(sp)
1c008cfc:	842e                	mv	s0,a1
1c008cfe:	300474f3          	csrrci	s1,mstatus,8
1c008d02:	f14027f3          	csrr	a5,mhartid
1c008d06:	8795                	srai	a5,a5,0x5
1c008d08:	f267b7b3          	p.bclr	a5,a5,25,6
1c008d0c:	477d                	li	a4,31
1c008d0e:	00378513          	addi	a0,a5,3
1c008d12:	00e79363          	bne	a5,a4,1c008d18 <rt_event_alloc+0x24>
1c008d16:	4501                	li	a0,0
1c008d18:	08c00593          	li	a1,140
1c008d1c:	02b405b3          	mul	a1,s0,a1
1c008d20:	ffcff0ef          	jal	ra,1c00851c <rt_alloc>
1c008d24:	87aa                	mv	a5,a0
1c008d26:	557d                	li	a0,-1
1c008d28:	cf91                	beqz	a5,1c008d44 <rt_event_alloc+0x50>
1c008d2a:	01802683          	lw	a3,24(zero) # 18 <__rt_first_free>
1c008d2e:	4581                	li	a1,0
1c008d30:	4601                	li	a2,0
1c008d32:	01800713          	li	a4,24
1c008d36:	00864c63          	blt	a2,s0,1c008d4e <rt_event_alloc+0x5a>
1c008d3a:	c191                	beqz	a1,1c008d3e <rt_event_alloc+0x4a>
1c008d3c:	c314                	sw	a3,0(a4)
1c008d3e:	30049073          	csrw	mstatus,s1
1c008d42:	4501                	li	a0,0
1c008d44:	40b2                	lw	ra,12(sp)
1c008d46:	4422                	lw	s0,8(sp)
1c008d48:	4492                	lw	s1,4(sp)
1c008d4a:	0141                	addi	sp,sp,16
1c008d4c:	8082                	ret
1c008d4e:	cf94                	sw	a3,24(a5)
1c008d50:	0207a023          	sw	zero,32(a5)
1c008d54:	0207a223          	sw	zero,36(a5)
1c008d58:	0207a823          	sw	zero,48(a5)
1c008d5c:	0007a023          	sw	zero,0(a5)
1c008d60:	86be                	mv	a3,a5
1c008d62:	0605                	addi	a2,a2,1
1c008d64:	4585                	li	a1,1
1c008d66:	08c78793          	addi	a5,a5,140
1c008d6a:	b7f1                	j	1c008d36 <rt_event_alloc+0x42>

1c008d6c <rt_event_get>:
1c008d6c:	30047773          	csrrci	a4,mstatus,8
1c008d70:	01800793          	li	a5,24
1c008d74:	4388                	lw	a0,0(a5)
1c008d76:	c509                	beqz	a0,1c008d80 <rt_event_get+0x14>
1c008d78:	4d14                	lw	a3,24(a0)
1c008d7a:	c150                	sw	a2,4(a0)
1c008d7c:	c394                	sw	a3,0(a5)
1c008d7e:	c10c                	sw	a1,0(a0)
1c008d80:	30071073          	csrw	mstatus,a4
1c008d84:	8082                	ret

1c008d86 <rt_event_get_blocking>:
1c008d86:	30047773          	csrrci	a4,mstatus,8
1c008d8a:	01800793          	li	a5,24
1c008d8e:	4388                	lw	a0,0(a5)
1c008d90:	c909                	beqz	a0,1c008da2 <rt_event_get_blocking+0x1c>
1c008d92:	4d14                	lw	a3,24(a0)
1c008d94:	00052223          	sw	zero,4(a0)
1c008d98:	c394                	sw	a3,0(a5)
1c008d9a:	4785                	li	a5,1
1c008d9c:	00052023          	sw	zero,0(a0)
1c008da0:	d11c                	sw	a5,32(a0)
1c008da2:	30071073          	csrw	mstatus,a4
1c008da6:	8082                	ret

1c008da8 <__rt_event_execute>:
1c008da8:	1141                	addi	sp,sp,-16
1c008daa:	c422                	sw	s0,8(sp)
1c008dac:	01800793          	li	a5,24
1c008db0:	43dc                	lw	a5,4(a5)
1c008db2:	c606                	sw	ra,12(sp)
1c008db4:	c226                	sw	s1,4(sp)
1c008db6:	01800413          	li	s0,24
1c008dba:	eb91                	bnez	a5,1c008dce <__rt_event_execute+0x26>
1c008dbc:	c1a9                	beqz	a1,1c008dfe <__rt_event_execute+0x56>
1c008dbe:	10500073          	wfi
1c008dc2:	300467f3          	csrrsi	a5,mstatus,8
1c008dc6:	300477f3          	csrrci	a5,mstatus,8
1c008dca:	405c                	lw	a5,4(s0)
1c008dcc:	cb8d                	beqz	a5,1c008dfe <__rt_event_execute+0x56>
1c008dce:	4485                	li	s1,1
1c008dd0:	4f98                	lw	a4,24(a5)
1c008dd2:	53d4                	lw	a3,36(a5)
1c008dd4:	00978823          	sb	s1,16(a5)
1c008dd8:	c058                	sw	a4,4(s0)
1c008dda:	43c8                	lw	a0,4(a5)
1c008ddc:	4398                	lw	a4,0(a5)
1c008dde:	e691                	bnez	a3,1c008dea <__rt_event_execute+0x42>
1c008de0:	5394                	lw	a3,32(a5)
1c008de2:	e681                	bnez	a3,1c008dea <__rt_event_execute+0x42>
1c008de4:	4014                	lw	a3,0(s0)
1c008de6:	c01c                	sw	a5,0(s0)
1c008de8:	cf94                	sw	a3,24(a5)
1c008dea:	0207a023          	sw	zero,32(a5)
1c008dee:	c711                	beqz	a4,1c008dfa <__rt_event_execute+0x52>
1c008df0:	300467f3          	csrrsi	a5,mstatus,8
1c008df4:	9702                	jalr	a4
1c008df6:	300477f3          	csrrci	a5,mstatus,8
1c008dfa:	405c                	lw	a5,4(s0)
1c008dfc:	fbf1                	bnez	a5,1c008dd0 <__rt_event_execute+0x28>
1c008dfe:	40b2                	lw	ra,12(sp)
1c008e00:	4422                	lw	s0,8(sp)
1c008e02:	4492                	lw	s1,4(sp)
1c008e04:	0141                	addi	sp,sp,16
1c008e06:	8082                	ret

1c008e08 <__rt_wait_event>:
1c008e08:	1141                	addi	sp,sp,-16
1c008e0a:	c422                	sw	s0,8(sp)
1c008e0c:	c606                	sw	ra,12(sp)
1c008e0e:	842a                	mv	s0,a0
1c008e10:	501c                	lw	a5,32(s0)
1c008e12:	ef81                	bnez	a5,1c008e2a <__rt_wait_event+0x22>
1c008e14:	581c                	lw	a5,48(s0)
1c008e16:	eb91                	bnez	a5,1c008e2a <__rt_wait_event+0x22>
1c008e18:	01800793          	li	a5,24
1c008e1c:	4398                	lw	a4,0(a5)
1c008e1e:	40b2                	lw	ra,12(sp)
1c008e20:	c380                	sw	s0,0(a5)
1c008e22:	cc18                	sw	a4,24(s0)
1c008e24:	4422                	lw	s0,8(sp)
1c008e26:	0141                	addi	sp,sp,16
1c008e28:	8082                	ret
1c008e2a:	4585                	li	a1,1
1c008e2c:	4501                	li	a0,0
1c008e2e:	3fad                	jal	1c008da8 <__rt_event_execute>
1c008e30:	b7c5                	j	1c008e10 <__rt_wait_event+0x8>

1c008e32 <rt_event_wait>:
1c008e32:	1141                	addi	sp,sp,-16
1c008e34:	c606                	sw	ra,12(sp)
1c008e36:	c422                	sw	s0,8(sp)
1c008e38:	30047473          	csrrci	s0,mstatus,8
1c008e3c:	37f1                	jal	1c008e08 <__rt_wait_event>
1c008e3e:	30041073          	csrw	mstatus,s0
1c008e42:	40b2                	lw	ra,12(sp)
1c008e44:	4422                	lw	s0,8(sp)
1c008e46:	0141                	addi	sp,sp,16
1c008e48:	8082                	ret

1c008e4a <__rt_event_sched_init>:
1c008e4a:	01800513          	li	a0,24
1c008e4e:	00052023          	sw	zero,0(a0)
1c008e52:	00052223          	sw	zero,4(a0)
1c008e56:	4585                	li	a1,1
1c008e58:	0511                	addi	a0,a0,4
1c008e5a:	bd69                	j	1c008cf4 <rt_event_alloc>

1c008e5c <__rt_time_poweroff>:
1c008e5c:	1a10b7b7          	lui	a5,0x1a10b
1c008e60:	0791                	addi	a5,a5,4
1c008e62:	0087a783          	lw	a5,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008e66:	1c001737          	lui	a4,0x1c001
1c008e6a:	f2f72c23          	sw	a5,-200(a4) # 1c000f38 <timer_count>
1c008e6e:	4501                	li	a0,0
1c008e70:	8082                	ret

1c008e72 <__rt_time_poweron>:
1c008e72:	1c0017b7          	lui	a5,0x1c001
1c008e76:	f387a703          	lw	a4,-200(a5) # 1c000f38 <timer_count>
1c008e7a:	1a10b7b7          	lui	a5,0x1a10b
1c008e7e:	0791                	addi	a5,a5,4
1c008e80:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008e84:	4501                	li	a0,0
1c008e86:	8082                	ret

1c008e88 <rt_event_push_delayed>:
1c008e88:	30047373          	csrrci	t1,mstatus,8
1c008e8c:	1c001637          	lui	a2,0x1c001
1c008e90:	72c62703          	lw	a4,1836(a2) # 1c00172c <first_delayed>
1c008e94:	1a10b7b7          	lui	a5,0x1a10b
1c008e98:	0791                	addi	a5,a5,4
1c008e9a:	0087a783          	lw	a5,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008e9e:	46f9                	li	a3,30
1c008ea0:	0405e5b3          	p.max	a1,a1,zero
1c008ea4:	02d5c5b3          	div	a1,a1,a3
1c008ea8:	800006b7          	lui	a3,0x80000
1c008eac:	fff6c693          	not	a3,a3
1c008eb0:	00d7f833          	and	a6,a5,a3
1c008eb4:	0585                	addi	a1,a1,1
1c008eb6:	97ae                	add	a5,a5,a1
1c008eb8:	d95c                	sw	a5,52(a0)
1c008eba:	982e                	add	a6,a6,a1
1c008ebc:	4781                	li	a5,0
1c008ebe:	c719                	beqz	a4,1c008ecc <rt_event_push_delayed+0x44>
1c008ec0:	03472883          	lw	a7,52(a4)
1c008ec4:	00d8f8b3          	and	a7,a7,a3
1c008ec8:	0108e863          	bltu	a7,a6,1c008ed8 <rt_event_push_delayed+0x50>
1c008ecc:	cb89                	beqz	a5,1c008ede <rt_event_push_delayed+0x56>
1c008ece:	cf88                	sw	a0,24(a5)
1c008ed0:	cd18                	sw	a4,24(a0)
1c008ed2:	30031073          	csrw	mstatus,t1
1c008ed6:	8082                	ret
1c008ed8:	87ba                	mv	a5,a4
1c008eda:	4f18                	lw	a4,24(a4)
1c008edc:	b7cd                	j	1c008ebe <rt_event_push_delayed+0x36>
1c008ede:	1a10b7b7          	lui	a5,0x1a10b
1c008ee2:	0791                	addi	a5,a5,4
1c008ee4:	72a62623          	sw	a0,1836(a2)
1c008ee8:	cd18                	sw	a4,24(a0)
1c008eea:	0087a703          	lw	a4,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008eee:	95ba                	add	a1,a1,a4
1c008ef0:	00b7a823          	sw	a1,16(a5)
1c008ef4:	08500713          	li	a4,133
1c008ef8:	00e7a023          	sw	a4,0(a5)
1c008efc:	bfd9                	j	1c008ed2 <rt_event_push_delayed+0x4a>

1c008efe <rt_time_wait_us>:
1c008efe:	1101                	addi	sp,sp,-32
1c008f00:	85aa                	mv	a1,a0
1c008f02:	4501                	li	a0,0
1c008f04:	ce06                	sw	ra,28(sp)
1c008f06:	cc22                	sw	s0,24(sp)
1c008f08:	c62e                	sw	a1,12(sp)
1c008f0a:	3db5                	jal	1c008d86 <rt_event_get_blocking>
1c008f0c:	45b2                	lw	a1,12(sp)
1c008f0e:	842a                	mv	s0,a0
1c008f10:	3fa5                	jal	1c008e88 <rt_event_push_delayed>
1c008f12:	8522                	mv	a0,s0
1c008f14:	4462                	lw	s0,24(sp)
1c008f16:	40f2                	lw	ra,28(sp)
1c008f18:	6105                	addi	sp,sp,32
1c008f1a:	bf21                	j	1c008e32 <rt_event_wait>

1c008f1c <__rt_time_init>:
1c008f1c:	1c0017b7          	lui	a5,0x1c001
1c008f20:	7207a623          	sw	zero,1836(a5) # 1c00172c <first_delayed>
1c008f24:	1a10b7b7          	lui	a5,0x1a10b
1c008f28:	1141                	addi	sp,sp,-16
1c008f2a:	08300713          	li	a4,131
1c008f2e:	0791                	addi	a5,a5,4
1c008f30:	c606                	sw	ra,12(sp)
1c008f32:	c422                	sw	s0,8(sp)
1c008f34:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c008f38:	1c0095b7          	lui	a1,0x1c009
1c008f3c:	f9c58593          	addi	a1,a1,-100 # 1c008f9c <__rt_timer_handler>
1c008f40:	452d                	li	a0,11
1c008f42:	3aa5                	jal	1c0088ba <rt_irq_set_handler>
1c008f44:	6785                	lui	a5,0x1
1c008f46:	1a10a737          	lui	a4,0x1a10a
1c008f4a:	80078793          	addi	a5,a5,-2048 # 800 <__rt_udma_callback_data+0x508>
1c008f4e:	1c0095b7          	lui	a1,0x1c009
1c008f52:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__rt_udma_callback_data+0x1a10950c>
1c008f56:	4601                	li	a2,0
1c008f58:	e5c58593          	addi	a1,a1,-420 # 1c008e5c <__rt_time_poweroff>
1c008f5c:	4509                	li	a0,2
1c008f5e:	3405                	jal	1c00897e <__rt_cbsys_add>
1c008f60:	1c0095b7          	lui	a1,0x1c009
1c008f64:	842a                	mv	s0,a0
1c008f66:	4601                	li	a2,0
1c008f68:	e7258593          	addi	a1,a1,-398 # 1c008e72 <__rt_time_poweron>
1c008f6c:	450d                	li	a0,3
1c008f6e:	3c01                	jal	1c00897e <__rt_cbsys_add>
1c008f70:	8d41                	or	a0,a0,s0
1c008f72:	c10d                	beqz	a0,1c008f94 <__rt_time_init+0x78>
1c008f74:	f1402673          	csrr	a2,mhartid
1c008f78:	1c000537          	lui	a0,0x1c000
1c008f7c:	40565593          	srai	a1,a2,0x5
1c008f80:	f265b5b3          	p.bclr	a1,a1,25,6
1c008f84:	f4563633          	p.bclr	a2,a2,26,5
1c008f88:	4dc50513          	addi	a0,a0,1244 # 1c0004dc <__DTOR_END__+0x184>
1c008f8c:	141000ef          	jal	ra,1c0098cc <printf>
1c008f90:	0a9000ef          	jal	ra,1c009838 <abort>
1c008f94:	40b2                	lw	ra,12(sp)
1c008f96:	4422                	lw	s0,8(sp)
1c008f98:	0141                	addi	sp,sp,16
1c008f9a:	8082                	ret

1c008f9c <__rt_timer_handler>:
1c008f9c:	7179                	addi	sp,sp,-48
1c008f9e:	ce36                	sw	a3,28(sp)
1c008fa0:	1c0016b7          	lui	a3,0x1c001
1c008fa4:	ca3e                	sw	a5,20(sp)
1c008fa6:	72c6a783          	lw	a5,1836(a3) # 1c00172c <first_delayed>
1c008faa:	cc3a                	sw	a4,24(sp)
1c008fac:	1a10b737          	lui	a4,0x1a10b
1c008fb0:	0711                	addi	a4,a4,4
1c008fb2:	d61a                	sw	t1,44(sp)
1c008fb4:	d42a                	sw	a0,40(sp)
1c008fb6:	d22e                	sw	a1,36(sp)
1c008fb8:	d032                	sw	a2,32(sp)
1c008fba:	c842                	sw	a6,16(sp)
1c008fbc:	c646                	sw	a7,12(sp)
1c008fbe:	00872703          	lw	a4,8(a4) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008fc2:	01c02583          	lw	a1,28(zero) # 1c <__rt_sched>
1c008fc6:	02002603          	lw	a2,32(zero) # 20 <__rt_sched+0x4>
1c008fca:	800008b7          	lui	a7,0x80000
1c008fce:	4501                	li	a0,0
1c008fd0:	4801                	li	a6,0
1c008fd2:	ffe8c893          	xori	a7,a7,-2
1c008fd6:	e3ad                	bnez	a5,1c009038 <__rt_timer_handler+0x9c>
1c008fd8:	00080463          	beqz	a6,1c008fe0 <__rt_timer_handler+0x44>
1c008fdc:	00b02e23          	sw	a1,28(zero) # 1c <__rt_sched>
1c008fe0:	c119                	beqz	a0,1c008fe6 <__rt_timer_handler+0x4a>
1c008fe2:	02c02023          	sw	a2,32(zero) # 20 <__rt_sched+0x4>
1c008fe6:	1a10b7b7          	lui	a5,0x1a10b
1c008fea:	08100713          	li	a4,129
1c008fee:	0791                	addi	a5,a5,4
1c008ff0:	7206a623          	sw	zero,1836(a3)
1c008ff4:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c008ff8:	6785                	lui	a5,0x1
1c008ffa:	1a10a737          	lui	a4,0x1a10a
1c008ffe:	80078793          	addi	a5,a5,-2048 # 800 <__rt_udma_callback_data+0x508>
1c009002:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__rt_udma_callback_data+0x1a10951c>
1c009006:	5332                	lw	t1,44(sp)
1c009008:	5522                	lw	a0,40(sp)
1c00900a:	5592                	lw	a1,36(sp)
1c00900c:	5602                	lw	a2,32(sp)
1c00900e:	46f2                	lw	a3,28(sp)
1c009010:	4762                	lw	a4,24(sp)
1c009012:	47d2                	lw	a5,20(sp)
1c009014:	4842                	lw	a6,16(sp)
1c009016:	48b2                	lw	a7,12(sp)
1c009018:	6145                	addi	sp,sp,48
1c00901a:	30200073          	mret
1c00901e:	0187a303          	lw	t1,24(a5)
1c009022:	0007ac23          	sw	zero,24(a5)
1c009026:	c591                	beqz	a1,1c009032 <__rt_timer_handler+0x96>
1c009028:	ce1c                	sw	a5,24(a2)
1c00902a:	863e                	mv	a2,a5
1c00902c:	4505                	li	a0,1
1c00902e:	879a                	mv	a5,t1
1c009030:	b75d                	j	1c008fd6 <__rt_timer_handler+0x3a>
1c009032:	85be                	mv	a1,a5
1c009034:	4805                	li	a6,1
1c009036:	bfd5                	j	1c00902a <__rt_timer_handler+0x8e>
1c009038:	0347a303          	lw	t1,52(a5)
1c00903c:	40670333          	sub	t1,a4,t1
1c009040:	fc68ffe3          	bleu	t1,a7,1c00901e <__rt_timer_handler+0x82>
1c009044:	00080463          	beqz	a6,1c00904c <__rt_timer_handler+0xb0>
1c009048:	00b02e23          	sw	a1,28(zero) # 1c <__rt_sched>
1c00904c:	c119                	beqz	a0,1c009052 <__rt_timer_handler+0xb6>
1c00904e:	02c02023          	sw	a2,32(zero) # 20 <__rt_sched+0x4>
1c009052:	72f6a623          	sw	a5,1836(a3)
1c009056:	1a10b6b7          	lui	a3,0x1a10b
1c00905a:	0691                	addi	a3,a3,4
1c00905c:	0086a603          	lw	a2,8(a3) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c009060:	5bdc                	lw	a5,52(a5)
1c009062:	40e78733          	sub	a4,a5,a4
1c009066:	9732                	add	a4,a4,a2
1c009068:	00e6a823          	sw	a4,16(a3)
1c00906c:	08500793          	li	a5,133
1c009070:	00f6a023          	sw	a5,0(a3)
1c009074:	bf49                	j	1c009006 <__rt_timer_handler+0x6a>

1c009076 <rt_periph_copy>:
1c009076:	1101                	addi	sp,sp,-32
1c009078:	cc22                	sw	s0,24(sp)
1c00907a:	ca26                	sw	s1,20(sp)
1c00907c:	ce06                	sw	ra,28(sp)
1c00907e:	c84a                	sw	s2,16(sp)
1c009080:	842a                	mv	s0,a0
1c009082:	84ae                	mv	s1,a1
1c009084:	30047973          	csrrci	s2,mstatus,8
1c009088:	853e                	mv	a0,a5
1c00908a:	eb91                	bnez	a5,1c00909e <rt_periph_copy+0x28>
1c00908c:	c632                	sw	a2,12(sp)
1c00908e:	c436                	sw	a3,8(sp)
1c009090:	c23a                	sw	a4,4(sp)
1c009092:	c03e                	sw	a5,0(sp)
1c009094:	31a1                	jal	1c008cdc <__rt_wait_event_prepare_blocking>
1c009096:	4782                	lw	a5,0(sp)
1c009098:	4712                	lw	a4,4(sp)
1c00909a:	46a2                	lw	a3,8(sp)
1c00909c:	4632                	lw	a2,12(sp)
1c00909e:	e419                	bnez	s0,1c0090ac <rt_periph_copy+0x36>
1c0090a0:	03450413          	addi	s0,a0,52
1c0090a4:	04052023          	sw	zero,64(a0)
1c0090a8:	04052823          	sw	zero,80(a0)
1c0090ac:	444c                	lw	a1,12(s0)
1c0090ae:	c054                	sw	a3,4(s0)
1c0090b0:	cc08                	sw	a0,24(s0)
1c0090b2:	f645b5b3          	p.bclr	a1,a1,27,4
1c0090b6:	4811                	li	a6,4
1c0090b8:	06b86263          	bltu	a6,a1,1c00911c <rt_periph_copy+0xa6>
1c0090bc:	03000593          	li	a1,48
1c0090c0:	00549313          	slli	t1,s1,0x5
1c0090c4:	959a                	add	a1,a1,t1
1c0090c6:	0005a803          	lw	a6,0(a1)
1c0090ca:	00042a23          	sw	zero,20(s0)
1c0090ce:	03000893          	li	a7,48
1c0090d2:	04081f63          	bnez	a6,1c009130 <rt_periph_copy+0xba>
1c0090d6:	c180                	sw	s0,0(a1)
1c0090d8:	006885b3          	add	a1,a7,t1
1c0090dc:	0085ae03          	lw	t3,8(a1)
1c0090e0:	c1c0                	sw	s0,4(a1)
1c0090e2:	c0474733          	p.bset	a4,a4,0,4
1c0090e6:	040e1863          	bnez	t3,1c009136 <rt_periph_copy+0xc0>
1c0090ea:	4014d813          	srai	a6,s1,0x1
1c0090ee:	1a1025b7          	lui	a1,0x1a102
1c0090f2:	08058593          	addi	a1,a1,128 # 1a102080 <__rt_udma_callback_data+0x1a101d88>
1c0090f6:	081e                	slli	a6,a6,0x7
1c0090f8:	982e                	add	a6,a6,a1
1c0090fa:	00449593          	slli	a1,s1,0x4
1c0090fe:	89c1                	andi	a1,a1,16
1c009100:	95c2                	add	a1,a1,a6
1c009102:	00858e93          	addi	t4,a1,8
1c009106:	000ea803          	lw	a6,0(t4)
1c00910a:	02087813          	andi	a6,a6,32
1c00910e:	02081463          	bnez	a6,1c009136 <rt_periph_copy+0xc0>
1c009112:	00c5a22b          	p.sw	a2,4(a1!)
1c009116:	c194                	sw	a3,0(a1)
1c009118:	00eea023          	sw	a4,0(t4)
1c00911c:	e391                	bnez	a5,1c009120 <rt_periph_copy+0xaa>
1c00911e:	31ed                	jal	1c008e08 <__rt_wait_event>
1c009120:	30091073          	csrw	mstatus,s2
1c009124:	40f2                	lw	ra,28(sp)
1c009126:	4462                	lw	s0,24(sp)
1c009128:	44d2                	lw	s1,20(sp)
1c00912a:	4942                	lw	s2,16(sp)
1c00912c:	6105                	addi	sp,sp,32
1c00912e:	8082                	ret
1c009130:	41cc                	lw	a1,4(a1)
1c009132:	c9c0                	sw	s0,20(a1)
1c009134:	b755                	j	1c0090d8 <rt_periph_copy+0x62>
1c009136:	00042823          	sw	zero,16(s0)
1c00913a:	c010                	sw	a2,0(s0)
1c00913c:	c054                	sw	a3,4(s0)
1c00913e:	c418                	sw	a4,8(s0)
1c009140:	fc0e1ee3          	bnez	t3,1c00911c <rt_periph_copy+0xa6>
1c009144:	989a                	add	a7,a7,t1
1c009146:	0088a423          	sw	s0,8(a7) # 80000008 <pulp__FC+0x80000009>
1c00914a:	bfc9                	j	1c00911c <rt_periph_copy+0xa6>

1c00914c <__rt_periph_init>:
1c00914c:	03000693          	li	a3,48
1c009150:	1c008637          	lui	a2,0x1c008
1c009154:	2a068693          	addi	a3,a3,672
1c009158:	03000713          	li	a4,48
1c00915c:	15a60613          	addi	a2,a2,346 # 1c00815a <udma_event_handler>
1c009160:	00a250fb          	lp.setupi	x1,10,1c009168 <__rt_periph_init+0x1c>
1c009164:	00c6a22b          	p.sw	a2,4(a3!)
1c009168:	0001                	nop
1c00916a:	28072023          	sw	zero,640(a4)
1c00916e:	28072223          	sw	zero,644(a4)
1c009172:	28072423          	sw	zero,648(a4)
1c009176:	28072623          	sw	zero,652(a4)
1c00917a:	28072823          	sw	zero,656(a4)
1c00917e:	28072a23          	sw	zero,660(a4)
1c009182:	28072c23          	sw	zero,664(a4)
1c009186:	1a102837          	lui	a6,0x1a102
1c00918a:	28072e23          	sw	zero,668(a4)
1c00918e:	03000793          	li	a5,48
1c009192:	4681                	li	a3,0
1c009194:	08080813          	addi	a6,a6,128 # 1a102080 <__rt_udma_callback_data+0x1a101d88>
1c009198:	0148d0fb          	lp.setupi	x1,20,1c0091ba <__rt_periph_init+0x6e>
1c00919c:	4016d713          	srai	a4,a3,0x1
1c0091a0:	00469513          	slli	a0,a3,0x4
1c0091a4:	071e                	slli	a4,a4,0x7
1c0091a6:	9742                	add	a4,a4,a6
1c0091a8:	8941                	andi	a0,a0,16
1c0091aa:	972a                	add	a4,a4,a0
1c0091ac:	0007a023          	sw	zero,0(a5)
1c0091b0:	0007a423          	sw	zero,8(a5)
1c0091b4:	c7d8                	sw	a4,12(a5)
1c0091b6:	cfd0                	sw	a2,28(a5)
1c0091b8:	0685                	addi	a3,a3,1
1c0091ba:	02078793          	addi	a5,a5,32
1c0091be:	8082                	ret

1c0091c0 <__rt_freq_init>:
1c0091c0:	1141                	addi	sp,sp,-16
1c0091c2:	c422                	sw	s0,8(sp)
1c0091c4:	c226                	sw	s1,4(sp)
1c0091c6:	c606                	sw	ra,12(sp)
1c0091c8:	227d                	jal	1c009376 <__rt_flls_constructor>
1c0091ca:	1c0017b7          	lui	a5,0x1c001
1c0091ce:	e787a783          	lw	a5,-392(a5) # 1c000e78 <__rt_platform>
1c0091d2:	1c001437          	lui	s0,0x1c001
1c0091d6:	73040493          	addi	s1,s0,1840 # 1c001730 <__rt_freq_domains>
1c0091da:	0017ae63          	p.beqimm	a5,1,1c0091f6 <__rt_freq_init+0x36>
1c0091de:	4501                	li	a0,0
1c0091e0:	28cd                	jal	1c0092d2 <__rt_fll_init>
1c0091e2:	72a42823          	sw	a0,1840(s0)
1c0091e6:	4505                	li	a0,1
1c0091e8:	20ed                	jal	1c0092d2 <__rt_fll_init>
1c0091ea:	c0c8                	sw	a0,4(s1)
1c0091ec:	40b2                	lw	ra,12(sp)
1c0091ee:	4422                	lw	s0,8(sp)
1c0091f0:	4492                	lw	s1,4(sp)
1c0091f2:	0141                	addi	sp,sp,16
1c0091f4:	8082                	ret
1c0091f6:	1c0017b7          	lui	a5,0x1c001
1c0091fa:	e887a783          	lw	a5,-376(a5) # 1c000e88 <__rt_fpga_fc_frequency>
1c0091fe:	72f42823          	sw	a5,1840(s0)
1c009202:	1c0017b7          	lui	a5,0x1c001
1c009206:	e8c7a783          	lw	a5,-372(a5) # 1c000e8c <__rt_fpga_periph_frequency>
1c00920a:	c0dc                	sw	a5,4(s1)
1c00920c:	b7c5                	j	1c0091ec <__rt_freq_init+0x2c>

1c00920e <rt_padframe_set>:
1c00920e:	300476f3          	csrrci	a3,mstatus,8
1c009212:	4158                	lw	a4,4(a0)
1c009214:	1a1047b7          	lui	a5,0x1a104
1c009218:	01078613          	addi	a2,a5,16 # 1a104010 <__rt_udma_callback_data+0x1a103d18>
1c00921c:	430c                	lw	a1,0(a4)
1c00921e:	c20c                	sw	a1,0(a2)
1c009220:	434c                	lw	a1,4(a4)
1c009222:	01478613          	addi	a2,a5,20
1c009226:	c20c                	sw	a1,0(a2)
1c009228:	470c                	lw	a1,8(a4)
1c00922a:	01878613          	addi	a2,a5,24
1c00922e:	07f1                	addi	a5,a5,28
1c009230:	c20c                	sw	a1,0(a2)
1c009232:	4758                	lw	a4,12(a4)
1c009234:	c398                	sw	a4,0(a5)
1c009236:	30069073          	csrw	mstatus,a3
1c00923a:	8082                	ret

1c00923c <__rt_padframe_init>:
1c00923c:	1c001537          	lui	a0,0x1c001
1c009240:	e7c50513          	addi	a0,a0,-388 # 1c000e7c <__rt_padframe_profiles>
1c009244:	b7e9                	j	1c00920e <rt_padframe_set>

1c009246 <__rt_ov7670_init>:
1c009246:	1c0107b7          	lui	a5,0x1c010
1c00924a:	00078023          	sb	zero,0(a5) # 1c010000 <__ov7670Inited>
1c00924e:	8082                	ret

1c009250 <__rt_i2c_init>:
1c009250:	1c0107b7          	lui	a5,0x1c010
1c009254:	06078023          	sb	zero,96(a5) # 1c010060 <__rt_i2c+0x4>
1c009258:	8082                	ret

1c00925a <__rt_fll_set_freq>:
1c00925a:	1101                	addi	sp,sp,-32
1c00925c:	cc22                	sw	s0,24(sp)
1c00925e:	ce06                	sw	ra,28(sp)
1c009260:	842a                	mv	s0,a0
1c009262:	e501                	bnez	a0,1c00926a <__rt_fll_set_freq+0x10>
1c009264:	c62e                	sw	a1,12(sp)
1c009266:	32c9                	jal	1c008c28 <__rt_bridge_req_shutdown>
1c009268:	45b2                	lw	a1,12(sp)
1c00926a:	10059733          	p.fl1	a4,a1
1c00926e:	47f5                	li	a5,29
1c009270:	4505                	li	a0,1
1c009272:	82e7b7db          	p.subun	a5,a5,a4,1
1c009276:	04f567b3          	p.max	a5,a0,a5
1c00927a:	fff78713          	addi	a4,a5,-1
1c00927e:	00f595b3          	sll	a1,a1,a5
1c009282:	00e51533          	sll	a0,a0,a4
1c009286:	1c0016b7          	lui	a3,0x1c001
1c00928a:	dc05b733          	p.bclr	a4,a1,14,0
1c00928e:	c0f7255b          	p.addunr	a0,a4,a5
1c009292:	73868693          	addi	a3,a3,1848 # 1c001738 <__rt_fll_freq>
1c009296:	00241713          	slli	a4,s0,0x2
1c00929a:	00a6e723          	p.sw	a0,a4(a3)
1c00929e:	1c001737          	lui	a4,0x1c001
1c0092a2:	f3c70713          	addi	a4,a4,-196 # 1c000f3c <__rt_fll_is_on>
1c0092a6:	9722                	add	a4,a4,s0
1c0092a8:	00074703          	lbu	a4,0(a4)
1c0092ac:	cf19                	beqz	a4,1c0092ca <__rt_fll_set_freq+0x70>
1c0092ae:	0412                	slli	s0,s0,0x4
1c0092b0:	0411                	addi	s0,s0,4
1c0092b2:	1a1006b7          	lui	a3,0x1a100
1c0092b6:	2086f703          	p.lw	a4,s0(a3)
1c0092ba:	81bd                	srli	a1,a1,0xf
1c0092bc:	de05a733          	p.insert	a4,a1,15,0
1c0092c0:	0785                	addi	a5,a5,1
1c0092c2:	c7a7a733          	p.insert	a4,a5,3,26
1c0092c6:	00e6e423          	p.sw	a4,s0(a3)
1c0092ca:	40f2                	lw	ra,28(sp)
1c0092cc:	4462                	lw	s0,24(sp)
1c0092ce:	6105                	addi	sp,sp,32
1c0092d0:	8082                	ret

1c0092d2 <__rt_fll_init>:
1c0092d2:	1141                	addi	sp,sp,-16
1c0092d4:	00451613          	slli	a2,a0,0x4
1c0092d8:	c226                	sw	s1,4(sp)
1c0092da:	00460813          	addi	a6,a2,4
1c0092de:	84aa                	mv	s1,a0
1c0092e0:	1a1006b7          	lui	a3,0x1a100
1c0092e4:	c606                	sw	ra,12(sp)
1c0092e6:	c422                	sw	s0,8(sp)
1c0092e8:	2106f703          	p.lw	a4,a6(a3)
1c0092ec:	87ba                	mv	a5,a4
1c0092ee:	04074163          	bltz	a4,1c009330 <__rt_fll_init+0x5e>
1c0092f2:	00860893          	addi	a7,a2,8
1c0092f6:	2116f503          	p.lw	a0,a7(a3)
1c0092fa:	4599                	li	a1,6
1c0092fc:	caa5a533          	p.insert	a0,a1,5,10
1c009300:	05000593          	li	a1,80
1c009304:	d705a533          	p.insert	a0,a1,11,16
1c009308:	1a1005b7          	lui	a1,0x1a100
1c00930c:	00a5e8a3          	p.sw	a0,a7(a1)
1c009310:	0631                	addi	a2,a2,12
1c009312:	20c6f683          	p.lw	a3,a2(a3)
1c009316:	14c00513          	li	a0,332
1c00931a:	d30526b3          	p.insert	a3,a0,9,16
1c00931e:	00d5e623          	p.sw	a3,a2(a1)
1c009322:	4685                	li	a3,1
1c009324:	c1e6a7b3          	p.insert	a5,a3,0,30
1c009328:	c1f6a7b3          	p.insert	a5,a3,0,31
1c00932c:	00f5e823          	p.sw	a5,a6(a1)
1c009330:	1c001637          	lui	a2,0x1c001
1c009334:	00249693          	slli	a3,s1,0x2
1c009338:	73860613          	addi	a2,a2,1848 # 1c001738 <__rt_fll_freq>
1c00933c:	96b2                	add	a3,a3,a2
1c00933e:	4280                	lw	s0,0(a3)
1c009340:	c00d                	beqz	s0,1c009362 <__rt_fll_init+0x90>
1c009342:	85a2                	mv	a1,s0
1c009344:	8526                	mv	a0,s1
1c009346:	3f11                	jal	1c00925a <__rt_fll_set_freq>
1c009348:	1c0017b7          	lui	a5,0x1c001
1c00934c:	f3c78793          	addi	a5,a5,-196 # 1c000f3c <__rt_fll_is_on>
1c009350:	4705                	li	a4,1
1c009352:	00e7c4a3          	p.sb	a4,s1(a5)
1c009356:	8522                	mv	a0,s0
1c009358:	40b2                	lw	ra,12(sp)
1c00935a:	4422                	lw	s0,8(sp)
1c00935c:	4492                	lw	s1,4(sp)
1c00935e:	0141                	addi	sp,sp,16
1c009360:	8082                	ret
1c009362:	10075733          	p.exthz	a4,a4
1c009366:	c7a797b3          	p.extractu	a5,a5,3,26
1c00936a:	073e                	slli	a4,a4,0xf
1c00936c:	17fd                	addi	a5,a5,-1
1c00936e:	00f75433          	srl	s0,a4,a5
1c009372:	c280                	sw	s0,0(a3)
1c009374:	bfd1                	j	1c009348 <__rt_fll_init+0x76>

1c009376 <__rt_flls_constructor>:
1c009376:	1c0017b7          	lui	a5,0x1c001
1c00937a:	7207ac23          	sw	zero,1848(a5) # 1c001738 <__rt_fll_freq>
1c00937e:	73878793          	addi	a5,a5,1848
1c009382:	0007a223          	sw	zero,4(a5)
1c009386:	1c0017b7          	lui	a5,0x1c001
1c00938a:	f2079e23          	sh	zero,-196(a5) # 1c000f3c <__rt_fll_is_on>
1c00938e:	8082                	ret

1c009390 <rt_is_fc>:
1c009390:	f1402573          	csrr	a0,mhartid
1c009394:	8515                	srai	a0,a0,0x5
1c009396:	f2653533          	p.bclr	a0,a0,25,6
1c00939a:	1505                	addi	a0,a0,-31
1c00939c:	00153513          	seqz	a0,a0
1c0093a0:	8082                	ret

1c0093a2 <__rt_io_end_of_flush>:
1c0093a2:	1c0017b7          	lui	a5,0x1c001
1c0093a6:	f407a223          	sw	zero,-188(a5) # 1c000f44 <__rt_io_pending_flush>
1c0093aa:	00052c23          	sw	zero,24(a0)
1c0093ae:	8082                	ret

1c0093b0 <__rt_io_unlock>:
1c0093b0:	1c0017b7          	lui	a5,0x1c001
1c0093b4:	dc47a783          	lw	a5,-572(a5) # 1c000dc4 <__hal_debug_struct+0x10>
1c0093b8:	cf81                	beqz	a5,1c0093d0 <__rt_io_unlock+0x20>
1c0093ba:	1c0017b7          	lui	a5,0x1c001
1c0093be:	f4c7a783          	lw	a5,-180(a5) # 1c000f4c <_rt_io_uart>
1c0093c2:	e799                	bnez	a5,1c0093d0 <__rt_io_unlock+0x20>
1c0093c4:	1c0017b7          	lui	a5,0x1c001
1c0093c8:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c0093cc:	0227b163          	p.bneimm	a5,2,1c0093ee <__rt_io_unlock+0x3e>
1c0093d0:	1141                	addi	sp,sp,-16
1c0093d2:	c606                	sw	ra,12(sp)
1c0093d4:	3f75                	jal	1c009390 <rt_is_fc>
1c0093d6:	c909                	beqz	a0,1c0093e8 <__rt_io_unlock+0x38>
1c0093d8:	40b2                	lw	ra,12(sp)
1c0093da:	1c001537          	lui	a0,0x1c001
1c0093de:	da450513          	addi	a0,a0,-604 # 1c000da4 <__rt_io_fc_lock>
1c0093e2:	0141                	addi	sp,sp,16
1c0093e4:	e5cff06f          	j	1c008a40 <__rt_fc_unlock>
1c0093e8:	40b2                	lw	ra,12(sp)
1c0093ea:	0141                	addi	sp,sp,16
1c0093ec:	8082                	ret
1c0093ee:	8082                	ret

1c0093f0 <__rt_io_lock>:
1c0093f0:	1c0017b7          	lui	a5,0x1c001
1c0093f4:	dc47a783          	lw	a5,-572(a5) # 1c000dc4 <__hal_debug_struct+0x10>
1c0093f8:	cf81                	beqz	a5,1c009410 <__rt_io_lock+0x20>
1c0093fa:	1c0017b7          	lui	a5,0x1c001
1c0093fe:	f4c7a783          	lw	a5,-180(a5) # 1c000f4c <_rt_io_uart>
1c009402:	e799                	bnez	a5,1c009410 <__rt_io_lock+0x20>
1c009404:	1c0017b7          	lui	a5,0x1c001
1c009408:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c00940c:	0227b163          	p.bneimm	a5,2,1c00942e <__rt_io_lock+0x3e>
1c009410:	1141                	addi	sp,sp,-16
1c009412:	c606                	sw	ra,12(sp)
1c009414:	3fb5                	jal	1c009390 <rt_is_fc>
1c009416:	c909                	beqz	a0,1c009428 <__rt_io_lock+0x38>
1c009418:	40b2                	lw	ra,12(sp)
1c00941a:	1c001537          	lui	a0,0x1c001
1c00941e:	da450513          	addi	a0,a0,-604 # 1c000da4 <__rt_io_fc_lock>
1c009422:	0141                	addi	sp,sp,16
1c009424:	deaff06f          	j	1c008a0e <__rt_fc_lock>
1c009428:	40b2                	lw	ra,12(sp)
1c00942a:	0141                	addi	sp,sp,16
1c00942c:	8082                	ret
1c00942e:	8082                	ret

1c009430 <__rt_io_start>:
1c009430:	1101                	addi	sp,sp,-32
1c009432:	0028                	addi	a0,sp,8
1c009434:	ce06                	sw	ra,28(sp)
1c009436:	cc22                	sw	s0,24(sp)
1c009438:	6b1000ef          	jal	ra,1c00a2e8 <rt_uart_conf_init>
1c00943c:	4585                	li	a1,1
1c00943e:	4501                	li	a0,0
1c009440:	8b5ff0ef          	jal	ra,1c008cf4 <rt_event_alloc>
1c009444:	547d                	li	s0,-1
1c009446:	ed15                	bnez	a0,1c009482 <__rt_io_start+0x52>
1c009448:	1c0017b7          	lui	a5,0x1c001
1c00944c:	e847a783          	lw	a5,-380(a5) # 1c000e84 <__rt_iodev_uart_baudrate>
1c009450:	842a                	mv	s0,a0
1c009452:	1c001537          	lui	a0,0x1c001
1c009456:	e3ff7597          	auipc	a1,0xe3ff7
1c00945a:	bc658593          	addi	a1,a1,-1082 # 1c <__rt_sched>
1c00945e:	e9050513          	addi	a0,a0,-368 # 1c000e90 <_edata>
1c009462:	c43e                	sw	a5,8(sp)
1c009464:	867ff0ef          	jal	ra,1c008cca <__rt_event_init>
1c009468:	1c0017b7          	lui	a5,0x1c001
1c00946c:	f347a503          	lw	a0,-204(a5) # 1c000f34 <__rt_iodev_uart_channel>
1c009470:	4681                	li	a3,0
1c009472:	4601                	li	a2,0
1c009474:	002c                	addi	a1,sp,8
1c009476:	683000ef          	jal	ra,1c00a2f8 <__rt_uart_open>
1c00947a:	1c0017b7          	lui	a5,0x1c001
1c00947e:	f4a7a623          	sw	a0,-180(a5) # 1c000f4c <_rt_io_uart>
1c009482:	8522                	mv	a0,s0
1c009484:	40f2                	lw	ra,28(sp)
1c009486:	4462                	lw	s0,24(sp)
1c009488:	6105                	addi	sp,sp,32
1c00948a:	8082                	ret

1c00948c <rt_event_execute.isra.0.constprop.6>:
1c00948c:	1141                	addi	sp,sp,-16
1c00948e:	c606                	sw	ra,12(sp)
1c009490:	c422                	sw	s0,8(sp)
1c009492:	30047473          	csrrci	s0,mstatus,8
1c009496:	4585                	li	a1,1
1c009498:	e3ff7517          	auipc	a0,0xe3ff7
1c00949c:	b8450513          	addi	a0,a0,-1148 # 1c <__rt_sched>
1c0094a0:	909ff0ef          	jal	ra,1c008da8 <__rt_event_execute>
1c0094a4:	30041073          	csrw	mstatus,s0
1c0094a8:	40b2                	lw	ra,12(sp)
1c0094aa:	4422                	lw	s0,8(sp)
1c0094ac:	0141                	addi	sp,sp,16
1c0094ae:	8082                	ret

1c0094b0 <__rt_io_uart_wait_pending>:
1c0094b0:	1141                	addi	sp,sp,-16
1c0094b2:	c422                	sw	s0,8(sp)
1c0094b4:	c606                	sw	ra,12(sp)
1c0094b6:	c226                	sw	s1,4(sp)
1c0094b8:	1c001437          	lui	s0,0x1c001
1c0094bc:	f4442783          	lw	a5,-188(s0) # 1c000f44 <__rt_io_pending_flush>
1c0094c0:	e39d                	bnez	a5,1c0094e6 <__rt_io_uart_wait_pending+0x36>
1c0094c2:	1c001437          	lui	s0,0x1c001
1c0094c6:	f4040413          	addi	s0,s0,-192 # 1c000f40 <__rt_io_event_current>
1c0094ca:	4004                	lw	s1,0(s0)
1c0094cc:	c881                	beqz	s1,1c0094dc <__rt_io_uart_wait_pending+0x2c>
1c0094ce:	35c9                	jal	1c009390 <rt_is_fc>
1c0094d0:	c511                	beqz	a0,1c0094dc <__rt_io_uart_wait_pending+0x2c>
1c0094d2:	8526                	mv	a0,s1
1c0094d4:	95fff0ef          	jal	ra,1c008e32 <rt_event_wait>
1c0094d8:	00042023          	sw	zero,0(s0)
1c0094dc:	40b2                	lw	ra,12(sp)
1c0094de:	4422                	lw	s0,8(sp)
1c0094e0:	4492                	lw	s1,4(sp)
1c0094e2:	0141                	addi	sp,sp,16
1c0094e4:	8082                	ret
1c0094e6:	35e9                	jal	1c0093b0 <__rt_io_unlock>
1c0094e8:	3755                	jal	1c00948c <rt_event_execute.isra.0.constprop.6>
1c0094ea:	3719                	jal	1c0093f0 <__rt_io_lock>
1c0094ec:	bfc1                	j	1c0094bc <__rt_io_uart_wait_pending+0xc>

1c0094ee <__rt_io_stop>:
1c0094ee:	1141                	addi	sp,sp,-16
1c0094f0:	c422                	sw	s0,8(sp)
1c0094f2:	1c001437          	lui	s0,0x1c001
1c0094f6:	c606                	sw	ra,12(sp)
1c0094f8:	f4c40413          	addi	s0,s0,-180 # 1c000f4c <_rt_io_uart>
1c0094fc:	3f55                	jal	1c0094b0 <__rt_io_uart_wait_pending>
1c0094fe:	4008                	lw	a0,0(s0)
1c009500:	4581                	li	a1,0
1c009502:	679000ef          	jal	ra,1c00a37a <rt_uart_close>
1c009506:	40b2                	lw	ra,12(sp)
1c009508:	00042023          	sw	zero,0(s0)
1c00950c:	4422                	lw	s0,8(sp)
1c00950e:	4501                	li	a0,0
1c009510:	0141                	addi	sp,sp,16
1c009512:	8082                	ret

1c009514 <__rt_io_uart_flush.constprop.5>:
1c009514:	1101                	addi	sp,sp,-32
1c009516:	ca26                	sw	s1,20(sp)
1c009518:	ce06                	sw	ra,28(sp)
1c00951a:	cc22                	sw	s0,24(sp)
1c00951c:	c84a                	sw	s2,16(sp)
1c00951e:	c64e                	sw	s3,12(sp)
1c009520:	c452                	sw	s4,8(sp)
1c009522:	1c0014b7          	lui	s1,0x1c001
1c009526:	f444a783          	lw	a5,-188(s1) # 1c000f44 <__rt_io_pending_flush>
1c00952a:	f4448413          	addi	s0,s1,-188
1c00952e:	e3a5                	bnez	a5,1c00958e <__rt_io_uart_flush.constprop.5+0x7a>
1c009530:	1c0019b7          	lui	s3,0x1c001
1c009534:	db498493          	addi	s1,s3,-588 # 1c000db4 <__hal_debug_struct>
1c009538:	0184a903          	lw	s2,24(s1)
1c00953c:	04090f63          	beqz	s2,1c00959a <__rt_io_uart_flush.constprop.5+0x86>
1c009540:	3d81                	jal	1c009390 <rt_is_fc>
1c009542:	cd21                	beqz	a0,1c00959a <__rt_io_uart_flush.constprop.5+0x86>
1c009544:	4785                	li	a5,1
1c009546:	c01c                	sw	a5,0(s0)
1c009548:	1c0017b7          	lui	a5,0x1c001
1c00954c:	f4c7aa03          	lw	s4,-180(a5) # 1c000f4c <_rt_io_uart>
1c009550:	1c0095b7          	lui	a1,0x1c009
1c009554:	db498613          	addi	a2,s3,-588
1c009558:	3a258593          	addi	a1,a1,930 # 1c0093a2 <__rt_io_end_of_flush>
1c00955c:	4501                	li	a0,0
1c00955e:	80fff0ef          	jal	ra,1c008d6c <rt_event_get>
1c009562:	004a2583          	lw	a1,4(s4)
1c009566:	87aa                	mv	a5,a0
1c009568:	4701                	li	a4,0
1c00956a:	0586                	slli	a1,a1,0x1
1c00956c:	86ca                	mv	a3,s2
1c00956e:	01c48613          	addi	a2,s1,28
1c009572:	0585                	addi	a1,a1,1
1c009574:	4501                	li	a0,0
1c009576:	3601                	jal	1c009076 <rt_periph_copy>
1c009578:	3d25                	jal	1c0093b0 <__rt_io_unlock>
1c00957a:	401c                	lw	a5,0(s0)
1c00957c:	ef89                	bnez	a5,1c009596 <__rt_io_uart_flush.constprop.5+0x82>
1c00957e:	4462                	lw	s0,24(sp)
1c009580:	40f2                	lw	ra,28(sp)
1c009582:	44d2                	lw	s1,20(sp)
1c009584:	4942                	lw	s2,16(sp)
1c009586:	49b2                	lw	s3,12(sp)
1c009588:	4a22                	lw	s4,8(sp)
1c00958a:	6105                	addi	sp,sp,32
1c00958c:	b595                	j	1c0093f0 <__rt_io_lock>
1c00958e:	350d                	jal	1c0093b0 <__rt_io_unlock>
1c009590:	3df5                	jal	1c00948c <rt_event_execute.isra.0.constprop.6>
1c009592:	3db9                	jal	1c0093f0 <__rt_io_lock>
1c009594:	bf49                	j	1c009526 <__rt_io_uart_flush.constprop.5+0x12>
1c009596:	3ddd                	jal	1c00948c <rt_event_execute.isra.0.constprop.6>
1c009598:	b7cd                	j	1c00957a <__rt_io_uart_flush.constprop.5+0x66>
1c00959a:	40f2                	lw	ra,28(sp)
1c00959c:	4462                	lw	s0,24(sp)
1c00959e:	44d2                	lw	s1,20(sp)
1c0095a0:	4942                	lw	s2,16(sp)
1c0095a2:	49b2                	lw	s3,12(sp)
1c0095a4:	4a22                	lw	s4,8(sp)
1c0095a6:	6105                	addi	sp,sp,32
1c0095a8:	8082                	ret

1c0095aa <memcpy>:
1c0095aa:	00a5e733          	or	a4,a1,a0
1c0095ae:	fa273733          	p.bclr	a4,a4,29,2
1c0095b2:	87aa                	mv	a5,a0
1c0095b4:	c709                	beqz	a4,1c0095be <memcpy+0x14>
1c0095b6:	962e                	add	a2,a2,a1
1c0095b8:	00c59f63          	bne	a1,a2,1c0095d6 <memcpy+0x2c>
1c0095bc:	8082                	ret
1c0095be:	fa263733          	p.bclr	a4,a2,29,2
1c0095c2:	fb75                	bnez	a4,1c0095b6 <memcpy+0xc>
1c0095c4:	962e                	add	a2,a2,a1
1c0095c6:	00c59363          	bne	a1,a2,1c0095cc <memcpy+0x22>
1c0095ca:	8082                	ret
1c0095cc:	0045a70b          	p.lw	a4,4(a1!)
1c0095d0:	00e7a22b          	p.sw	a4,4(a5!)
1c0095d4:	bfcd                	j	1c0095c6 <memcpy+0x1c>
1c0095d6:	0015c70b          	p.lbu	a4,1(a1!)
1c0095da:	00e780ab          	p.sb	a4,1(a5!)
1c0095de:	bfe9                	j	1c0095b8 <memcpy+0xe>

1c0095e0 <memmove>:
1c0095e0:	40b507b3          	sub	a5,a0,a1
1c0095e4:	00c7e763          	bltu	a5,a2,1c0095f2 <memmove+0x12>
1c0095e8:	962a                	add	a2,a2,a0
1c0095ea:	87aa                	mv	a5,a0
1c0095ec:	00c79f63          	bne	a5,a2,1c00960a <memmove+0x2a>
1c0095f0:	8082                	ret
1c0095f2:	167d                	addi	a2,a2,-1
1c0095f4:	00c507b3          	add	a5,a0,a2
1c0095f8:	95b2                	add	a1,a1,a2
1c0095fa:	0605                	addi	a2,a2,1
1c0095fc:	004640fb          	lp.setup	x1,a2,1c009604 <memmove+0x24>
1c009600:	fff5c70b          	p.lbu	a4,-1(a1!)
1c009604:	fee78fab          	p.sb	a4,-1(a5!)
1c009608:	8082                	ret
1c00960a:	0015c70b          	p.lbu	a4,1(a1!)
1c00960e:	00e780ab          	p.sb	a4,1(a5!)
1c009612:	bfe9                	j	1c0095ec <memmove+0xc>

1c009614 <strchr>:
1c009614:	0ff5f593          	andi	a1,a1,255
1c009618:	00054703          	lbu	a4,0(a0)
1c00961c:	87aa                	mv	a5,a0
1c00961e:	0505                	addi	a0,a0,1
1c009620:	00b70563          	beq	a4,a1,1c00962a <strchr+0x16>
1c009624:	fb75                	bnez	a4,1c009618 <strchr+0x4>
1c009626:	c191                	beqz	a1,1c00962a <strchr+0x16>
1c009628:	4781                	li	a5,0
1c00962a:	853e                	mv	a0,a5
1c00962c:	8082                	ret

1c00962e <__rt_putc_debug_bridge>:
1c00962e:	1141                	addi	sp,sp,-16
1c009630:	c422                	sw	s0,8(sp)
1c009632:	1c001437          	lui	s0,0x1c001
1c009636:	c226                	sw	s1,4(sp)
1c009638:	c606                	sw	ra,12(sp)
1c00963a:	84aa                	mv	s1,a0
1c00963c:	db440413          	addi	s0,s0,-588 # 1c000db4 <__hal_debug_struct>
1c009640:	485c                	lw	a5,20(s0)
1c009642:	c791                	beqz	a5,1c00964e <__rt_putc_debug_bridge+0x20>
1c009644:	06400513          	li	a0,100
1c009648:	8b7ff0ef          	jal	ra,1c008efe <rt_time_wait_us>
1c00964c:	bfd5                	j	1c009640 <__rt_putc_debug_bridge+0x12>
1c00964e:	4c1c                	lw	a5,24(s0)
1c009650:	00178713          	addi	a4,a5,1
1c009654:	97a2                	add	a5,a5,s0
1c009656:	00978e23          	sb	s1,28(a5)
1c00965a:	cc18                	sw	a4,24(s0)
1c00965c:	4c14                	lw	a3,24(s0)
1c00965e:	08000793          	li	a5,128
1c009662:	00f68463          	beq	a3,a5,1c00966a <__rt_putc_debug_bridge+0x3c>
1c009666:	00a4b663          	p.bneimm	s1,10,1c009672 <__rt_putc_debug_bridge+0x44>
1c00966a:	c701                	beqz	a4,1c009672 <__rt_putc_debug_bridge+0x44>
1c00966c:	c858                	sw	a4,20(s0)
1c00966e:	00042c23          	sw	zero,24(s0)
1c009672:	4c1c                	lw	a5,24(s0)
1c009674:	e799                	bnez	a5,1c009682 <__rt_putc_debug_bridge+0x54>
1c009676:	4422                	lw	s0,8(sp)
1c009678:	40b2                	lw	ra,12(sp)
1c00967a:	4492                	lw	s1,4(sp)
1c00967c:	0141                	addi	sp,sp,16
1c00967e:	d70ff06f          	j	1c008bee <__rt_bridge_printf_flush>
1c009682:	40b2                	lw	ra,12(sp)
1c009684:	4422                	lw	s0,8(sp)
1c009686:	4492                	lw	s1,4(sp)
1c009688:	0141                	addi	sp,sp,16
1c00968a:	8082                	ret

1c00968c <__rt_putc_uart>:
1c00968c:	1101                	addi	sp,sp,-32
1c00968e:	c62a                	sw	a0,12(sp)
1c009690:	ce06                	sw	ra,28(sp)
1c009692:	3d39                	jal	1c0094b0 <__rt_io_uart_wait_pending>
1c009694:	1c0017b7          	lui	a5,0x1c001
1c009698:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c00969c:	4f94                	lw	a3,24(a5)
1c00969e:	4532                	lw	a0,12(sp)
1c0096a0:	00168713          	addi	a4,a3,1 # 1a100001 <__rt_udma_callback_data+0x1a0ffd09>
1c0096a4:	cf98                	sw	a4,24(a5)
1c0096a6:	97b6                	add	a5,a5,a3
1c0096a8:	00a78e23          	sb	a0,28(a5)
1c0096ac:	08000793          	li	a5,128
1c0096b0:	00f70463          	beq	a4,a5,1c0096b8 <__rt_putc_uart+0x2c>
1c0096b4:	00a53563          	p.bneimm	a0,10,1c0096be <__rt_putc_uart+0x32>
1c0096b8:	40f2                	lw	ra,28(sp)
1c0096ba:	6105                	addi	sp,sp,32
1c0096bc:	bda1                	j	1c009514 <__rt_io_uart_flush.constprop.5>
1c0096be:	40f2                	lw	ra,28(sp)
1c0096c0:	6105                	addi	sp,sp,32
1c0096c2:	8082                	ret

1c0096c4 <tfp_putc.isra.3>:
1c0096c4:	1c0017b7          	lui	a5,0x1c001
1c0096c8:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c0096cc:	1141                	addi	sp,sp,-16
1c0096ce:	c422                	sw	s0,8(sp)
1c0096d0:	c606                	sw	ra,12(sp)
1c0096d2:	842a                	mv	s0,a0
1c0096d4:	0427b663          	p.bneimm	a5,2,1c009720 <tfp_putc.isra.3+0x5c>
1c0096d8:	3965                	jal	1c009390 <rt_is_fc>
1c0096da:	c149                	beqz	a0,1c00975c <tfp_putc.isra.3+0x98>
1c0096dc:	1c0017b7          	lui	a5,0x1c001
1c0096e0:	f4878613          	addi	a2,a5,-184 # 1c000f48 <__rt_putc_host_buffer_index>
1c0096e4:	4214                	lw	a3,0(a2)
1c0096e6:	1c010537          	lui	a0,0x1c010
1c0096ea:	f4878793          	addi	a5,a5,-184
1c0096ee:	00168713          	addi	a4,a3,1
1c0096f2:	c218                	sw	a4,0(a2)
1c0096f4:	06c50613          	addi	a2,a0,108 # 1c01006c <__rt_putc_host_buffer>
1c0096f8:	008646a3          	p.sb	s0,a3(a2)
1c0096fc:	07f00613          	li	a2,127
1c009700:	06c50693          	addi	a3,a0,108
1c009704:	00c70463          	beq	a4,a2,1c00970c <tfp_putc.isra.3+0x48>
1c009708:	04a43a63          	p.bneimm	s0,10,1c00975c <tfp_putc.isra.3+0x98>
1c00970c:	0006c723          	p.sb	zero,a4(a3)
1c009710:	4422                	lw	s0,8(sp)
1c009712:	40b2                	lw	ra,12(sp)
1c009714:	0007a023          	sw	zero,0(a5)
1c009718:	06c50513          	addi	a0,a0,108
1c00971c:	0141                	addi	sp,sp,16
1c00971e:	a24d                	j	1c0098c0 <semihost_write0>
1c009720:	1c0017b7          	lui	a5,0x1c001
1c009724:	f4c7a783          	lw	a5,-180(a5) # 1c000f4c <_rt_io_uart>
1c009728:	c789                	beqz	a5,1c009732 <tfp_putc.isra.3+0x6e>
1c00972a:	4422                	lw	s0,8(sp)
1c00972c:	40b2                	lw	ra,12(sp)
1c00972e:	0141                	addi	sp,sp,16
1c009730:	bfb1                	j	1c00968c <__rt_putc_uart>
1c009732:	1c0017b7          	lui	a5,0x1c001
1c009736:	dc47a783          	lw	a5,-572(a5) # 1c000dc4 <__hal_debug_struct+0x10>
1c00973a:	c78d                	beqz	a5,1c009764 <tfp_putc.isra.3+0xa0>
1c00973c:	6609                	lui	a2,0x2
1c00973e:	f14027f3          	csrr	a5,mhartid
1c009742:	f8060613          	addi	a2,a2,-128 # 1f80 <__rt_udma_callback_data+0x1c88>
1c009746:	00379713          	slli	a4,a5,0x3
1c00974a:	078a                	slli	a5,a5,0x2
1c00974c:	ee873733          	p.bclr	a4,a4,23,8
1c009750:	8ff1                	and	a5,a5,a2
1c009752:	97ba                	add	a5,a5,a4
1c009754:	1a10f737          	lui	a4,0x1a10f
1c009758:	00a767a3          	p.sw	a0,a5(a4)
1c00975c:	40b2                	lw	ra,12(sp)
1c00975e:	4422                	lw	s0,8(sp)
1c009760:	0141                	addi	sp,sp,16
1c009762:	8082                	ret
1c009764:	4422                	lw	s0,8(sp)
1c009766:	40b2                	lw	ra,12(sp)
1c009768:	0141                	addi	sp,sp,16
1c00976a:	b5d1                	j	1c00962e <__rt_putc_debug_bridge>

1c00976c <puts>:
1c00976c:	1141                	addi	sp,sp,-16
1c00976e:	c422                	sw	s0,8(sp)
1c009770:	c606                	sw	ra,12(sp)
1c009772:	842a                	mv	s0,a0
1c009774:	39b5                	jal	1c0093f0 <__rt_io_lock>
1c009776:	0014450b          	p.lbu	a0,1(s0!)
1c00977a:	c119                	beqz	a0,1c009780 <puts+0x14>
1c00977c:	37a1                	jal	1c0096c4 <tfp_putc.isra.3>
1c00977e:	bfe5                	j	1c009776 <puts+0xa>
1c009780:	4529                	li	a0,10
1c009782:	3789                	jal	1c0096c4 <tfp_putc.isra.3>
1c009784:	3135                	jal	1c0093b0 <__rt_io_unlock>
1c009786:	40b2                	lw	ra,12(sp)
1c009788:	4422                	lw	s0,8(sp)
1c00978a:	4501                	li	a0,0
1c00978c:	0141                	addi	sp,sp,16
1c00978e:	8082                	ret

1c009790 <fputc_locked>:
1c009790:	1141                	addi	sp,sp,-16
1c009792:	c422                	sw	s0,8(sp)
1c009794:	842a                	mv	s0,a0
1c009796:	0ff57513          	andi	a0,a0,255
1c00979a:	c606                	sw	ra,12(sp)
1c00979c:	3725                	jal	1c0096c4 <tfp_putc.isra.3>
1c00979e:	8522                	mv	a0,s0
1c0097a0:	40b2                	lw	ra,12(sp)
1c0097a2:	4422                	lw	s0,8(sp)
1c0097a4:	0141                	addi	sp,sp,16
1c0097a6:	8082                	ret

1c0097a8 <_prf_locked>:
1c0097a8:	1101                	addi	sp,sp,-32
1c0097aa:	ce06                	sw	ra,28(sp)
1c0097ac:	c02a                	sw	a0,0(sp)
1c0097ae:	c62e                	sw	a1,12(sp)
1c0097b0:	c432                	sw	a2,8(sp)
1c0097b2:	c236                	sw	a3,4(sp)
1c0097b4:	3935                	jal	1c0093f0 <__rt_io_lock>
1c0097b6:	4692                	lw	a3,4(sp)
1c0097b8:	4622                	lw	a2,8(sp)
1c0097ba:	45b2                	lw	a1,12(sp)
1c0097bc:	4502                	lw	a0,0(sp)
1c0097be:	2425                	jal	1c0099e6 <_prf>
1c0097c0:	c02a                	sw	a0,0(sp)
1c0097c2:	36fd                	jal	1c0093b0 <__rt_io_unlock>
1c0097c4:	40f2                	lw	ra,28(sp)
1c0097c6:	4502                	lw	a0,0(sp)
1c0097c8:	6105                	addi	sp,sp,32
1c0097ca:	8082                	ret

1c0097cc <exit>:
1c0097cc:	1141                	addi	sp,sp,-16
1c0097ce:	c422                	sw	s0,8(sp)
1c0097d0:	1a104437          	lui	s0,0x1a104
1c0097d4:	c04a                	sw	s2,0(sp)
1c0097d6:	0a040793          	addi	a5,s0,160 # 1a1040a0 <__rt_udma_callback_data+0x1a103da8>
1c0097da:	c606                	sw	ra,12(sp)
1c0097dc:	c226                	sw	s1,4(sp)
1c0097de:	c1f54933          	p.bset	s2,a0,0,31
1c0097e2:	0127a023          	sw	s2,0(a5)
1c0097e6:	1c0017b7          	lui	a5,0x1c001
1c0097ea:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c0097ee:	0027be63          	p.bneimm	a5,2,1c00980a <exit+0x3e>
1c0097f2:	c519                	beqz	a0,1c009800 <exit+0x34>
1c0097f4:	00020537          	lui	a0,0x20
1c0097f8:	02350513          	addi	a0,a0,35 # 20023 <__rt_udma_callback_data+0x1fd2b>
1c0097fc:	20e9                	jal	1c0098c6 <semihost_exit>
1c0097fe:	a001                	j	1c0097fe <exit+0x32>
1c009800:	00020537          	lui	a0,0x20
1c009804:	02650513          	addi	a0,a0,38 # 20026 <__rt_udma_callback_data+0x1fd2e>
1c009808:	bfd5                	j	1c0097fc <exit+0x30>
1c00980a:	1c0014b7          	lui	s1,0x1c001
1c00980e:	db448493          	addi	s1,s1,-588 # 1c000db4 <__hal_debug_struct>
1c009812:	bdcff0ef          	jal	ra,1c008bee <__rt_bridge_printf_flush>
1c009816:	0124a623          	sw	s2,12(s1)
1c00981a:	b96ff0ef          	jal	ra,1c008bb0 <__rt_bridge_send_notif>
1c00981e:	449c                	lw	a5,8(s1)
1c009820:	dff9                	beqz	a5,1c0097fe <exit+0x32>
1c009822:	07440413          	addi	s0,s0,116
1c009826:	401c                	lw	a5,0(s0)
1c009828:	83a5                	srli	a5,a5,0x9
1c00982a:	f837b7b3          	p.bclr	a5,a5,28,3
1c00982e:	fe77bce3          	p.bneimm	a5,7,1c009826 <exit+0x5a>
1c009832:	b9eff0ef          	jal	ra,1c008bd0 <__rt_bridge_clear_notif>
1c009836:	b7e1                	j	1c0097fe <exit+0x32>

1c009838 <abort>:
1c009838:	1141                	addi	sp,sp,-16
1c00983a:	557d                	li	a0,-1
1c00983c:	c606                	sw	ra,12(sp)
1c00983e:	3779                	jal	1c0097cc <exit>

1c009840 <__rt_io_init>:
1c009840:	1c0017b7          	lui	a5,0x1c001
1c009844:	f407a423          	sw	zero,-184(a5) # 1c000f48 <__rt_putc_host_buffer_index>
1c009848:	1c0017b7          	lui	a5,0x1c001
1c00984c:	da478793          	addi	a5,a5,-604 # 1c000da4 <__rt_io_fc_lock>
1c009850:	0007a223          	sw	zero,4(a5)
1c009854:	0007a023          	sw	zero,0(a5)
1c009858:	0007a623          	sw	zero,12(a5)
1c00985c:	1c0017b7          	lui	a5,0x1c001
1c009860:	f407a623          	sw	zero,-180(a5) # 1c000f4c <_rt_io_uart>
1c009864:	1c0017b7          	lui	a5,0x1c001
1c009868:	f407a023          	sw	zero,-192(a5) # 1c000f40 <__rt_io_event_current>
1c00986c:	1c0017b7          	lui	a5,0x1c001
1c009870:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c009874:	0217be63          	p.bneimm	a5,1,1c0098b0 <__rt_io_init+0x70>
1c009878:	1c0095b7          	lui	a1,0x1c009
1c00987c:	1141                	addi	sp,sp,-16
1c00987e:	4601                	li	a2,0
1c009880:	43058593          	addi	a1,a1,1072 # 1c009430 <__rt_io_start>
1c009884:	4501                	li	a0,0
1c009886:	c606                	sw	ra,12(sp)
1c009888:	8f6ff0ef          	jal	ra,1c00897e <__rt_cbsys_add>
1c00988c:	1c0095b7          	lui	a1,0x1c009
1c009890:	4ee58593          	addi	a1,a1,1262 # 1c0094ee <__rt_io_stop>
1c009894:	4601                	li	a2,0
1c009896:	4505                	li	a0,1
1c009898:	8e6ff0ef          	jal	ra,1c00897e <__rt_cbsys_add>
1c00989c:	40b2                	lw	ra,12(sp)
1c00989e:	1c0017b7          	lui	a5,0x1c001
1c0098a2:	f407a223          	sw	zero,-188(a5) # 1c000f44 <__rt_io_pending_flush>
1c0098a6:	4585                	li	a1,1
1c0098a8:	4501                	li	a0,0
1c0098aa:	0141                	addi	sp,sp,16
1c0098ac:	c48ff06f          	j	1c008cf4 <rt_event_alloc>
1c0098b0:	8082                	ret

1c0098b2 <__internal_semihost>:
1c0098b2:	01f01013          	slli	zero,zero,0x1f
1c0098b6:	00100073          	ebreak
1c0098ba:	40705013          	srai	zero,zero,0x7
1c0098be:	8082                	ret

1c0098c0 <semihost_write0>:
1c0098c0:	85aa                	mv	a1,a0
1c0098c2:	4511                	li	a0,4
1c0098c4:	b7fd                	j	1c0098b2 <__internal_semihost>

1c0098c6 <semihost_exit>:
1c0098c6:	85aa                	mv	a1,a0
1c0098c8:	4561                	li	a0,24
1c0098ca:	b7e5                	j	1c0098b2 <__internal_semihost>

1c0098cc <printf>:
1c0098cc:	7139                	addi	sp,sp,-64
1c0098ce:	d432                	sw	a2,40(sp)
1c0098d0:	862a                	mv	a2,a0
1c0098d2:	1c009537          	lui	a0,0x1c009
1c0098d6:	d22e                	sw	a1,36(sp)
1c0098d8:	d636                	sw	a3,44(sp)
1c0098da:	4589                	li	a1,2
1c0098dc:	1054                	addi	a3,sp,36
1c0098de:	79050513          	addi	a0,a0,1936 # 1c009790 <fputc_locked>
1c0098e2:	ce06                	sw	ra,28(sp)
1c0098e4:	d83a                	sw	a4,48(sp)
1c0098e6:	da3e                	sw	a5,52(sp)
1c0098e8:	dc42                	sw	a6,56(sp)
1c0098ea:	de46                	sw	a7,60(sp)
1c0098ec:	c636                	sw	a3,12(sp)
1c0098ee:	3d6d                	jal	1c0097a8 <_prf_locked>
1c0098f0:	40f2                	lw	ra,28(sp)
1c0098f2:	6121                	addi	sp,sp,64
1c0098f4:	8082                	ret

1c0098f6 <_to_x>:
1c0098f6:	872a                	mv	a4,a0
1c0098f8:	87aa                	mv	a5,a0
1c0098fa:	4325                	li	t1,9
1c0098fc:	02c5f8b3          	remu	a7,a1,a2
1c009900:	02700513          	li	a0,39
1c009904:	02c5d5b3          	divu	a1,a1,a2
1c009908:	0ff8f813          	andi	a6,a7,255
1c00990c:	01136363          	bltu	t1,a7,1c009912 <_to_x+0x1c>
1c009910:	4501                	li	a0,0
1c009912:	03080813          	addi	a6,a6,48
1c009916:	9542                	add	a0,a0,a6
1c009918:	00a780ab          	p.sb	a0,1(a5!)
1c00991c:	f1e5                	bnez	a1,1c0098fc <_to_x+0x6>
1c00991e:	03000613          	li	a2,48
1c009922:	40e78533          	sub	a0,a5,a4
1c009926:	00d54763          	blt	a0,a3,1c009934 <_to_x+0x3e>
1c00992a:	fe078fab          	p.sb	zero,-1(a5!)
1c00992e:	00f76663          	bltu	a4,a5,1c00993a <_to_x+0x44>
1c009932:	8082                	ret
1c009934:	00c780ab          	p.sb	a2,1(a5!)
1c009938:	b7ed                	j	1c009922 <_to_x+0x2c>
1c00993a:	00074603          	lbu	a2,0(a4) # 1a10f000 <__rt_udma_callback_data+0x1a10ed08>
1c00993e:	0007c683          	lbu	a3,0(a5)
1c009942:	fec78fab          	p.sb	a2,-1(a5!)
1c009946:	00d700ab          	p.sb	a3,1(a4!)
1c00994a:	b7d5                	j	1c00992e <_to_x+0x38>

1c00994c <_rlrshift>:
1c00994c:	411c                	lw	a5,0(a0)
1c00994e:	4154                	lw	a3,4(a0)
1c009950:	fc17b733          	p.bclr	a4,a5,30,1
1c009954:	01f69613          	slli	a2,a3,0x1f
1c009958:	8385                	srli	a5,a5,0x1
1c00995a:	8fd1                	or	a5,a5,a2
1c00995c:	97ba                	add	a5,a5,a4
1c00995e:	8285                	srli	a3,a3,0x1
1c009960:	00e7b733          	sltu	a4,a5,a4
1c009964:	9736                	add	a4,a4,a3
1c009966:	c11c                	sw	a5,0(a0)
1c009968:	c158                	sw	a4,4(a0)
1c00996a:	8082                	ret

1c00996c <_ldiv5>:
1c00996c:	4118                	lw	a4,0(a0)
1c00996e:	4154                	lw	a3,4(a0)
1c009970:	4615                	li	a2,5
1c009972:	00270793          	addi	a5,a4,2
1c009976:	00e7b733          	sltu	a4,a5,a4
1c00997a:	9736                	add	a4,a4,a3
1c00997c:	02c755b3          	divu	a1,a4,a2
1c009980:	42b61733          	p.msu	a4,a2,a1
1c009984:	01d71693          	slli	a3,a4,0x1d
1c009988:	0037d713          	srli	a4,a5,0x3
1c00998c:	8f55                	or	a4,a4,a3
1c00998e:	02c75733          	divu	a4,a4,a2
1c009992:	01d75693          	srli	a3,a4,0x1d
1c009996:	070e                	slli	a4,a4,0x3
1c009998:	42e617b3          	p.msu	a5,a2,a4
1c00999c:	95b6                	add	a1,a1,a3
1c00999e:	02c7d7b3          	divu	a5,a5,a2
1c0099a2:	973e                	add	a4,a4,a5
1c0099a4:	00f737b3          	sltu	a5,a4,a5
1c0099a8:	97ae                	add	a5,a5,a1
1c0099aa:	c118                	sw	a4,0(a0)
1c0099ac:	c15c                	sw	a5,4(a0)
1c0099ae:	8082                	ret

1c0099b0 <_get_digit>:
1c0099b0:	419c                	lw	a5,0(a1)
1c0099b2:	03000713          	li	a4,48
1c0099b6:	02f05563          	blez	a5,1c0099e0 <_get_digit+0x30>
1c0099ba:	17fd                	addi	a5,a5,-1
1c0099bc:	c19c                	sw	a5,0(a1)
1c0099be:	411c                	lw	a5,0(a0)
1c0099c0:	4729                	li	a4,10
1c0099c2:	4150                	lw	a2,4(a0)
1c0099c4:	02f706b3          	mul	a3,a4,a5
1c0099c8:	02f737b3          	mulhu	a5,a4,a5
1c0099cc:	c114                	sw	a3,0(a0)
1c0099ce:	42c707b3          	p.mac	a5,a4,a2
1c0099d2:	01c7d713          	srli	a4,a5,0x1c
1c0099d6:	c7c7b7b3          	p.bclr	a5,a5,3,28
1c0099da:	03070713          	addi	a4,a4,48
1c0099de:	c15c                	sw	a5,4(a0)
1c0099e0:	0ff77513          	andi	a0,a4,255
1c0099e4:	8082                	ret

1c0099e6 <_prf>:
1c0099e6:	714d                	addi	sp,sp,-336
1c0099e8:	14912223          	sw	s1,324(sp)
1c0099ec:	15212023          	sw	s2,320(sp)
1c0099f0:	13812423          	sw	s8,296(sp)
1c0099f4:	14112623          	sw	ra,332(sp)
1c0099f8:	14812423          	sw	s0,328(sp)
1c0099fc:	13312e23          	sw	s3,316(sp)
1c009a00:	13412c23          	sw	s4,312(sp)
1c009a04:	13512a23          	sw	s5,308(sp)
1c009a08:	13612823          	sw	s6,304(sp)
1c009a0c:	13712623          	sw	s7,300(sp)
1c009a10:	13912223          	sw	s9,292(sp)
1c009a14:	13a12023          	sw	s10,288(sp)
1c009a18:	11b12e23          	sw	s11,284(sp)
1c009a1c:	cc2a                	sw	a0,24(sp)
1c009a1e:	ce2e                	sw	a1,28(sp)
1c009a20:	84b2                	mv	s1,a2
1c009a22:	8c36                	mv	s8,a3
1c009a24:	4901                	li	s2,0
1c009a26:	0004c503          	lbu	a0,0(s1)
1c009a2a:	00148b93          	addi	s7,s1,1
1c009a2e:	c919                	beqz	a0,1c009a44 <_prf+0x5e>
1c009a30:	02500793          	li	a5,37
1c009a34:	14f50563          	beq	a0,a5,1c009b7e <_prf+0x198>
1c009a38:	45f2                	lw	a1,28(sp)
1c009a3a:	4762                	lw	a4,24(sp)
1c009a3c:	9702                	jalr	a4
1c009a3e:	05f53063          	p.bneimm	a0,-1,1c009a7e <_prf+0x98>
1c009a42:	597d                	li	s2,-1
1c009a44:	14c12083          	lw	ra,332(sp)
1c009a48:	14812403          	lw	s0,328(sp)
1c009a4c:	854a                	mv	a0,s2
1c009a4e:	14412483          	lw	s1,324(sp)
1c009a52:	14012903          	lw	s2,320(sp)
1c009a56:	13c12983          	lw	s3,316(sp)
1c009a5a:	13812a03          	lw	s4,312(sp)
1c009a5e:	13412a83          	lw	s5,308(sp)
1c009a62:	13012b03          	lw	s6,304(sp)
1c009a66:	12c12b83          	lw	s7,300(sp)
1c009a6a:	12812c03          	lw	s8,296(sp)
1c009a6e:	12412c83          	lw	s9,292(sp)
1c009a72:	12012d03          	lw	s10,288(sp)
1c009a76:	11c12d83          	lw	s11,284(sp)
1c009a7a:	6171                	addi	sp,sp,336
1c009a7c:	8082                	ret
1c009a7e:	0905                	addi	s2,s2,1
1c009a80:	8a62                	mv	s4,s8
1c009a82:	84de                	mv	s1,s7
1c009a84:	8c52                	mv	s8,s4
1c009a86:	b745                	j	1c009a26 <_prf+0x40>
1c009a88:	0f3a8263          	beq	s5,s3,1c009b6c <_prf+0x186>
1c009a8c:	0d59e563          	bltu	s3,s5,1c009b56 <_prf+0x170>
1c009a90:	fa0a8ae3          	beqz	s5,1c009a44 <_prf+0x5e>
1c009a94:	0dba8a63          	beq	s5,s11,1c009b68 <_prf+0x182>
1c009a98:	8ba6                	mv	s7,s1
1c009a9a:	000bca83          	lbu	s5,0(s7)
1c009a9e:	1c0007b7          	lui	a5,0x1c000
1c009aa2:	52478513          	addi	a0,a5,1316 # 1c000524 <__DTOR_END__+0x1cc>
1c009aa6:	85d6                	mv	a1,s5
1c009aa8:	001b8493          	addi	s1,s7,1
1c009aac:	36a5                	jal	1c009614 <strchr>
1c009aae:	fd69                	bnez	a0,1c009a88 <_prf+0xa2>
1c009ab0:	02a00693          	li	a3,42
1c009ab4:	0eda9763          	bne	s5,a3,1c009ba2 <_prf+0x1bc>
1c009ab8:	000c2983          	lw	s3,0(s8)
1c009abc:	004c0693          	addi	a3,s8,4
1c009ac0:	0009d663          	bgez	s3,1c009acc <_prf+0xe6>
1c009ac4:	4705                	li	a4,1
1c009ac6:	413009b3          	neg	s3,s3
1c009aca:	ca3a                	sw	a4,20(sp)
1c009acc:	0004ca83          	lbu	s5,0(s1)
1c009ad0:	8c36                	mv	s8,a3
1c009ad2:	002b8493          	addi	s1,s7,2
1c009ad6:	0c800713          	li	a4,200
1c009ada:	02e00693          	li	a3,46
1c009ade:	04e9d9b3          	p.minu	s3,s3,a4
1c009ae2:	5d7d                	li	s10,-1
1c009ae4:	02da9463          	bne	s5,a3,1c009b0c <_prf+0x126>
1c009ae8:	0004c703          	lbu	a4,0(s1)
1c009aec:	02a00793          	li	a5,42
1c009af0:	0ef71c63          	bne	a4,a5,1c009be8 <_prf+0x202>
1c009af4:	000c2d03          	lw	s10,0(s8)
1c009af8:	0485                	addi	s1,s1,1
1c009afa:	0c11                	addi	s8,s8,4
1c009afc:	0c800793          	li	a5,200
1c009b00:	01a7d363          	ble	s10,a5,1c009b06 <_prf+0x120>
1c009b04:	5d7d                	li	s10,-1
1c009b06:	0004ca83          	lbu	s5,0(s1)
1c009b0a:	0485                	addi	s1,s1,1
1c009b0c:	1c0007b7          	lui	a5,0x1c000
1c009b10:	85d6                	mv	a1,s5
1c009b12:	52c78513          	addi	a0,a5,1324 # 1c00052c <__DTOR_END__+0x1d4>
1c009b16:	3cfd                	jal	1c009614 <strchr>
1c009b18:	c501                	beqz	a0,1c009b20 <_prf+0x13a>
1c009b1a:	0004ca83          	lbu	s5,0(s1)
1c009b1e:	0485                	addi	s1,s1,1
1c009b20:	06700693          	li	a3,103
1c009b24:	1356c563          	blt	a3,s5,1c009c4e <_prf+0x268>
1c009b28:	06500693          	li	a3,101
1c009b2c:	20dad063          	ble	a3,s5,1c009d2c <_prf+0x346>
1c009b30:	04700693          	li	a3,71
1c009b34:	0b56ce63          	blt	a3,s5,1c009bf0 <_prf+0x20a>
1c009b38:	04500693          	li	a3,69
1c009b3c:	1edad863          	ble	a3,s5,1c009d2c <_prf+0x346>
1c009b40:	f00a82e3          	beqz	s5,1c009a44 <_prf+0x5e>
1c009b44:	02500713          	li	a4,37
1c009b48:	64ea8a63          	beq	s5,a4,1c00a19c <_prf+0x7b6>
1c009b4c:	0c800713          	li	a4,200
1c009b50:	65575e63          	ble	s5,a4,1c00a1ac <_prf+0x7c6>
1c009b54:	b5fd                	j	1c009a42 <_prf+0x5c>
1c009b56:	034a8163          	beq	s5,s4,1c009b78 <_prf+0x192>
1c009b5a:	016a8b63          	beq	s5,s6,1c009b70 <_prf+0x18a>
1c009b5e:	f3aa9de3          	bne	s5,s10,1c009a98 <_prf+0xb2>
1c009b62:	4785                	li	a5,1
1c009b64:	c83e                	sw	a5,16(sp)
1c009b66:	bf0d                	j	1c009a98 <_prf+0xb2>
1c009b68:	4405                	li	s0,1
1c009b6a:	b73d                	j	1c009a98 <_prf+0xb2>
1c009b6c:	4c85                	li	s9,1
1c009b6e:	b72d                	j	1c009a98 <_prf+0xb2>
1c009b70:	03000713          	li	a4,48
1c009b74:	c63a                	sw	a4,12(sp)
1c009b76:	b70d                	j	1c009a98 <_prf+0xb2>
1c009b78:	4785                	li	a5,1
1c009b7a:	ca3e                	sw	a5,20(sp)
1c009b7c:	bf31                	j	1c009a98 <_prf+0xb2>
1c009b7e:	02000713          	li	a4,32
1c009b82:	c63a                	sw	a4,12(sp)
1c009b84:	4401                	li	s0,0
1c009b86:	c802                	sw	zero,16(sp)
1c009b88:	ca02                	sw	zero,20(sp)
1c009b8a:	4c81                	li	s9,0
1c009b8c:	02300993          	li	s3,35
1c009b90:	02d00a13          	li	s4,45
1c009b94:	03000b13          	li	s6,48
1c009b98:	02b00d13          	li	s10,43
1c009b9c:	02000d93          	li	s11,32
1c009ba0:	bded                	j	1c009a9a <_prf+0xb4>
1c009ba2:	fd0a8693          	addi	a3,s5,-48
1c009ba6:	4625                	li	a2,9
1c009ba8:	4981                	li	s3,0
1c009baa:	f2d666e3          	bltu	a2,a3,1c009ad6 <_prf+0xf0>
1c009bae:	46a5                	li	a3,9
1c009bb0:	45a9                	li	a1,10
1c009bb2:	84de                	mv	s1,s7
1c009bb4:	0014c70b          	p.lbu	a4,1(s1!)
1c009bb8:	fd070613          	addi	a2,a4,-48
1c009bbc:	8aba                	mv	s5,a4
1c009bbe:	f0c6ece3          	bltu	a3,a2,1c009ad6 <_prf+0xf0>
1c009bc2:	42b98733          	p.mac	a4,s3,a1
1c009bc6:	8ba6                	mv	s7,s1
1c009bc8:	fd070993          	addi	s3,a4,-48
1c009bcc:	b7dd                	j	1c009bb2 <_prf+0x1cc>
1c009bce:	42ad07b3          	p.mac	a5,s10,a0
1c009bd2:	84b6                	mv	s1,a3
1c009bd4:	fd078d13          	addi	s10,a5,-48
1c009bd8:	86a6                	mv	a3,s1
1c009bda:	0016c78b          	p.lbu	a5,1(a3!)
1c009bde:	fd078593          	addi	a1,a5,-48
1c009be2:	feb676e3          	bleu	a1,a2,1c009bce <_prf+0x1e8>
1c009be6:	bf19                	j	1c009afc <_prf+0x116>
1c009be8:	4d01                	li	s10,0
1c009bea:	4625                	li	a2,9
1c009bec:	4529                	li	a0,10
1c009bee:	b7ed                	j	1c009bd8 <_prf+0x1f2>
1c009bf0:	06300693          	li	a3,99
1c009bf4:	0cda8e63          	beq	s5,a3,1c009cd0 <_prf+0x2ea>
1c009bf8:	0756cb63          	blt	a3,s5,1c009c6e <_prf+0x288>
1c009bfc:	05800693          	li	a3,88
1c009c00:	f4da96e3          	bne	s5,a3,1c009b4c <_prf+0x166>
1c009c04:	04410b93          	addi	s7,sp,68
1c009c08:	004c0a13          	addi	s4,s8,4
1c009c0c:	000c2583          	lw	a1,0(s8)
1c009c10:	845e                	mv	s0,s7
1c009c12:	000c8963          	beqz	s9,1c009c24 <_prf+0x23e>
1c009c16:	76e1                	lui	a3,0xffff8
1c009c18:	8306c693          	xori	a3,a3,-2000
1c009c1c:	04d11223          	sh	a3,68(sp)
1c009c20:	04610413          	addi	s0,sp,70
1c009c24:	86ea                	mv	a3,s10
1c009c26:	4641                	li	a2,16
1c009c28:	8522                	mv	a0,s0
1c009c2a:	31f1                	jal	1c0098f6 <_to_x>
1c009c2c:	05800693          	li	a3,88
1c009c30:	00da9863          	bne	s5,a3,1c009c40 <_prf+0x25a>
1c009c34:	86de                	mv	a3,s7
1c009c36:	45e5                	li	a1,25
1c009c38:	0016c78b          	p.lbu	a5,1(a3!) # ffff8001 <pulp__FC+0xffff8002>
1c009c3c:	54079663          	bnez	a5,1c00a188 <_prf+0x7a2>
1c009c40:	41740433          	sub	s0,s0,s7
1c009c44:	9522                	add	a0,a0,s0
1c009c46:	01903433          	snez	s0,s9
1c009c4a:	0406                	slli	s0,s0,0x1
1c009c4c:	a0e9                	j	1c009d16 <_prf+0x330>
1c009c4e:	07000693          	li	a3,112
1c009c52:	4eda8463          	beq	s5,a3,1c00a13a <_prf+0x754>
1c009c56:	0556c163          	blt	a3,s5,1c009c98 <_prf+0x2b2>
1c009c5a:	06e00693          	li	a3,110
1c009c5e:	46da8163          	beq	s5,a3,1c00a0c0 <_prf+0x6da>
1c009c62:	4756c663          	blt	a3,s5,1c00a0ce <_prf+0x6e8>
1c009c66:	06900693          	li	a3,105
1c009c6a:	eeda91e3          	bne	s5,a3,1c009b4c <_prf+0x166>
1c009c6e:	000c2a83          	lw	s5,0(s8)
1c009c72:	004c0a13          	addi	s4,s8,4
1c009c76:	04410b13          	addi	s6,sp,68
1c009c7a:	060ad663          	bgez	s5,1c009ce6 <_prf+0x300>
1c009c7e:	02d00693          	li	a3,45
1c009c82:	04d10223          	sb	a3,68(sp)
1c009c86:	80000737          	lui	a4,0x80000
1c009c8a:	415005b3          	neg	a1,s5
1c009c8e:	06ea9663          	bne	s5,a4,1c009cfa <_prf+0x314>
1c009c92:	800005b7          	lui	a1,0x80000
1c009c96:	a095                	j	1c009cfa <_prf+0x314>
1c009c98:	07500693          	li	a3,117
1c009c9c:	4cda8c63          	beq	s5,a3,1c00a174 <_prf+0x78e>
1c009ca0:	07800693          	li	a3,120
1c009ca4:	f6da80e3          	beq	s5,a3,1c009c04 <_prf+0x21e>
1c009ca8:	07300693          	li	a3,115
1c009cac:	eada90e3          	bne	s5,a3,1c009b4c <_prf+0x166>
1c009cb0:	000c2583          	lw	a1,0(s8)
1c009cb4:	004c0a13          	addi	s4,s8,4
1c009cb8:	4c81                	li	s9,0
1c009cba:	86ae                	mv	a3,a1
1c009cbc:	0c8350fb          	lp.setupi	x1,200,1c009cc8 <_prf+0x2e2>
1c009cc0:	0016c60b          	p.lbu	a2,1(a3!)
1c009cc4:	48060d63          	beqz	a2,1c00a15e <_prf+0x778>
1c009cc8:	0c85                	addi	s9,s9,1
1c009cca:	480d5c63          	bgez	s10,1c00a162 <_prf+0x77c>
1c009cce:	a971                	j	1c00a16a <_prf+0x784>
1c009cd0:	000c2783          	lw	a5,0(s8)
1c009cd4:	004c0a13          	addi	s4,s8,4
1c009cd8:	040102a3          	sb	zero,69(sp)
1c009cdc:	04f10223          	sb	a5,68(sp)
1c009ce0:	4c85                	li	s9,1
1c009ce2:	4401                	li	s0,0
1c009ce4:	a901                	j	1c00a0f4 <_prf+0x70e>
1c009ce6:	47c2                	lw	a5,16(sp)
1c009ce8:	02b00693          	li	a3,43
1c009cec:	e781                	bnez	a5,1c009cf4 <_prf+0x30e>
1c009cee:	c815                	beqz	s0,1c009d22 <_prf+0x33c>
1c009cf0:	02000693          	li	a3,32
1c009cf4:	04d10223          	sb	a3,68(sp)
1c009cf8:	85d6                	mv	a1,s5
1c009cfa:	04510c13          	addi	s8,sp,69
1c009cfe:	86ea                	mv	a3,s10
1c009d00:	4629                	li	a2,10
1c009d02:	8562                	mv	a0,s8
1c009d04:	3ecd                	jal	1c0098f6 <_to_x>
1c009d06:	4742                	lw	a4,16(sp)
1c009d08:	9562                	add	a0,a0,s8
1c009d0a:	41650533          	sub	a0,a0,s6
1c009d0e:	ef09                	bnez	a4,1c009d28 <_prf+0x342>
1c009d10:	e019                	bnez	s0,1c009d16 <_prf+0x330>
1c009d12:	01fad413          	srli	s0,s5,0x1f
1c009d16:	0bfd2363          	p.beqimm	s10,-1,1c009dbc <_prf+0x3d6>
1c009d1a:	02000713          	li	a4,32
1c009d1e:	c63a                	sw	a4,12(sp)
1c009d20:	a871                	j	1c009dbc <_prf+0x3d6>
1c009d22:	85d6                	mv	a1,s5
1c009d24:	8c5a                	mv	s8,s6
1c009d26:	bfe1                	j	1c009cfe <_prf+0x318>
1c009d28:	4442                	lw	s0,16(sp)
1c009d2a:	b7f5                	j	1c009d16 <_prf+0x330>
1c009d2c:	0c1d                	addi	s8,s8,7
1c009d2e:	c40c3c33          	p.bclr	s8,s8,2,0
1c009d32:	000c2883          	lw	a7,0(s8)
1c009d36:	004c2303          	lw	t1,4(s8)
1c009d3a:	800007b7          	lui	a5,0x80000
1c009d3e:	0158d593          	srli	a1,a7,0x15
1c009d42:	00b31693          	slli	a3,t1,0xb
1c009d46:	8ecd                	or	a3,a3,a1
1c009d48:	fff7c793          	not	a5,a5
1c009d4c:	01435613          	srli	a2,t1,0x14
1c009d50:	08ae                	slli	a7,a7,0xb
1c009d52:	8efd                	and	a3,a3,a5
1c009d54:	e8b63633          	p.bclr	a2,a2,20,11
1c009d58:	d846                	sw	a7,48(sp)
1c009d5a:	da36                	sw	a3,52(sp)
1c009d5c:	7ff00593          	li	a1,2047
1c009d60:	008c0a13          	addi	s4,s8,8
1c009d64:	08b61d63          	bne	a2,a1,1c009dfe <_prf+0x418>
1c009d68:	00d0                	addi	a2,sp,68
1c009d6a:	8732                	mv	a4,a2
1c009d6c:	00035863          	bgez	t1,1c009d7c <_prf+0x396>
1c009d70:	02d00713          	li	a4,45
1c009d74:	04e10223          	sb	a4,68(sp)
1c009d78:	04510713          	addi	a4,sp,69
1c009d7c:	00d8e6b3          	or	a3,a7,a3
1c009d80:	fbfa8793          	addi	a5,s5,-65
1c009d84:	00370513          	addi	a0,a4,3 # 80000003 <pulp__FC+0x80000004>
1c009d88:	eaa1                	bnez	a3,1c009dd8 <_prf+0x3f2>
1c009d8a:	46e5                	li	a3,25
1c009d8c:	02f6ee63          	bltu	a3,a5,1c009dc8 <_prf+0x3e2>
1c009d90:	6795                	lui	a5,0x5
1c009d92:	e4978793          	addi	a5,a5,-439 # 4e49 <__rt_udma_callback_data+0x4b51>
1c009d96:	00f71023          	sh	a5,0(a4)
1c009d9a:	04600793          	li	a5,70
1c009d9e:	00f70123          	sb	a5,2(a4)
1c009da2:	000701a3          	sb	zero,3(a4)
1c009da6:	8d11                	sub	a0,a0,a2
1c009da8:	47c2                	lw	a5,16(sp)
1c009daa:	44079f63          	bnez	a5,1c00a208 <_prf+0x822>
1c009dae:	e419                	bnez	s0,1c009dbc <_prf+0x3d6>
1c009db0:	04414403          	lbu	s0,68(sp)
1c009db4:	fd340413          	addi	s0,s0,-45
1c009db8:	00143413          	seqz	s0,s0
1c009dbc:	0c800793          	li	a5,200
1c009dc0:	c8a7c1e3          	blt	a5,a0,1c009a42 <_prf+0x5c>
1c009dc4:	8caa                	mv	s9,a0
1c009dc6:	a63d                	j	1c00a0f4 <_prf+0x70e>
1c009dc8:	679d                	lui	a5,0x7
1c009dca:	e6978793          	addi	a5,a5,-407 # 6e69 <__rt_udma_callback_data+0x6b71>
1c009dce:	00f71023          	sh	a5,0(a4)
1c009dd2:	06600793          	li	a5,102
1c009dd6:	b7e1                	j	1c009d9e <_prf+0x3b8>
1c009dd8:	46e5                	li	a3,25
1c009dda:	00f6ea63          	bltu	a3,a5,1c009dee <_prf+0x408>
1c009dde:	6791                	lui	a5,0x4
1c009de0:	14e78793          	addi	a5,a5,334 # 414e <__rt_udma_callback_data+0x3e56>
1c009de4:	00f71023          	sh	a5,0(a4)
1c009de8:	04e00793          	li	a5,78
1c009dec:	bf4d                	j	1c009d9e <_prf+0x3b8>
1c009dee:	6799                	lui	a5,0x6
1c009df0:	16e78793          	addi	a5,a5,366 # 616e <__rt_udma_callback_data+0x5e76>
1c009df4:	00f71023          	sh	a5,0(a4)
1c009df8:	06e00793          	li	a5,110
1c009dfc:	b74d                	j	1c009d9e <_prf+0x3b8>
1c009dfe:	04600593          	li	a1,70
1c009e02:	00ba9463          	bne	s5,a1,1c009e0a <_prf+0x424>
1c009e06:	06600a93          	li	s5,102
1c009e0a:	011665b3          	or	a1,a2,a7
1c009e0e:	8dd5                	or	a1,a1,a3
1c009e10:	c5d1                	beqz	a1,1c009e9c <_prf+0x4b6>
1c009e12:	80000737          	lui	a4,0x80000
1c009e16:	8ed9                	or	a3,a3,a4
1c009e18:	da36                	sw	a3,52(sp)
1c009e1a:	d846                	sw	a7,48(sp)
1c009e1c:	c0260c13          	addi	s8,a2,-1022
1c009e20:	02d00693          	li	a3,45
1c009e24:	00034b63          	bltz	t1,1c009e3a <_prf+0x454>
1c009e28:	47c2                	lw	a5,16(sp)
1c009e2a:	02b00693          	li	a3,43
1c009e2e:	e791                	bnez	a5,1c009e3a <_prf+0x454>
1c009e30:	04410b13          	addi	s6,sp,68
1c009e34:	c419                	beqz	s0,1c009e42 <_prf+0x45c>
1c009e36:	02000693          	li	a3,32
1c009e3a:	04d10223          	sb	a3,68(sp)
1c009e3e:	04510b13          	addi	s6,sp,69
1c009e42:	4b81                	li	s7,0
1c009e44:	55f9                	li	a1,-2
1c009e46:	04bc4f63          	blt	s8,a1,1c009ea4 <_prf+0x4be>
1c009e4a:	0b804563          	bgtz	s8,1c009ef4 <_prf+0x50e>
1c009e4e:	1808                	addi	a0,sp,48
1c009e50:	0c05                	addi	s8,s8,1
1c009e52:	3ced                	jal	1c00994c <_rlrshift>
1c009e54:	fe4c3de3          	p.bneimm	s8,4,1c009e4e <_prf+0x468>
1c009e58:	000d5363          	bgez	s10,1c009e5e <_prf+0x478>
1c009e5c:	4d19                	li	s10,6
1c009e5e:	c05ab5b3          	p.bclr	a1,s5,0,5
1c009e62:	04700513          	li	a0,71
1c009e66:	0ca59363          	bne	a1,a0,1c009f2c <_prf+0x546>
1c009e6a:	4c01                	li	s8,0
1c009e6c:	000c9463          	bnez	s9,1c009e74 <_prf+0x48e>
1c009e70:	01a03c33          	snez	s8,s10
1c009e74:	55f5                	li	a1,-3
1c009e76:	00bbc663          	blt	s7,a1,1c009e82 <_prf+0x49c>
1c009e7a:	001d0593          	addi	a1,s10,1
1c009e7e:	0b75dc63          	ble	s7,a1,1c009f36 <_prf+0x550>
1c009e82:	06700593          	li	a1,103
1c009e86:	14ba8763          	beq	s5,a1,1c009fd4 <_prf+0x5ee>
1c009e8a:	04500a93          	li	s5,69
1c009e8e:	001d0593          	addi	a1,s10,1
1c009e92:	4541                	li	a0,16
1c009e94:	d62a                	sw	a0,44(sp)
1c009e96:	04a5cdb3          	p.min	s11,a1,a0
1c009e9a:	a07d                	j	1c009f48 <_prf+0x562>
1c009e9c:	4c01                	li	s8,0
1c009e9e:	b769                	j	1c009e28 <_prf+0x442>
1c009ea0:	1808                	addi	a0,sp,48
1c009ea2:	346d                	jal	1c00994c <_rlrshift>
1c009ea4:	5352                	lw	t1,52(sp)
1c009ea6:	33333737          	lui	a4,0x33333
1c009eaa:	33270713          	addi	a4,a4,818 # 33333332 <__l2_shared_end+0x17323246>
1c009eae:	58c2                	lw	a7,48(sp)
1c009eb0:	0c05                	addi	s8,s8,1
1c009eb2:	fe6767e3          	bltu	a4,t1,1c009ea0 <_prf+0x4ba>
1c009eb6:	4515                	li	a0,5
1c009eb8:	031535b3          	mulhu	a1,a0,a7
1c009ebc:	1bfd                	addi	s7,s7,-1
1c009ebe:	031508b3          	mul	a7,a0,a7
1c009ec2:	426505b3          	p.mac	a1,a0,t1
1c009ec6:	d846                	sw	a7,48(sp)
1c009ec8:	4501                	li	a0,0
1c009eca:	da2e                	sw	a1,52(sp)
1c009ecc:	800007b7          	lui	a5,0x80000
1c009ed0:	fff7c793          	not	a5,a5
1c009ed4:	00b7f663          	bleu	a1,a5,1c009ee0 <_prf+0x4fa>
1c009ed8:	d535                	beqz	a0,1c009e44 <_prf+0x45e>
1c009eda:	d846                	sw	a7,48(sp)
1c009edc:	da2e                	sw	a1,52(sp)
1c009ede:	b79d                	j	1c009e44 <_prf+0x45e>
1c009ee0:	01f8d313          	srli	t1,a7,0x1f
1c009ee4:	00159513          	slli	a0,a1,0x1
1c009ee8:	00a365b3          	or	a1,t1,a0
1c009eec:	0886                	slli	a7,a7,0x1
1c009eee:	1c7d                	addi	s8,s8,-1
1c009ef0:	4505                	li	a0,1
1c009ef2:	bfe9                	j	1c009ecc <_prf+0x4e6>
1c009ef4:	1808                	addi	a0,sp,48
1c009ef6:	a77ff0ef          	jal	ra,1c00996c <_ldiv5>
1c009efa:	58c2                	lw	a7,48(sp)
1c009efc:	55d2                	lw	a1,52(sp)
1c009efe:	1c7d                	addi	s8,s8,-1
1c009f00:	0b85                	addi	s7,s7,1
1c009f02:	4501                	li	a0,0
1c009f04:	80000737          	lui	a4,0x80000
1c009f08:	fff74713          	not	a4,a4
1c009f0c:	00b77663          	bleu	a1,a4,1c009f18 <_prf+0x532>
1c009f10:	dd0d                	beqz	a0,1c009e4a <_prf+0x464>
1c009f12:	d846                	sw	a7,48(sp)
1c009f14:	da2e                	sw	a1,52(sp)
1c009f16:	bf15                	j	1c009e4a <_prf+0x464>
1c009f18:	01f8d313          	srli	t1,a7,0x1f
1c009f1c:	00159513          	slli	a0,a1,0x1
1c009f20:	00a365b3          	or	a1,t1,a0
1c009f24:	0886                	slli	a7,a7,0x1
1c009f26:	1c7d                	addi	s8,s8,-1
1c009f28:	4505                	li	a0,1
1c009f2a:	bfe9                	j	1c009f04 <_prf+0x51e>
1c009f2c:	06600593          	li	a1,102
1c009f30:	4c01                	li	s8,0
1c009f32:	f4ba9ee3          	bne	s5,a1,1c009e8e <_prf+0x4a8>
1c009f36:	01ab85b3          	add	a1,s7,s10
1c009f3a:	06600a93          	li	s5,102
1c009f3e:	f405dae3          	bgez	a1,1c009e92 <_prf+0x4ac>
1c009f42:	45c1                	li	a1,16
1c009f44:	d62e                	sw	a1,44(sp)
1c009f46:	4d81                	li	s11,0
1c009f48:	4301                	li	t1,0
1c009f4a:	080003b7          	lui	t2,0x8000
1c009f4e:	dc1a                	sw	t1,56(sp)
1c009f50:	de1e                	sw	t2,60(sp)
1c009f52:	1dfd                	addi	s11,s11,-1
1c009f54:	09fdb363          	p.bneimm	s11,-1,1c009fda <_prf+0x5f4>
1c009f58:	55c2                	lw	a1,48(sp)
1c009f5a:	5562                	lw	a0,56(sp)
1c009f5c:	58d2                	lw	a7,52(sp)
1c009f5e:	5372                	lw	t1,60(sp)
1c009f60:	952e                	add	a0,a0,a1
1c009f62:	00b535b3          	sltu	a1,a0,a1
1c009f66:	989a                	add	a7,a7,t1
1c009f68:	95c6                	add	a1,a1,a7
1c009f6a:	da2e                	sw	a1,52(sp)
1c009f6c:	d82a                	sw	a0,48(sp)
1c009f6e:	f605b5b3          	p.bclr	a1,a1,27,0
1c009f72:	c981                	beqz	a1,1c009f82 <_prf+0x59c>
1c009f74:	1808                	addi	a0,sp,48
1c009f76:	9f7ff0ef          	jal	ra,1c00996c <_ldiv5>
1c009f7a:	1808                	addi	a0,sp,48
1c009f7c:	9d1ff0ef          	jal	ra,1c00994c <_rlrshift>
1c009f80:	0b85                	addi	s7,s7,1
1c009f82:	06600593          	li	a1,102
1c009f86:	001b0d93          	addi	s11,s6,1
1c009f8a:	08ba9463          	bne	s5,a1,1c00a012 <_prf+0x62c>
1c009f8e:	05705d63          	blez	s7,1c009fe8 <_prf+0x602>
1c009f92:	017b0db3          	add	s11,s6,s7
1c009f96:	106c                	addi	a1,sp,44
1c009f98:	1808                	addi	a0,sp,48
1c009f9a:	a17ff0ef          	jal	ra,1c0099b0 <_get_digit>
1c009f9e:	00ab00ab          	p.sb	a0,1(s6!)
1c009fa2:	ffbb1ae3          	bne	s6,s11,1c009f96 <_prf+0x5b0>
1c009fa6:	4b81                	li	s7,0
1c009fa8:	000c9463          	bnez	s9,1c009fb0 <_prf+0x5ca>
1c009fac:	020d0163          	beqz	s10,1c009fce <_prf+0x5e8>
1c009fb0:	001d8b13          	addi	s6,s11,1
1c009fb4:	02e00613          	li	a2,46
1c009fb8:	00cd8023          	sb	a2,0(s11)
1c009fbc:	8cea                	mv	s9,s10
1c009fbe:	8dda                	mv	s11,s6
1c009fc0:	03000893          	li	a7,48
1c009fc4:	1cfd                	addi	s9,s9,-1
1c009fc6:	03fcb663          	p.bneimm	s9,-1,1c009ff2 <_prf+0x60c>
1c009fca:	01ab0db3          	add	s11,s6,s10
1c009fce:	060c1c63          	bnez	s8,1c00a046 <_prf+0x660>
1c009fd2:	a8c1                	j	1c00a0a2 <_prf+0x6bc>
1c009fd4:	06500a93          	li	s5,101
1c009fd8:	bd5d                	j	1c009e8e <_prf+0x4a8>
1c009fda:	1828                	addi	a0,sp,56
1c009fdc:	991ff0ef          	jal	ra,1c00996c <_ldiv5>
1c009fe0:	1828                	addi	a0,sp,56
1c009fe2:	96bff0ef          	jal	ra,1c00994c <_rlrshift>
1c009fe6:	b7b5                	j	1c009f52 <_prf+0x56c>
1c009fe8:	03000593          	li	a1,48
1c009fec:	00bb0023          	sb	a1,0(s6)
1c009ff0:	bf65                	j	1c009fa8 <_prf+0x5c2>
1c009ff2:	0d85                	addi	s11,s11,1
1c009ff4:	000b8663          	beqz	s7,1c00a000 <_prf+0x61a>
1c009ff8:	ff1d8fa3          	sb	a7,-1(s11)
1c009ffc:	0b85                	addi	s7,s7,1
1c009ffe:	b7d9                	j	1c009fc4 <_prf+0x5de>
1c00a000:	106c                	addi	a1,sp,44
1c00a002:	1808                	addi	a0,sp,48
1c00a004:	c446                	sw	a7,8(sp)
1c00a006:	9abff0ef          	jal	ra,1c0099b0 <_get_digit>
1c00a00a:	fead8fa3          	sb	a0,-1(s11)
1c00a00e:	48a2                	lw	a7,8(sp)
1c00a010:	bf55                	j	1c009fc4 <_prf+0x5de>
1c00a012:	106c                	addi	a1,sp,44
1c00a014:	1808                	addi	a0,sp,48
1c00a016:	99bff0ef          	jal	ra,1c0099b0 <_get_digit>
1c00a01a:	00ab0023          	sb	a0,0(s6)
1c00a01e:	03000593          	li	a1,48
1c00a022:	00b50363          	beq	a0,a1,1c00a028 <_prf+0x642>
1c00a026:	1bfd                	addi	s7,s7,-1
1c00a028:	000c9463          	bnez	s9,1c00a030 <_prf+0x64a>
1c00a02c:	000d0b63          	beqz	s10,1c00a042 <_prf+0x65c>
1c00a030:	002b0d93          	addi	s11,s6,2
1c00a034:	02e00593          	li	a1,46
1c00a038:	00bb00a3          	sb	a1,1(s6)
1c00a03c:	9d6e                	add	s10,s10,s11
1c00a03e:	07bd1863          	bne	s10,s11,1c00a0ae <_prf+0x6c8>
1c00a042:	000c0f63          	beqz	s8,1c00a060 <_prf+0x67a>
1c00a046:	03000593          	li	a1,48
1c00a04a:	fffd8713          	addi	a4,s11,-1
1c00a04e:	00074603          	lbu	a2,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00a052:	06b60563          	beq	a2,a1,1c00a0bc <_prf+0x6d6>
1c00a056:	02e00593          	li	a1,46
1c00a05a:	00b61363          	bne	a2,a1,1c00a060 <_prf+0x67a>
1c00a05e:	8dba                	mv	s11,a4
1c00a060:	c05ab733          	p.bclr	a4,s5,0,5
1c00a064:	04500613          	li	a2,69
1c00a068:	02c71d63          	bne	a4,a2,1c00a0a2 <_prf+0x6bc>
1c00a06c:	87d6                	mv	a5,s5
1c00a06e:	00fd8023          	sb	a5,0(s11)
1c00a072:	02b00793          	li	a5,43
1c00a076:	000bd663          	bgez	s7,1c00a082 <_prf+0x69c>
1c00a07a:	41700bb3          	neg	s7,s7
1c00a07e:	02d00793          	li	a5,45
1c00a082:	00fd80a3          	sb	a5,1(s11)
1c00a086:	47a9                	li	a5,10
1c00a088:	02fbc733          	div	a4,s7,a5
1c00a08c:	0d91                	addi	s11,s11,4
1c00a08e:	02fbe6b3          	rem	a3,s7,a5
1c00a092:	03070713          	addi	a4,a4,48
1c00a096:	feed8f23          	sb	a4,-2(s11)
1c00a09a:	03068693          	addi	a3,a3,48
1c00a09e:	fedd8fa3          	sb	a3,-1(s11)
1c00a0a2:	00c8                	addi	a0,sp,68
1c00a0a4:	000d8023          	sb	zero,0(s11)
1c00a0a8:	40ad8533          	sub	a0,s11,a0
1c00a0ac:	b9f5                	j	1c009da8 <_prf+0x3c2>
1c00a0ae:	106c                	addi	a1,sp,44
1c00a0b0:	1808                	addi	a0,sp,48
1c00a0b2:	8ffff0ef          	jal	ra,1c0099b0 <_get_digit>
1c00a0b6:	00ad80ab          	p.sb	a0,1(s11!)
1c00a0ba:	b751                	j	1c00a03e <_prf+0x658>
1c00a0bc:	8dba                	mv	s11,a4
1c00a0be:	b771                	j	1c00a04a <_prf+0x664>
1c00a0c0:	000c2783          	lw	a5,0(s8)
1c00a0c4:	004c0a13          	addi	s4,s8,4
1c00a0c8:	0127a023          	sw	s2,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00a0cc:	ba65                	j	1c009a84 <_prf+0x9e>
1c00a0ce:	004c0a13          	addi	s4,s8,4
1c00a0d2:	000c2583          	lw	a1,0(s8)
1c00a0d6:	00dc                	addi	a5,sp,68
1c00a0d8:	040c8263          	beqz	s9,1c00a11c <_prf+0x736>
1c00a0dc:	03000693          	li	a3,48
1c00a0e0:	04d10223          	sb	a3,68(sp)
1c00a0e4:	04510513          	addi	a0,sp,69
1c00a0e8:	e99d                	bnez	a1,1c00a11e <_prf+0x738>
1c00a0ea:	040102a3          	sb	zero,69(sp)
1c00a0ee:	4401                	li	s0,0
1c00a0f0:	0dfd3063          	p.bneimm	s10,-1,1c00a1b0 <_prf+0x7ca>
1c00a0f4:	04410b93          	addi	s7,sp,68
1c00a0f8:	0d3cc063          	blt	s9,s3,1c00a1b8 <_prf+0x7d2>
1c00a0fc:	89e6                	mv	s3,s9
1c00a0fe:	41790433          	sub	s0,s2,s7
1c00a102:	01740933          	add	s2,s0,s7
1c00a106:	96098fe3          	beqz	s3,1c009a84 <_prf+0x9e>
1c00a10a:	45f2                	lw	a1,28(sp)
1c00a10c:	001bc50b          	p.lbu	a0,1(s7!)
1c00a110:	47e2                	lw	a5,24(sp)
1c00a112:	9782                	jalr	a5
1c00a114:	93f527e3          	p.beqimm	a0,-1,1c009a42 <_prf+0x5c>
1c00a118:	19fd                	addi	s3,s3,-1
1c00a11a:	b7e5                	j	1c00a102 <_prf+0x71c>
1c00a11c:	853e                	mv	a0,a5
1c00a11e:	86ea                	mv	a3,s10
1c00a120:	4621                	li	a2,8
1c00a122:	40f50433          	sub	s0,a0,a5
1c00a126:	fd0ff0ef          	jal	ra,1c0098f6 <_to_x>
1c00a12a:	9522                	add	a0,a0,s0
1c00a12c:	4401                	li	s0,0
1c00a12e:	c9fd27e3          	p.beqimm	s10,-1,1c009dbc <_prf+0x3d6>
1c00a132:	02000793          	li	a5,32
1c00a136:	c63e                	sw	a5,12(sp)
1c00a138:	b151                	j	1c009dbc <_prf+0x3d6>
1c00a13a:	000c2583          	lw	a1,0(s8)
1c00a13e:	77e1                	lui	a5,0xffff8
1c00a140:	8307c793          	xori	a5,a5,-2000
1c00a144:	46a1                	li	a3,8
1c00a146:	4641                	li	a2,16
1c00a148:	04610513          	addi	a0,sp,70
1c00a14c:	04f11223          	sh	a5,68(sp)
1c00a150:	fa6ff0ef          	jal	ra,1c0098f6 <_to_x>
1c00a154:	004c0a13          	addi	s4,s8,4
1c00a158:	0509                	addi	a0,a0,2
1c00a15a:	4401                	li	s0,0
1c00a15c:	be6d                	j	1c009d16 <_prf+0x330>
1c00a15e:	000d4463          	bltz	s10,1c00a166 <_prf+0x780>
1c00a162:	05acccb3          	p.min	s9,s9,s10
1c00a166:	900c8fe3          	beqz	s9,1c009a84 <_prf+0x9e>
1c00a16a:	8666                	mv	a2,s9
1c00a16c:	00c8                	addi	a0,sp,68
1c00a16e:	c3cff0ef          	jal	ra,1c0095aa <memcpy>
1c00a172:	be85                	j	1c009ce2 <_prf+0x2fc>
1c00a174:	000c2583          	lw	a1,0(s8)
1c00a178:	86ea                	mv	a3,s10
1c00a17a:	4629                	li	a2,10
1c00a17c:	00c8                	addi	a0,sp,68
1c00a17e:	004c0a13          	addi	s4,s8,4
1c00a182:	f74ff0ef          	jal	ra,1c0098f6 <_to_x>
1c00a186:	b75d                	j	1c00a12c <_prf+0x746>
1c00a188:	f9f78613          	addi	a2,a5,-97 # ffff7f9f <pulp__FC+0xffff7fa0>
1c00a18c:	0ff67613          	andi	a2,a2,255
1c00a190:	aac5e4e3          	bltu	a1,a2,1c009c38 <_prf+0x252>
1c00a194:	1781                	addi	a5,a5,-32
1c00a196:	fef68fa3          	sb	a5,-1(a3)
1c00a19a:	bc79                	j	1c009c38 <_prf+0x252>
1c00a19c:	45f2                	lw	a1,28(sp)
1c00a19e:	4762                	lw	a4,24(sp)
1c00a1a0:	02500513          	li	a0,37
1c00a1a4:	9702                	jalr	a4
1c00a1a6:	89f52ee3          	p.beqimm	a0,-1,1c009a42 <_prf+0x5c>
1c00a1aa:	0905                	addi	s2,s2,1
1c00a1ac:	8a62                	mv	s4,s8
1c00a1ae:	b8d9                	j	1c009a84 <_prf+0x9e>
1c00a1b0:	02000793          	li	a5,32
1c00a1b4:	c63e                	sw	a5,12(sp)
1c00a1b6:	bf3d                	j	1c00a0f4 <_prf+0x70e>
1c00a1b8:	4752                	lw	a4,20(sp)
1c00a1ba:	cf01                	beqz	a4,1c00a1d2 <_prf+0x7ec>
1c00a1bc:	019b8833          	add	a6,s7,s9
1c00a1c0:	02000713          	li	a4,32
1c00a1c4:	417807b3          	sub	a5,a6,s7
1c00a1c8:	f337dbe3          	ble	s3,a5,1c00a0fe <_prf+0x718>
1c00a1cc:	00e800ab          	p.sb	a4,1(a6!)
1c00a1d0:	bfd5                	j	1c00a1c4 <_prf+0x7de>
1c00a1d2:	41998c33          	sub	s8,s3,s9
1c00a1d6:	001c8613          	addi	a2,s9,1
1c00a1da:	85de                	mv	a1,s7
1c00a1dc:	018b8533          	add	a0,s7,s8
1c00a1e0:	c00ff0ef          	jal	ra,1c0095e0 <memmove>
1c00a1e4:	4732                	lw	a4,12(sp)
1c00a1e6:	02000793          	li	a5,32
1c00a1ea:	00f70363          	beq	a4,a5,1c00a1f0 <_prf+0x80a>
1c00a1ee:	ca22                	sw	s0,20(sp)
1c00a1f0:	47d2                	lw	a5,20(sp)
1c00a1f2:	9c3e                	add	s8,s8,a5
1c00a1f4:	00fb8ab3          	add	s5,s7,a5
1c00a1f8:	417a87b3          	sub	a5,s5,s7
1c00a1fc:	f187d1e3          	ble	s8,a5,1c00a0fe <_prf+0x718>
1c00a200:	4732                	lw	a4,12(sp)
1c00a202:	00ea80ab          	p.sb	a4,1(s5!)
1c00a206:	bfcd                	j	1c00a1f8 <_prf+0x812>
1c00a208:	4442                	lw	s0,16(sp)
1c00a20a:	be4d                	j	1c009dbc <_prf+0x3d6>

1c00a20c <__rt_uart_wait_tx_done.isra.3>:
1c00a20c:	1a102737          	lui	a4,0x1a102
1c00a210:	09870713          	addi	a4,a4,152 # 1a102098 <__rt_udma_callback_data+0x1a101da0>
1c00a214:	431c                	lw	a5,0(a4)
1c00a216:	8bc1                	andi	a5,a5,16
1c00a218:	eb95                	bnez	a5,1c00a24c <__rt_uart_wait_tx_done.isra.3+0x40>
1c00a21a:	1a102737          	lui	a4,0x1a102
1c00a21e:	0a070713          	addi	a4,a4,160 # 1a1020a0 <__rt_udma_callback_data+0x1a101da8>
1c00a222:	431c                	lw	a5,0(a4)
1c00a224:	fc17b7b3          	p.bclr	a5,a5,30,1
1c00a228:	ffed                	bnez	a5,1c00a222 <__rt_uart_wait_tx_done.isra.3+0x16>
1c00a22a:	1a10a7b7          	lui	a5,0x1a10a
1c00a22e:	81478593          	addi	a1,a5,-2028 # 1a109814 <__rt_udma_callback_data+0x1a10951c>
1c00a232:	80478613          	addi	a2,a5,-2044
1c00a236:	6691                	lui	a3,0x4
1c00a238:	80878793          	addi	a5,a5,-2040
1c00a23c:	032350fb          	lp.setupi	x1,50,1c00a248 <__rt_uart_wait_tx_done.isra.3+0x3c>
1c00a240:	c194                	sw	a3,0(a1)
1c00a242:	c214                	sw	a3,0(a2)
1c00a244:	10500073          	wfi
1c00a248:	c394                	sw	a3,0(a5)
1c00a24a:	8082                	ret
1c00a24c:	10500073          	wfi
1c00a250:	b7d1                	j	1c00a214 <__rt_uart_wait_tx_done.isra.3+0x8>

1c00a252 <__rt_uart_setfreq_before>:
1c00a252:	1c0017b7          	lui	a5,0x1c001
1c00a256:	f1c7a783          	lw	a5,-228(a5) # 1c000f1c <__rt_uart>
1c00a25a:	cf99                	beqz	a5,1c00a278 <__rt_uart_setfreq_before+0x26>
1c00a25c:	1141                	addi	sp,sp,-16
1c00a25e:	c606                	sw	ra,12(sp)
1c00a260:	3775                	jal	1c00a20c <__rt_uart_wait_tx_done.isra.3>
1c00a262:	40b2                	lw	ra,12(sp)
1c00a264:	005007b7          	lui	a5,0x500
1c00a268:	1a102737          	lui	a4,0x1a102
1c00a26c:	0799                	addi	a5,a5,6
1c00a26e:	0af72223          	sw	a5,164(a4) # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a272:	4501                	li	a0,0
1c00a274:	0141                	addi	sp,sp,16
1c00a276:	8082                	ret
1c00a278:	4501                	li	a0,0
1c00a27a:	8082                	ret

1c00a27c <__rt_uart_setup.isra.4>:
1c00a27c:	1c001737          	lui	a4,0x1c001
1c00a280:	73472703          	lw	a4,1844(a4) # 1c001734 <__rt_freq_domains+0x4>
1c00a284:	00155793          	srli	a5,a0,0x1
1c00a288:	97ba                	add	a5,a5,a4
1c00a28a:	02a7d7b3          	divu	a5,a5,a0
1c00a28e:	1a102737          	lui	a4,0x1a102
1c00a292:	17fd                	addi	a5,a5,-1
1c00a294:	07c2                	slli	a5,a5,0x10
1c00a296:	3067e793          	ori	a5,a5,774
1c00a29a:	0af72223          	sw	a5,164(a4) # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a29e:	8082                	ret

1c00a2a0 <__rt_uart_setfreq_after>:
1c00a2a0:	1c0017b7          	lui	a5,0x1c001
1c00a2a4:	f1c78793          	addi	a5,a5,-228 # 1c000f1c <__rt_uart>
1c00a2a8:	4398                	lw	a4,0(a5)
1c00a2aa:	cb09                	beqz	a4,1c00a2bc <__rt_uart_setfreq_after+0x1c>
1c00a2ac:	4788                	lw	a0,8(a5)
1c00a2ae:	1141                	addi	sp,sp,-16
1c00a2b0:	c606                	sw	ra,12(sp)
1c00a2b2:	37e9                	jal	1c00a27c <__rt_uart_setup.isra.4>
1c00a2b4:	40b2                	lw	ra,12(sp)
1c00a2b6:	4501                	li	a0,0
1c00a2b8:	0141                	addi	sp,sp,16
1c00a2ba:	8082                	ret
1c00a2bc:	4501                	li	a0,0
1c00a2be:	8082                	ret

1c00a2c0 <soc_eu_fcEventMask_setEvent>:
1c00a2c0:	02000793          	li	a5,32
1c00a2c4:	02f54733          	div	a4,a0,a5
1c00a2c8:	1a1066b7          	lui	a3,0x1a106
1c00a2cc:	0691                	addi	a3,a3,4
1c00a2ce:	02f56533          	rem	a0,a0,a5
1c00a2d2:	070a                	slli	a4,a4,0x2
1c00a2d4:	9736                	add	a4,a4,a3
1c00a2d6:	4314                	lw	a3,0(a4)
1c00a2d8:	4785                	li	a5,1
1c00a2da:	00a797b3          	sll	a5,a5,a0
1c00a2de:	fff7c793          	not	a5,a5
1c00a2e2:	8ff5                	and	a5,a5,a3
1c00a2e4:	c31c                	sw	a5,0(a4)
1c00a2e6:	8082                	ret

1c00a2e8 <rt_uart_conf_init>:
1c00a2e8:	000997b7          	lui	a5,0x99
1c00a2ec:	96878793          	addi	a5,a5,-1688 # 98968 <__rt_udma_callback_data+0x98670>
1c00a2f0:	c11c                	sw	a5,0(a0)
1c00a2f2:	57fd                	li	a5,-1
1c00a2f4:	c15c                	sw	a5,4(a0)
1c00a2f6:	8082                	ret

1c00a2f8 <__rt_uart_open>:
1c00a2f8:	1141                	addi	sp,sp,-16
1c00a2fa:	c606                	sw	ra,12(sp)
1c00a2fc:	c422                	sw	s0,8(sp)
1c00a2fe:	c226                	sw	s1,4(sp)
1c00a300:	c04a                	sw	s2,0(sp)
1c00a302:	30047973          	csrrci	s2,mstatus,8
1c00a306:	cd85                	beqz	a1,1c00a33e <__rt_uart_open+0x46>
1c00a308:	4198                	lw	a4,0(a1)
1c00a30a:	1c0017b7          	lui	a5,0x1c001
1c00a30e:	f1c78413          	addi	s0,a5,-228 # 1c000f1c <__rt_uart>
1c00a312:	00451613          	slli	a2,a0,0x4
1c00a316:	9432                	add	s0,s0,a2
1c00a318:	4014                	lw	a3,0(s0)
1c00a31a:	f1c78793          	addi	a5,a5,-228
1c00a31e:	c68d                	beqz	a3,1c00a348 <__rt_uart_open+0x50>
1c00a320:	c589                	beqz	a1,1c00a32a <__rt_uart_open+0x32>
1c00a322:	418c                	lw	a1,0(a1)
1c00a324:	4418                	lw	a4,8(s0)
1c00a326:	04e59863          	bne	a1,a4,1c00a376 <__rt_uart_open+0x7e>
1c00a32a:	0685                	addi	a3,a3,1
1c00a32c:	00d7e623          	p.sw	a3,a2(a5)
1c00a330:	8522                	mv	a0,s0
1c00a332:	40b2                	lw	ra,12(sp)
1c00a334:	4422                	lw	s0,8(sp)
1c00a336:	4492                	lw	s1,4(sp)
1c00a338:	4902                	lw	s2,0(sp)
1c00a33a:	0141                	addi	sp,sp,16
1c00a33c:	8082                	ret
1c00a33e:	00099737          	lui	a4,0x99
1c00a342:	96870713          	addi	a4,a4,-1688 # 98968 <__rt_udma_callback_data+0x98670>
1c00a346:	b7d1                	j	1c00a30a <__rt_uart_open+0x12>
1c00a348:	4785                	li	a5,1
1c00a34a:	c01c                	sw	a5,0(s0)
1c00a34c:	c418                	sw	a4,8(s0)
1c00a34e:	c048                	sw	a0,4(s0)
1c00a350:	1a102737          	lui	a4,0x1a102
1c00a354:	4314                	lw	a3,0(a4)
1c00a356:	00a797b3          	sll	a5,a5,a0
1c00a35a:	00251493          	slli	s1,a0,0x2
1c00a35e:	8fd5                	or	a5,a5,a3
1c00a360:	c31c                	sw	a5,0(a4)
1c00a362:	8526                	mv	a0,s1
1c00a364:	3fb1                	jal	1c00a2c0 <soc_eu_fcEventMask_setEvent>
1c00a366:	00148513          	addi	a0,s1,1
1c00a36a:	3f99                	jal	1c00a2c0 <soc_eu_fcEventMask_setEvent>
1c00a36c:	4408                	lw	a0,8(s0)
1c00a36e:	3739                	jal	1c00a27c <__rt_uart_setup.isra.4>
1c00a370:	30091073          	csrw	mstatus,s2
1c00a374:	bf75                	j	1c00a330 <__rt_uart_open+0x38>
1c00a376:	4401                	li	s0,0
1c00a378:	bf65                	j	1c00a330 <__rt_uart_open+0x38>

1c00a37a <rt_uart_close>:
1c00a37a:	1141                	addi	sp,sp,-16
1c00a37c:	c606                	sw	ra,12(sp)
1c00a37e:	c422                	sw	s0,8(sp)
1c00a380:	c226                	sw	s1,4(sp)
1c00a382:	300474f3          	csrrci	s1,mstatus,8
1c00a386:	411c                	lw	a5,0(a0)
1c00a388:	17fd                	addi	a5,a5,-1
1c00a38a:	c11c                	sw	a5,0(a0)
1c00a38c:	e785                	bnez	a5,1c00a3b4 <rt_uart_close+0x3a>
1c00a38e:	842a                	mv	s0,a0
1c00a390:	3db5                	jal	1c00a20c <__rt_uart_wait_tx_done.isra.3>
1c00a392:	1a102737          	lui	a4,0x1a102
1c00a396:	005007b7          	lui	a5,0x500
1c00a39a:	0a470693          	addi	a3,a4,164 # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a39e:	0799                	addi	a5,a5,6
1c00a3a0:	c29c                	sw	a5,0(a3)
1c00a3a2:	4050                	lw	a2,4(s0)
1c00a3a4:	4314                	lw	a3,0(a4)
1c00a3a6:	4785                	li	a5,1
1c00a3a8:	00c797b3          	sll	a5,a5,a2
1c00a3ac:	fff7c793          	not	a5,a5
1c00a3b0:	8ff5                	and	a5,a5,a3
1c00a3b2:	c31c                	sw	a5,0(a4)
1c00a3b4:	30049073          	csrw	mstatus,s1
1c00a3b8:	40b2                	lw	ra,12(sp)
1c00a3ba:	4422                	lw	s0,8(sp)
1c00a3bc:	4492                	lw	s1,4(sp)
1c00a3be:	0141                	addi	sp,sp,16
1c00a3c0:	8082                	ret

1c00a3c2 <__rt_uart_init>:
1c00a3c2:	1c00a5b7          	lui	a1,0x1c00a
1c00a3c6:	1141                	addi	sp,sp,-16
1c00a3c8:	4601                	li	a2,0
1c00a3ca:	25258593          	addi	a1,a1,594 # 1c00a252 <__rt_uart_setfreq_before>
1c00a3ce:	4511                	li	a0,4
1c00a3d0:	c606                	sw	ra,12(sp)
1c00a3d2:	c422                	sw	s0,8(sp)
1c00a3d4:	daafe0ef          	jal	ra,1c00897e <__rt_cbsys_add>
1c00a3d8:	1c00a5b7          	lui	a1,0x1c00a
1c00a3dc:	842a                	mv	s0,a0
1c00a3de:	4601                	li	a2,0
1c00a3e0:	2a058593          	addi	a1,a1,672 # 1c00a2a0 <__rt_uart_setfreq_after>
1c00a3e4:	4515                	li	a0,5
1c00a3e6:	d98fe0ef          	jal	ra,1c00897e <__rt_cbsys_add>
1c00a3ea:	1c0017b7          	lui	a5,0x1c001
1c00a3ee:	f007ae23          	sw	zero,-228(a5) # 1c000f1c <__rt_uart>
1c00a3f2:	8d41                	or	a0,a0,s0
1c00a3f4:	c10d                	beqz	a0,1c00a416 <__rt_uart_init+0x54>
1c00a3f6:	f1402673          	csrr	a2,mhartid
1c00a3fa:	1c000537          	lui	a0,0x1c000
1c00a3fe:	40565593          	srai	a1,a2,0x5
1c00a402:	f265b5b3          	p.bclr	a1,a1,25,6
1c00a406:	f4563633          	p.bclr	a2,a2,26,5
1c00a40a:	53450513          	addi	a0,a0,1332 # 1c000534 <__DTOR_END__+0x1dc>
1c00a40e:	cbeff0ef          	jal	ra,1c0098cc <printf>
1c00a412:	c26ff0ef          	jal	ra,1c009838 <abort>
1c00a416:	40b2                	lw	ra,12(sp)
1c00a418:	4422                	lw	s0,8(sp)
1c00a41a:	0141                	addi	sp,sp,16
1c00a41c:	8082                	ret

1c00a41e <_endtext>:
	...
