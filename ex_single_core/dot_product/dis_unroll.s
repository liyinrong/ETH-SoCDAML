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
1c0080c6:	6e8000ef          	jal	ra,1c0087ae <__rt_init>
1c0080ca:	00000513          	li	a0,0
1c0080ce:	00000593          	li	a1,0
1c0080d2:	00000397          	auipc	t2,0x0
1c0080d6:	26438393          	addi	t2,t2,612 # 1c008336 <main>
1c0080da:	000380e7          	jalr	t2
1c0080de:	842a                	mv	s0,a0
1c0080e0:	7a4000ef          	jal	ra,1c008884 <__rt_deinit>
1c0080e4:	8522                	mv	a0,s0
1c0080e6:	6e4010ef          	jal	ra,1c0097ca <exit>

1c0080ea <_fini>:
1c0080ea:	8082                	ret

1c0080ec <__rt_illegal_instr>:
1c0080ec:	fe112e23          	sw	ra,-4(sp)
1c0080f0:	fea12c23          	sw	a0,-8(sp)
1c0080f4:	00001517          	auipc	a0,0x1
1c0080f8:	80e50513          	addi	a0,a0,-2034 # 1c008902 <__rt_handle_illegal_instr>
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
1c0082d0:	80660613          	addi	a2,a2,-2042 # 1c008ad2 <__rt_bridge_handle_notif>
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
1c00839e:	52c010ef          	jal	ra,1c0098ca <printf>
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
1c0083bc:	3ae010ef          	jal	ra,1c00976a <puts>
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
1c0083ea:	2a05                	jal	1c00851a <rt_alloc>
1c0083ec:	8a2a                	mv	s4,a0
1c0083ee:	2af1                	jal	1c0085ca <rt_perf_init>
1c0083f0:	45fd                	li	a1,31
1c0083f2:	8552                	mv	a0,s4
1c0083f4:	22d5                	jal	1c0085d8 <rt_perf_conf>
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
1c008432:	0019d693          	srli	a3,s3,0x1
1c008436:	4781                	li	a5,0
1c008438:	4701                	li	a4,0
1c00843a:	4501                	li	a0,0
1c00843c:	4801                	li	a6,0
1c00843e:	85a6                	mv	a1,s1
1c008440:	864a                	mv	a2,s2
1c008442:	0001                	nop
1c008444:	00c6c07b          	lp.setup	x0,a3,1c00845c <stop_lloop>
1c008448:	0015c78b          	p.lbu	a5,1(a1!)
1c00844c:	0016470b          	p.lbu	a4,1(a2!)
1c008450:	0015c50b          	p.lbu	a0,1(a1!)
1c008454:	0016480b          	p.lbu	a6,1(a2!)
1c008458:	42e78433          	p.mac	s0,a5,a4

1c00845c <stop_lloop>:
1c00845c:	43050433          	p.mac	s0,a0,a6
1c008460:	f14027f3          	csrr	a5,mhartid
1c008464:	477d                	li	a4,31
1c008466:	ca5797b3          	p.extractu	a5,a5,5,5
1c00846a:	00e79963          	bne	a5,a4,1c00847c <stop_lloop+0x20>
1c00846e:	1a10b7b7          	lui	a5,0x1a10b
1c008472:	0007a023          	sw	zero,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c008476:	4781                	li	a5,0
1c008478:	cc179073          	csrw	0xcc1,a5
1c00847c:	8552                	mv	a0,s4
1c00847e:	228d                	jal	1c0085e0 <rt_perf_save>
1c008480:	014a2783          	lw	a5,20(s4)
1c008484:	010a2703          	lw	a4,16(s4)
1c008488:	00ca2683          	lw	a3,12(s4)
1c00848c:	008a2603          	lw	a2,8(s4)
1c008490:	004a2583          	lw	a1,4(s4)
1c008494:	1c000537          	lui	a0,0x1c000
1c008498:	39850513          	addi	a0,a0,920 # 1c000398 <__DTOR_END__+0x40>
1c00849c:	42e010ef          	jal	ra,1c0098ca <printf>
1c0084a0:	8522                	mv	a0,s0
1c0084a2:	40f2                	lw	ra,28(sp)
1c0084a4:	4462                	lw	s0,24(sp)
1c0084a6:	44d2                	lw	s1,20(sp)
1c0084a8:	4942                	lw	s2,16(sp)
1c0084aa:	49b2                	lw	s3,12(sp)
1c0084ac:	4a22                	lw	s4,8(sp)
1c0084ae:	6105                	addi	sp,sp,32
1c0084b0:	8082                	ret

1c0084b2 <rt_user_alloc_init>:
1c0084b2:	00758793          	addi	a5,a1,7
1c0084b6:	c407b7b3          	p.bclr	a5,a5,2,0
1c0084ba:	40b785b3          	sub	a1,a5,a1
1c0084be:	c11c                	sw	a5,0(a0)
1c0084c0:	8e0d                	sub	a2,a2,a1
1c0084c2:	00c05763          	blez	a2,1c0084d0 <rt_user_alloc_init+0x1e>
1c0084c6:	c4063633          	p.bclr	a2,a2,2,0
1c0084ca:	c390                	sw	a2,0(a5)
1c0084cc:	0007a223          	sw	zero,4(a5)
1c0084d0:	8082                	ret

1c0084d2 <rt_user_alloc>:
1c0084d2:	411c                	lw	a5,0(a0)
1c0084d4:	059d                	addi	a1,a1,7
1c0084d6:	c405b5b3          	p.bclr	a1,a1,2,0
1c0084da:	4701                	li	a4,0
1c0084dc:	cb89                	beqz	a5,1c0084ee <rt_user_alloc+0x1c>
1c0084de:	4394                	lw	a3,0(a5)
1c0084e0:	43d0                	lw	a2,4(a5)
1c0084e2:	00b6c863          	blt	a3,a1,1c0084f2 <rt_user_alloc+0x20>
1c0084e6:	00b69b63          	bne	a3,a1,1c0084fc <rt_user_alloc+0x2a>
1c0084ea:	c719                	beqz	a4,1c0084f8 <rt_user_alloc+0x26>
1c0084ec:	c350                	sw	a2,4(a4)
1c0084ee:	853e                	mv	a0,a5
1c0084f0:	8082                	ret
1c0084f2:	873e                	mv	a4,a5
1c0084f4:	87b2                	mv	a5,a2
1c0084f6:	b7dd                	j	1c0084dc <rt_user_alloc+0xa>
1c0084f8:	c110                	sw	a2,0(a0)
1c0084fa:	bfd5                	j	1c0084ee <rt_user_alloc+0x1c>
1c0084fc:	00b78833          	add	a6,a5,a1
1c008500:	40b685b3          	sub	a1,a3,a1
1c008504:	00b82023          	sw	a1,0(a6)
1c008508:	00c82223          	sw	a2,4(a6)
1c00850c:	c701                	beqz	a4,1c008514 <rt_user_alloc+0x42>
1c00850e:	01072223          	sw	a6,4(a4)
1c008512:	bff1                	j	1c0084ee <rt_user_alloc+0x1c>
1c008514:	01052023          	sw	a6,0(a0)
1c008518:	bfd9                	j	1c0084ee <rt_user_alloc+0x1c>

1c00851a <rt_alloc>:
1c00851a:	1101                	addi	sp,sp,-32
1c00851c:	c84a                	sw	s2,16(sp)
1c00851e:	1c001937          	lui	s2,0x1c001
1c008522:	cc22                	sw	s0,24(sp)
1c008524:	ca26                	sw	s1,20(sp)
1c008526:	c64e                	sw	s3,12(sp)
1c008528:	ce06                	sw	ra,28(sp)
1c00852a:	842a                	mv	s0,a0
1c00852c:	89ae                	mv	s3,a1
1c00852e:	448d                	li	s1,3
1c008530:	72090913          	addi	s2,s2,1824 # 1c001720 <__rt_alloc_l2>
1c008534:	00241513          	slli	a0,s0,0x2
1c008538:	85ce                	mv	a1,s3
1c00853a:	954a                	add	a0,a0,s2
1c00853c:	3f59                	jal	1c0084d2 <rt_user_alloc>
1c00853e:	e519                	bnez	a0,1c00854c <rt_alloc+0x32>
1c008540:	0405                	addi	s0,s0,1
1c008542:	00343363          	p.bneimm	s0,3,1c008548 <rt_alloc+0x2e>
1c008546:	4401                	li	s0,0
1c008548:	14fd                	addi	s1,s1,-1
1c00854a:	f4ed                	bnez	s1,1c008534 <rt_alloc+0x1a>
1c00854c:	40f2                	lw	ra,28(sp)
1c00854e:	4462                	lw	s0,24(sp)
1c008550:	44d2                	lw	s1,20(sp)
1c008552:	4942                	lw	s2,16(sp)
1c008554:	49b2                	lw	s3,12(sp)
1c008556:	6105                	addi	sp,sp,32
1c008558:	8082                	ret

1c00855a <__rt_allocs_init>:
1c00855a:	1141                	addi	sp,sp,-16
1c00855c:	1c0015b7          	lui	a1,0x1c001
1c008560:	c606                	sw	ra,12(sp)
1c008562:	74058793          	addi	a5,a1,1856 # 1c001740 <__l2_priv0_end>
1c008566:	1c008637          	lui	a2,0x1c008
1c00856a:	04c7c863          	blt	a5,a2,1c0085ba <__rt_allocs_init+0x60>
1c00856e:	4581                	li	a1,0
1c008570:	4601                	li	a2,0
1c008572:	1c001537          	lui	a0,0x1c001
1c008576:	72050513          	addi	a0,a0,1824 # 1c001720 <__rt_alloc_l2>
1c00857a:	3f25                	jal	1c0084b2 <rt_user_alloc_init>
1c00857c:	1c00a5b7          	lui	a1,0x1c00a
1c008580:	41c58793          	addi	a5,a1,1052 # 1c00a41c <__l2_priv1_end>
1c008584:	1c010637          	lui	a2,0x1c010
1c008588:	02c7cd63          	blt	a5,a2,1c0085c2 <__rt_allocs_init+0x68>
1c00858c:	4581                	li	a1,0
1c00858e:	4601                	li	a2,0
1c008590:	1c001537          	lui	a0,0x1c001
1c008594:	72450513          	addi	a0,a0,1828 # 1c001724 <__rt_alloc_l2+0x4>
1c008598:	3f29                	jal	1c0084b2 <rt_user_alloc_init>
1c00859a:	1c0105b7          	lui	a1,0x1c010
1c00859e:	40b2                	lw	ra,12(sp)
1c0085a0:	0ec58793          	addi	a5,a1,236 # 1c0100ec <__l2_shared_end>
1c0085a4:	1c080637          	lui	a2,0x1c080
1c0085a8:	1c001537          	lui	a0,0x1c001
1c0085ac:	8e1d                	sub	a2,a2,a5
1c0085ae:	0ec58593          	addi	a1,a1,236
1c0085b2:	72850513          	addi	a0,a0,1832 # 1c001728 <__rt_alloc_l2+0x8>
1c0085b6:	0141                	addi	sp,sp,16
1c0085b8:	bded                	j	1c0084b2 <rt_user_alloc_init>
1c0085ba:	8e1d                	sub	a2,a2,a5
1c0085bc:	74058593          	addi	a1,a1,1856
1c0085c0:	bf4d                	j	1c008572 <__rt_allocs_init+0x18>
1c0085c2:	8e1d                	sub	a2,a2,a5
1c0085c4:	41c58593          	addi	a1,a1,1052
1c0085c8:	b7e1                	j	1c008590 <__rt_allocs_init+0x36>

1c0085ca <rt_perf_init>:
1c0085ca:	0511                	addi	a0,a0,4
1c0085cc:	012250fb          	lp.setupi	x1,18,1c0085d4 <rt_perf_init+0xa>
1c0085d0:	0005222b          	p.sw	zero,4(a0!)
1c0085d4:	0001                	nop
1c0085d6:	8082                	ret

1c0085d8 <rt_perf_conf>:
1c0085d8:	c10c                	sw	a1,0(a0)
1c0085da:	cc059073          	csrw	0xcc0,a1
1c0085de:	8082                	ret

1c0085e0 <rt_perf_save>:
1c0085e0:	4110                	lw	a2,0(a0)
1c0085e2:	7179                	addi	sp,sp,-48
1c0085e4:	f14026f3          	csrr	a3,mhartid
1c0085e8:	8695                	srai	a3,a3,0x5
1c0085ea:	d622                	sw	s0,44(sp)
1c0085ec:	d426                	sw	s1,40(sp)
1c0085ee:	d24a                	sw	s2,36(sp)
1c0085f0:	d04e                	sw	s3,32(sp)
1c0085f2:	ce52                	sw	s4,28(sp)
1c0085f4:	cc56                	sw	s5,24(sp)
1c0085f6:	ca5a                	sw	s6,20(sp)
1c0085f8:	c85e                	sw	s7,16(sp)
1c0085fa:	c662                	sw	s8,12(sp)
1c0085fc:	c466                	sw	s9,8(sp)
1c0085fe:	4f85                	li	t6,1
1c008600:	f266b6b3          	p.bclr	a3,a3,25,6
1c008604:	42fd                	li	t0,31
1c008606:	43c5                	li	t2,17
1c008608:	4439                	li	s0,14
1c00860a:	45dd                	li	a1,23
1c00860c:	486d                	li	a6,27
1c00860e:	48f5                	li	a7,29
1c008610:	44f9                	li	s1,30
1c008612:	4365                	li	t1,25
1c008614:	4e4d                	li	t3,19
1c008616:	4ed5                	li	t4,21
1c008618:	4f41                	li	t5,16
1c00861a:	4949                	li	s2,18
1c00861c:	4999                	li	s3,6
1c00861e:	4a29                	li	s4,10
1c008620:	4ab1                	li	s5,12
1c008622:	4b21                	li	s6,8
1c008624:	4b89                	li	s7,2
1c008626:	4c11                	li	s8,4
1c008628:	ee09                	bnez	a2,1c008642 <rt_perf_save+0x62>
1c00862a:	5432                	lw	s0,44(sp)
1c00862c:	54a2                	lw	s1,40(sp)
1c00862e:	5912                	lw	s2,36(sp)
1c008630:	5982                	lw	s3,32(sp)
1c008632:	4a72                	lw	s4,28(sp)
1c008634:	4ae2                	lw	s5,24(sp)
1c008636:	4b52                	lw	s6,20(sp)
1c008638:	4bc2                	lw	s7,16(sp)
1c00863a:	4c32                	lw	s8,12(sp)
1c00863c:	4ca2                	lw	s9,8(sp)
1c00863e:	6145                	addi	sp,sp,48
1c008640:	8082                	ret
1c008642:	100617b3          	p.fl1	a5,a2
1c008646:	00ff9733          	sll	a4,t6,a5
1c00864a:	fff74713          	not	a4,a4
1c00864e:	8e79                	and	a2,a2,a4
1c008650:	fc569ce3          	bne	a3,t0,1c008628 <rt_perf_save+0x48>
1c008654:	00779d63          	bne	a5,t2,1c00866e <rt_perf_save+0x8e>
1c008658:	1a10b737          	lui	a4,0x1a10b
1c00865c:	00872703          	lw	a4,8(a4) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008660:	078a                	slli	a5,a5,0x2
1c008662:	97aa                	add	a5,a5,a0
1c008664:	0047ac83          	lw	s9,4(a5)
1c008668:	9766                	add	a4,a4,s9
1c00866a:	c3d8                	sw	a4,4(a5)
1c00866c:	bf75                	j	1c008628 <rt_perf_save+0x48>
1c00866e:	0ee7a763          	p.beqimm	a5,14,1c00875c <rt_perf_save+0x17c>
1c008672:	04f44863          	blt	s0,a5,1c0086c2 <rt_perf_save+0xe2>
1c008676:	0c67a163          	p.beqimm	a5,6,1c008738 <rt_perf_save+0x158>
1c00867a:	02f9c263          	blt	s3,a5,1c00869e <rt_perf_save+0xbe>
1c00867e:	0a27a463          	p.beqimm	a5,2,1c008726 <rt_perf_save+0x146>
1c008682:	00fbc763          	blt	s7,a5,1c008690 <rt_perf_save+0xb0>
1c008686:	cbd1                	beqz	a5,1c00871a <rt_perf_save+0x13a>
1c008688:	0817ac63          	p.beqimm	a5,1,1c008720 <rt_perf_save+0x140>
1c00868c:	4701                	li	a4,0
1c00868e:	bfc9                	j	1c008660 <rt_perf_save+0x80>
1c008690:	0a47a163          	p.beqimm	a5,4,1c008732 <rt_perf_save+0x152>
1c008694:	08fc5c63          	ble	a5,s8,1c00872c <rt_perf_save+0x14c>
1c008698:	78502773          	csrr	a4,pccr5
1c00869c:	b7d1                	j	1c008660 <rt_perf_save+0x80>
1c00869e:	0aa7a663          	p.beqimm	a5,10,1c00874a <rt_perf_save+0x16a>
1c0086a2:	00fa4963          	blt	s4,a5,1c0086b4 <rt_perf_save+0xd4>
1c0086a6:	0887af63          	p.beqimm	a5,8,1c008744 <rt_perf_save+0x164>
1c0086aa:	08fb5a63          	ble	a5,s6,1c00873e <rt_perf_save+0x15e>
1c0086ae:	78902773          	csrr	a4,pccr9
1c0086b2:	b77d                	j	1c008660 <rt_perf_save+0x80>
1c0086b4:	0ac7a163          	p.beqimm	a5,12,1c008756 <rt_perf_save+0x176>
1c0086b8:	08fadc63          	ble	a5,s5,1c008750 <rt_perf_save+0x170>
1c0086bc:	78d02773          	csrr	a4,pccr13
1c0086c0:	b745                	j	1c008660 <rt_perf_save+0x80>
1c0086c2:	0ab78f63          	beq	a5,a1,1c008780 <rt_perf_save+0x1a0>
1c0086c6:	02f5c663          	blt	a1,a5,1c0086f2 <rt_perf_save+0x112>
1c0086ca:	0bc78263          	beq	a5,t3,1c00876e <rt_perf_save+0x18e>
1c0086ce:	00fe4b63          	blt	t3,a5,1c0086e4 <rt_perf_save+0x104>
1c0086d2:	09e78b63          	beq	a5,t5,1c008768 <rt_perf_save+0x188>
1c0086d6:	09e7c663          	blt	a5,t5,1c008762 <rt_perf_save+0x182>
1c0086da:	fb2799e3          	bne	a5,s2,1c00868c <rt_perf_save+0xac>
1c0086de:	79202773          	csrr	a4,pccr18
1c0086e2:	bfbd                	j	1c008660 <rt_perf_save+0x80>
1c0086e4:	09d78b63          	beq	a5,t4,1c00877a <rt_perf_save+0x19a>
1c0086e8:	08fed663          	ble	a5,t4,1c008774 <rt_perf_save+0x194>
1c0086ec:	79602773          	csrr	a4,pccr22
1c0086f0:	bf85                	j	1c008660 <rt_perf_save+0x80>
1c0086f2:	0b078063          	beq	a5,a6,1c008792 <rt_perf_save+0x1b2>
1c0086f6:	00f84963          	blt	a6,a5,1c008708 <rt_perf_save+0x128>
1c0086fa:	08678963          	beq	a5,t1,1c00878c <rt_perf_save+0x1ac>
1c0086fe:	08f35463          	ble	a5,t1,1c008786 <rt_perf_save+0x1a6>
1c008702:	79a02773          	csrr	a4,pccr26
1c008706:	bfa9                	j	1c008660 <rt_perf_save+0x80>
1c008708:	09178b63          	beq	a5,a7,1c00879e <rt_perf_save+0x1be>
1c00870c:	0917c663          	blt	a5,a7,1c008798 <rt_perf_save+0x1b8>
1c008710:	f6979ee3          	bne	a5,s1,1c00868c <rt_perf_save+0xac>
1c008714:	79e02773          	csrr	a4,pccr30
1c008718:	b7a1                	j	1c008660 <rt_perf_save+0x80>
1c00871a:	78002773          	csrr	a4,pccr0
1c00871e:	b789                	j	1c008660 <rt_perf_save+0x80>
1c008720:	78102773          	csrr	a4,pccr1
1c008724:	bf35                	j	1c008660 <rt_perf_save+0x80>
1c008726:	78202773          	csrr	a4,pccr2
1c00872a:	bf1d                	j	1c008660 <rt_perf_save+0x80>
1c00872c:	78302773          	csrr	a4,pccr3
1c008730:	bf05                	j	1c008660 <rt_perf_save+0x80>
1c008732:	78402773          	csrr	a4,pccr4
1c008736:	b72d                	j	1c008660 <rt_perf_save+0x80>
1c008738:	78602773          	csrr	a4,pccr6
1c00873c:	b715                	j	1c008660 <rt_perf_save+0x80>
1c00873e:	78702773          	csrr	a4,pccr7
1c008742:	bf39                	j	1c008660 <rt_perf_save+0x80>
1c008744:	78802773          	csrr	a4,pccr8
1c008748:	bf21                	j	1c008660 <rt_perf_save+0x80>
1c00874a:	78a02773          	csrr	a4,pccr10
1c00874e:	bf09                	j	1c008660 <rt_perf_save+0x80>
1c008750:	78b02773          	csrr	a4,pccr11
1c008754:	b731                	j	1c008660 <rt_perf_save+0x80>
1c008756:	78c02773          	csrr	a4,pccr12
1c00875a:	b719                	j	1c008660 <rt_perf_save+0x80>
1c00875c:	78e02773          	csrr	a4,pccr14
1c008760:	b701                	j	1c008660 <rt_perf_save+0x80>
1c008762:	78f02773          	csrr	a4,pccr15
1c008766:	bded                	j	1c008660 <rt_perf_save+0x80>
1c008768:	79002773          	csrr	a4,pccr16
1c00876c:	bdd5                	j	1c008660 <rt_perf_save+0x80>
1c00876e:	79302773          	csrr	a4,pccr19
1c008772:	b5fd                	j	1c008660 <rt_perf_save+0x80>
1c008774:	79402773          	csrr	a4,pccr20
1c008778:	b5e5                	j	1c008660 <rt_perf_save+0x80>
1c00877a:	79502773          	csrr	a4,pccr21
1c00877e:	b5cd                	j	1c008660 <rt_perf_save+0x80>
1c008780:	79702773          	csrr	a4,pccr23
1c008784:	bdf1                	j	1c008660 <rt_perf_save+0x80>
1c008786:	79802773          	csrr	a4,pccr24
1c00878a:	bdd9                	j	1c008660 <rt_perf_save+0x80>
1c00878c:	79902773          	csrr	a4,pccr25
1c008790:	bdc1                	j	1c008660 <rt_perf_save+0x80>
1c008792:	79b02773          	csrr	a4,pccr27
1c008796:	b5e9                	j	1c008660 <rt_perf_save+0x80>
1c008798:	79c02773          	csrr	a4,pccr28
1c00879c:	b5d1                	j	1c008660 <rt_perf_save+0x80>
1c00879e:	79d02773          	csrr	a4,pccr29
1c0087a2:	bd7d                	j	1c008660 <rt_perf_save+0x80>

1c0087a4 <__rt_himax_init>:
1c0087a4:	1c0017b7          	lui	a5,0x1c001
1c0087a8:	d8078023          	sb	zero,-640(a5) # 1c000d80 <stack>
1c0087ac:	8082                	ret

1c0087ae <__rt_init>:
1c0087ae:	1141                	addi	sp,sp,-16
1c0087b0:	c606                	sw	ra,12(sp)
1c0087b2:	c422                	sw	s0,8(sp)
1c0087b4:	2ef1                	jal	1c008b90 <__rt_bridge_set_available>
1c0087b6:	1c0017b7          	lui	a5,0x1c001
1c0087ba:	e787a783          	lw	a5,-392(a5) # 1c000e78 <__rt_platform>
1c0087be:	0237b263          	p.bneimm	a5,3,1c0087e2 <__rt_init+0x34>
1c0087c2:	7d005073          	csrwi	0x7d0,0
1c0087c6:	1c0007b7          	lui	a5,0x1c000
1c0087ca:	58078793          	addi	a5,a5,1408 # 1c000580 <stack_start>
1c0087ce:	7d179073          	csrw	0x7d1,a5
1c0087d2:	1c0017b7          	lui	a5,0x1c001
1c0087d6:	d8078793          	addi	a5,a5,-640 # 1c000d80 <stack>
1c0087da:	7d279073          	csrw	0x7d2,a5
1c0087de:	7d00d073          	csrwi	0x7d0,1
1c0087e2:	2a85                	jal	1c008952 <__rt_irq_init>
1c0087e4:	1a1067b7          	lui	a5,0x1a106
1c0087e8:	577d                	li	a4,-1
1c0087ea:	00478693          	addi	a3,a5,4 # 1a106004 <__rt_udma_callback_data+0x1a105d0c>
1c0087ee:	c298                	sw	a4,0(a3)
1c0087f0:	00878693          	addi	a3,a5,8
1c0087f4:	c298                	sw	a4,0(a3)
1c0087f6:	00c78693          	addi	a3,a5,12
1c0087fa:	c298                	sw	a4,0(a3)
1c0087fc:	01078693          	addi	a3,a5,16
1c008800:	c298                	sw	a4,0(a3)
1c008802:	01478693          	addi	a3,a5,20
1c008806:	c298                	sw	a4,0(a3)
1c008808:	01878693          	addi	a3,a5,24
1c00880c:	c298                	sw	a4,0(a3)
1c00880e:	01c78693          	addi	a3,a5,28
1c008812:	c298                	sw	a4,0(a3)
1c008814:	02078793          	addi	a5,a5,32
1c008818:	1c0085b7          	lui	a1,0x1c008
1c00881c:	23a58593          	addi	a1,a1,570 # 1c00823a <__rt_fc_socevents_handler>
1c008820:	4569                	li	a0,26
1c008822:	c398                	sw	a4,0(a5)
1c008824:	2851                	jal	1c0088b8 <rt_irq_set_handler>
1c008826:	1a10a7b7          	lui	a5,0x1a10a
1c00882a:	04000737          	lui	a4,0x4000
1c00882e:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__rt_udma_callback_data+0x1a10950c>
1c008832:	1c000437          	lui	s0,0x1c000
1c008836:	189000ef          	jal	ra,1c0091be <__rt_freq_init>
1c00883a:	32840413          	addi	s0,s0,808 # 1c000328 <ctor_list+0x4>
1c00883e:	2275                	jal	1c0089ea <__rt_utils_init>
1c008840:	3b29                	jal	1c00855a <__rt_allocs_init>
1c008842:	2519                	jal	1c008e48 <__rt_event_sched_init>
1c008844:	1f7000ef          	jal	ra,1c00923a <__rt_padframe_init>
1c008848:	0044278b          	p.lw	a5,4(s0!)
1c00884c:	e795                	bnez	a5,1c008878 <__rt_init+0xca>
1c00884e:	300467f3          	csrrsi	a5,mstatus,8
1c008852:	4501                	li	a0,0
1c008854:	229d                	jal	1c0089ba <__rt_cbsys_exec>
1c008856:	c11d                	beqz	a0,1c00887c <__rt_init+0xce>
1c008858:	f1402673          	csrr	a2,mhartid
1c00885c:	1c000537          	lui	a0,0x1c000
1c008860:	40565593          	srai	a1,a2,0x5
1c008864:	f265b5b3          	p.bclr	a1,a1,25,6
1c008868:	f4563633          	p.bclr	a2,a2,26,5
1c00886c:	42850513          	addi	a0,a0,1064 # 1c000428 <__DTOR_END__+0xd0>
1c008870:	05a010ef          	jal	ra,1c0098ca <printf>
1c008874:	7c3000ef          	jal	ra,1c009836 <abort>
1c008878:	9782                	jalr	a5
1c00887a:	b7f9                	j	1c008848 <__rt_init+0x9a>
1c00887c:	40b2                	lw	ra,12(sp)
1c00887e:	4422                	lw	s0,8(sp)
1c008880:	0141                	addi	sp,sp,16
1c008882:	8082                	ret

1c008884 <__rt_deinit>:
1c008884:	1c0017b7          	lui	a5,0x1c001
1c008888:	e787a783          	lw	a5,-392(a5) # 1c000e78 <__rt_platform>
1c00888c:	1141                	addi	sp,sp,-16
1c00888e:	c606                	sw	ra,12(sp)
1c008890:	c422                	sw	s0,8(sp)
1c008892:	0037b463          	p.bneimm	a5,3,1c00889a <__rt_deinit+0x16>
1c008896:	7d005073          	csrwi	0x7d0,0
1c00889a:	4505                	li	a0,1
1c00889c:	1c000437          	lui	s0,0x1c000
1c0088a0:	2a29                	jal	1c0089ba <__rt_cbsys_exec>
1c0088a2:	35440413          	addi	s0,s0,852 # 1c000354 <dtor_list+0x4>
1c0088a6:	0044278b          	p.lw	a5,4(s0!)
1c0088aa:	e789                	bnez	a5,1c0088b4 <__rt_deinit+0x30>
1c0088ac:	40b2                	lw	ra,12(sp)
1c0088ae:	4422                	lw	s0,8(sp)
1c0088b0:	0141                	addi	sp,sp,16
1c0088b2:	8082                	ret
1c0088b4:	9782                	jalr	a5
1c0088b6:	bfc5                	j	1c0088a6 <__rt_deinit+0x22>

1c0088b8 <rt_irq_set_handler>:
1c0088b8:	f14027f3          	csrr	a5,mhartid
1c0088bc:	46fd                	li	a3,31
1c0088be:	ca5797b3          	p.extractu	a5,a5,5,5
1c0088c2:	4701                	li	a4,0
1c0088c4:	00d79663          	bne	a5,a3,1c0088d0 <rt_irq_set_handler+0x18>
1c0088c8:	30502773          	csrr	a4,mtvec
1c0088cc:	c0073733          	p.bclr	a4,a4,0,0
1c0088d0:	050a                	slli	a0,a0,0x2
1c0088d2:	8d89                	sub	a1,a1,a0
1c0088d4:	8d99                	sub	a1,a1,a4
1c0088d6:	c14586b3          	p.extract	a3,a1,0,20
1c0088da:	06f00793          	li	a5,111
1c0088de:	c1f6a7b3          	p.insert	a5,a3,0,31
1c0088e2:	d21586b3          	p.extract	a3,a1,9,1
1c0088e6:	d356a7b3          	p.insert	a5,a3,9,21
1c0088ea:	c0b586b3          	p.extract	a3,a1,0,11
1c0088ee:	c146a7b3          	p.insert	a5,a3,0,20
1c0088f2:	cec585b3          	p.extract	a1,a1,7,12
1c0088f6:	cec5a7b3          	p.insert	a5,a1,7,12
1c0088fa:	00f56723          	p.sw	a5,a4(a0)
1c0088fe:	8082                	ret

1c008900 <illegal_insn_handler_c>:
1c008900:	8082                	ret

1c008902 <__rt_handle_illegal_instr>:
1c008902:	1141                	addi	sp,sp,-16
1c008904:	c606                	sw	ra,12(sp)
1c008906:	c422                	sw	s0,8(sp)
1c008908:	341026f3          	csrr	a3,mepc
1c00890c:	1c0017b7          	lui	a5,0x1c001
1c008910:	d887a703          	lw	a4,-632(a5) # 1c000d88 <__rt_debug_config>
1c008914:	843e                	mv	s0,a5
1c008916:	fc173733          	p.bclr	a4,a4,30,1
1c00891a:	c305                	beqz	a4,1c00893a <__rt_handle_illegal_instr+0x38>
1c00891c:	4298                	lw	a4,0(a3)
1c00891e:	f1402673          	csrr	a2,mhartid
1c008922:	1c000537          	lui	a0,0x1c000
1c008926:	40565593          	srai	a1,a2,0x5
1c00892a:	f265b5b3          	p.bclr	a1,a1,25,6
1c00892e:	f4563633          	p.bclr	a2,a2,26,5
1c008932:	48050513          	addi	a0,a0,1152 # 1c000480 <__DTOR_END__+0x128>
1c008936:	795000ef          	jal	ra,1c0098ca <printf>
1c00893a:	d8842783          	lw	a5,-632(s0)
1c00893e:	c01797b3          	p.extractu	a5,a5,0,1
1c008942:	c399                	beqz	a5,1c008948 <__rt_handle_illegal_instr+0x46>
1c008944:	6f3000ef          	jal	ra,1c009836 <abort>
1c008948:	4422                	lw	s0,8(sp)
1c00894a:	40b2                	lw	ra,12(sp)
1c00894c:	0141                	addi	sp,sp,16
1c00894e:	fb3ff06f          	j	1c008900 <illegal_insn_handler_c>

1c008952 <__rt_irq_init>:
1c008952:	1a10a7b7          	lui	a5,0x1a10a
1c008956:	577d                	li	a4,-1
1c008958:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__rt_udma_callback_data+0x1a109510>
1c00895c:	f14027f3          	csrr	a5,mhartid
1c008960:	477d                	li	a4,31
1c008962:	ca5797b3          	p.extractu	a5,a5,5,5
1c008966:	00e79a63          	bne	a5,a4,1c00897a <__rt_irq_init+0x28>
1c00896a:	1c0087b7          	lui	a5,0x1c008
1c00896e:	00078793          	mv	a5,a5
1c008972:	c007c7b3          	p.bset	a5,a5,0,0
1c008976:	30579073          	csrw	mtvec,a5
1c00897a:	8082                	ret

1c00897c <__rt_cbsys_add>:
1c00897c:	1101                	addi	sp,sp,-32
1c00897e:	cc22                	sw	s0,24(sp)
1c008980:	ca26                	sw	s1,20(sp)
1c008982:	842a                	mv	s0,a0
1c008984:	84ae                	mv	s1,a1
1c008986:	4501                	li	a0,0
1c008988:	45b1                	li	a1,12
1c00898a:	c632                	sw	a2,12(sp)
1c00898c:	ce06                	sw	ra,28(sp)
1c00898e:	3671                	jal	1c00851a <rt_alloc>
1c008990:	4632                	lw	a2,12(sp)
1c008992:	c115                	beqz	a0,1c0089b6 <__rt_cbsys_add+0x3a>
1c008994:	1c0017b7          	lui	a5,0x1c001
1c008998:	040a                	slli	s0,s0,0x2
1c00899a:	d8c78793          	addi	a5,a5,-628 # 1c000d8c <cbsys_first>
1c00899e:	97a2                	add	a5,a5,s0
1c0089a0:	4398                	lw	a4,0(a5)
1c0089a2:	c104                	sw	s1,0(a0)
1c0089a4:	c150                	sw	a2,4(a0)
1c0089a6:	c518                	sw	a4,8(a0)
1c0089a8:	c388                	sw	a0,0(a5)
1c0089aa:	4501                	li	a0,0
1c0089ac:	40f2                	lw	ra,28(sp)
1c0089ae:	4462                	lw	s0,24(sp)
1c0089b0:	44d2                	lw	s1,20(sp)
1c0089b2:	6105                	addi	sp,sp,32
1c0089b4:	8082                	ret
1c0089b6:	557d                	li	a0,-1
1c0089b8:	bfd5                	j	1c0089ac <__rt_cbsys_add+0x30>

1c0089ba <__rt_cbsys_exec>:
1c0089ba:	1141                	addi	sp,sp,-16
1c0089bc:	c422                	sw	s0,8(sp)
1c0089be:	1c001437          	lui	s0,0x1c001
1c0089c2:	050a                	slli	a0,a0,0x2
1c0089c4:	d8c40413          	addi	s0,s0,-628 # 1c000d8c <cbsys_first>
1c0089c8:	20a47403          	p.lw	s0,a0(s0)
1c0089cc:	c606                	sw	ra,12(sp)
1c0089ce:	e411                	bnez	s0,1c0089da <__rt_cbsys_exec+0x20>
1c0089d0:	4501                	li	a0,0
1c0089d2:	40b2                	lw	ra,12(sp)
1c0089d4:	4422                	lw	s0,8(sp)
1c0089d6:	0141                	addi	sp,sp,16
1c0089d8:	8082                	ret
1c0089da:	401c                	lw	a5,0(s0)
1c0089dc:	4048                	lw	a0,4(s0)
1c0089de:	9782                	jalr	a5
1c0089e0:	e119                	bnez	a0,1c0089e6 <__rt_cbsys_exec+0x2c>
1c0089e2:	4400                	lw	s0,8(s0)
1c0089e4:	b7ed                	j	1c0089ce <__rt_cbsys_exec+0x14>
1c0089e6:	557d                	li	a0,-1
1c0089e8:	b7ed                	j	1c0089d2 <__rt_cbsys_exec+0x18>

1c0089ea <__rt_utils_init>:
1c0089ea:	1c0017b7          	lui	a5,0x1c001
1c0089ee:	d8c78793          	addi	a5,a5,-628 # 1c000d8c <cbsys_first>
1c0089f2:	0007a023          	sw	zero,0(a5)
1c0089f6:	0007a223          	sw	zero,4(a5)
1c0089fa:	0007a423          	sw	zero,8(a5)
1c0089fe:	0007a623          	sw	zero,12(a5)
1c008a02:	0007a823          	sw	zero,16(a5)
1c008a06:	0007aa23          	sw	zero,20(a5)
1c008a0a:	8082                	ret

1c008a0c <__rt_fc_lock>:
1c008a0c:	1141                	addi	sp,sp,-16
1c008a0e:	c422                	sw	s0,8(sp)
1c008a10:	c606                	sw	ra,12(sp)
1c008a12:	c226                	sw	s1,4(sp)
1c008a14:	842a                	mv	s0,a0
1c008a16:	300474f3          	csrrci	s1,mstatus,8
1c008a1a:	401c                	lw	a5,0(s0)
1c008a1c:	eb91                	bnez	a5,1c008a30 <__rt_fc_lock+0x24>
1c008a1e:	4785                	li	a5,1
1c008a20:	c01c                	sw	a5,0(s0)
1c008a22:	30049073          	csrw	mstatus,s1
1c008a26:	40b2                	lw	ra,12(sp)
1c008a28:	4422                	lw	s0,8(sp)
1c008a2a:	4492                	lw	s1,4(sp)
1c008a2c:	0141                	addi	sp,sp,16
1c008a2e:	8082                	ret
1c008a30:	4585                	li	a1,1
1c008a32:	e3ff7517          	auipc	a0,0xe3ff7
1c008a36:	5ea50513          	addi	a0,a0,1514 # 1c <__rt_sched>
1c008a3a:	26b5                	jal	1c008da6 <__rt_event_execute>
1c008a3c:	bff9                	j	1c008a1a <__rt_fc_lock+0xe>

1c008a3e <__rt_fc_unlock>:
1c008a3e:	300477f3          	csrrci	a5,mstatus,8
1c008a42:	00052023          	sw	zero,0(a0)
1c008a46:	30079073          	csrw	mstatus,a5
1c008a4a:	8082                	ret

1c008a4c <__rt_event_enqueue>:
1c008a4c:	01c02783          	lw	a5,28(zero) # 1c <__rt_sched>
1c008a50:	00052c23          	sw	zero,24(a0)
1c008a54:	c799                	beqz	a5,1c008a62 <__rt_event_enqueue+0x16>
1c008a56:	02002783          	lw	a5,32(zero) # 20 <__rt_sched+0x4>
1c008a5a:	cf88                	sw	a0,24(a5)
1c008a5c:	02a02023          	sw	a0,32(zero) # 20 <__rt_sched+0x4>
1c008a60:	8082                	ret
1c008a62:	00a02e23          	sw	a0,28(zero) # 1c <__rt_sched>
1c008a66:	bfdd                	j	1c008a5c <__rt_event_enqueue+0x10>

1c008a68 <__rt_bridge_check_bridge_req.part.5>:
1c008a68:	1c001737          	lui	a4,0x1c001
1c008a6c:	db470793          	addi	a5,a4,-588 # 1c000db4 <__hal_debug_struct>
1c008a70:	0a47a783          	lw	a5,164(a5)
1c008a74:	db470713          	addi	a4,a4,-588
1c008a78:	c789                	beqz	a5,1c008a82 <__rt_bridge_check_bridge_req.part.5+0x1a>
1c008a7a:	4f94                	lw	a3,24(a5)
1c008a7c:	e681                	bnez	a3,1c008a84 <__rt_bridge_check_bridge_req.part.5+0x1c>
1c008a7e:	0af72623          	sw	a5,172(a4)
1c008a82:	8082                	ret
1c008a84:	479c                	lw	a5,8(a5)
1c008a86:	bfcd                	j	1c008a78 <__rt_bridge_check_bridge_req.part.5+0x10>

1c008a88 <__rt_bridge_wait>:
1c008a88:	f14027f3          	csrr	a5,mhartid
1c008a8c:	477d                	li	a4,31
1c008a8e:	ca5797b3          	p.extractu	a5,a5,5,5
1c008a92:	02e79f63          	bne	a5,a4,1c008ad0 <__rt_bridge_wait+0x48>
1c008a96:	1a10a7b7          	lui	a5,0x1a10a
1c008a9a:	80c78513          	addi	a0,a5,-2036 # 1a10980c <__rt_udma_callback_data+0x1a109514>
1c008a9e:	6711                	lui	a4,0x4
1c008aa0:	80478593          	addi	a1,a5,-2044
1c008aa4:	80878613          	addi	a2,a5,-2040
1c008aa8:	300476f3          	csrrci	a3,mstatus,8
1c008aac:	00052803          	lw	a6,0(a0)
1c008ab0:	01181893          	slli	a7,a6,0x11
1c008ab4:	0008c963          	bltz	a7,1c008ac6 <__rt_bridge_wait+0x3e>
1c008ab8:	c198                	sw	a4,0(a1)
1c008aba:	10500073          	wfi
1c008abe:	c218                	sw	a4,0(a2)
1c008ac0:	30069073          	csrw	mstatus,a3
1c008ac4:	b7d5                	j	1c008aa8 <__rt_bridge_wait+0x20>
1c008ac6:	81478793          	addi	a5,a5,-2028
1c008aca:	c398                	sw	a4,0(a5)
1c008acc:	30069073          	csrw	mstatus,a3
1c008ad0:	8082                	ret

1c008ad2 <__rt_bridge_handle_notif>:
1c008ad2:	1141                	addi	sp,sp,-16
1c008ad4:	c422                	sw	s0,8(sp)
1c008ad6:	1c001437          	lui	s0,0x1c001
1c008ada:	db440793          	addi	a5,s0,-588 # 1c000db4 <__hal_debug_struct>
1c008ade:	0a47a783          	lw	a5,164(a5)
1c008ae2:	c606                	sw	ra,12(sp)
1c008ae4:	c226                	sw	s1,4(sp)
1c008ae6:	c04a                	sw	s2,0(sp)
1c008ae8:	db440413          	addi	s0,s0,-588
1c008aec:	c399                	beqz	a5,1c008af2 <__rt_bridge_handle_notif+0x20>
1c008aee:	4bd8                	lw	a4,20(a5)
1c008af0:	e30d                	bnez	a4,1c008b12 <__rt_bridge_handle_notif+0x40>
1c008af2:	0b442783          	lw	a5,180(s0)
1c008af6:	c789                	beqz	a5,1c008b00 <__rt_bridge_handle_notif+0x2e>
1c008af8:	43a8                	lw	a0,64(a5)
1c008afa:	0a042a23          	sw	zero,180(s0)
1c008afe:	37b9                	jal	1c008a4c <__rt_event_enqueue>
1c008b00:	0ac42783          	lw	a5,172(s0)
1c008b04:	eb9d                	bnez	a5,1c008b3a <__rt_bridge_handle_notif+0x68>
1c008b06:	4422                	lw	s0,8(sp)
1c008b08:	40b2                	lw	ra,12(sp)
1c008b0a:	4492                	lw	s1,4(sp)
1c008b0c:	4902                	lw	s2,0(sp)
1c008b0e:	0141                	addi	sp,sp,16
1c008b10:	bfa1                	j	1c008a68 <__rt_bridge_check_bridge_req.part.5>
1c008b12:	0087a903          	lw	s2,8(a5)
1c008b16:	4fd8                	lw	a4,28(a5)
1c008b18:	0b242223          	sw	s2,164(s0)
1c008b1c:	cb01                	beqz	a4,1c008b2c <__rt_bridge_handle_notif+0x5a>
1c008b1e:	0b042703          	lw	a4,176(s0)
1c008b22:	c798                	sw	a4,8(a5)
1c008b24:	0af42823          	sw	a5,176(s0)
1c008b28:	87ca                	mv	a5,s2
1c008b2a:	b7c9                	j	1c008aec <__rt_bridge_handle_notif+0x1a>
1c008b2c:	43a8                	lw	a0,64(a5)
1c008b2e:	300474f3          	csrrci	s1,mstatus,8
1c008b32:	3f29                	jal	1c008a4c <__rt_event_enqueue>
1c008b34:	30049073          	csrw	mstatus,s1
1c008b38:	bfc5                	j	1c008b28 <__rt_bridge_handle_notif+0x56>
1c008b3a:	40b2                	lw	ra,12(sp)
1c008b3c:	4422                	lw	s0,8(sp)
1c008b3e:	4492                	lw	s1,4(sp)
1c008b40:	4902                	lw	s2,0(sp)
1c008b42:	0141                	addi	sp,sp,16
1c008b44:	8082                	ret

1c008b46 <__rt_bridge_check_connection>:
1c008b46:	1c0016b7          	lui	a3,0x1c001
1c008b4a:	db468693          	addi	a3,a3,-588 # 1c000db4 <__hal_debug_struct>
1c008b4e:	469c                	lw	a5,8(a3)
1c008b50:	ef9d                	bnez	a5,1c008b8e <__rt_bridge_check_connection+0x48>
1c008b52:	1a1047b7          	lui	a5,0x1a104
1c008b56:	07478793          	addi	a5,a5,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008b5a:	4398                	lw	a4,0(a5)
1c008b5c:	8325                	srli	a4,a4,0x9
1c008b5e:	f8373733          	p.bclr	a4,a4,28,3
1c008b62:	02773663          	p.bneimm	a4,7,1c008b8e <__rt_bridge_check_connection+0x48>
1c008b66:	1141                	addi	sp,sp,-16
1c008b68:	c422                	sw	s0,8(sp)
1c008b6a:	c606                	sw	ra,12(sp)
1c008b6c:	4705                	li	a4,1
1c008b6e:	c698                	sw	a4,8(a3)
1c008b70:	4709                	li	a4,2
1c008b72:	c398                	sw	a4,0(a5)
1c008b74:	843e                	mv	s0,a5
1c008b76:	401c                	lw	a5,0(s0)
1c008b78:	83a5                	srli	a5,a5,0x9
1c008b7a:	f837b7b3          	p.bclr	a5,a5,28,3
1c008b7e:	0077a663          	p.beqimm	a5,7,1c008b8a <__rt_bridge_check_connection+0x44>
1c008b82:	40b2                	lw	ra,12(sp)
1c008b84:	4422                	lw	s0,8(sp)
1c008b86:	0141                	addi	sp,sp,16
1c008b88:	8082                	ret
1c008b8a:	3dfd                	jal	1c008a88 <__rt_bridge_wait>
1c008b8c:	b7ed                	j	1c008b76 <__rt_bridge_check_connection+0x30>
1c008b8e:	8082                	ret

1c008b90 <__rt_bridge_set_available>:
1c008b90:	1c0017b7          	lui	a5,0x1c001
1c008b94:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008b98:	4798                	lw	a4,8(a5)
1c008b9a:	1a1047b7          	lui	a5,0x1a104
1c008b9e:	07478793          	addi	a5,a5,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008ba2:	e701                	bnez	a4,1c008baa <__rt_bridge_set_available+0x1a>
1c008ba4:	4721                	li	a4,8
1c008ba6:	c398                	sw	a4,0(a5)
1c008ba8:	8082                	ret
1c008baa:	4709                	li	a4,2
1c008bac:	bfed                	j	1c008ba6 <__rt_bridge_set_available+0x16>

1c008bae <__rt_bridge_send_notif>:
1c008bae:	1141                	addi	sp,sp,-16
1c008bb0:	c606                	sw	ra,12(sp)
1c008bb2:	3f51                	jal	1c008b46 <__rt_bridge_check_connection>
1c008bb4:	1c0017b7          	lui	a5,0x1c001
1c008bb8:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008bbc:	479c                	lw	a5,8(a5)
1c008bbe:	c789                	beqz	a5,1c008bc8 <__rt_bridge_send_notif+0x1a>
1c008bc0:	1a1047b7          	lui	a5,0x1a104
1c008bc4:	4719                	li	a4,6
1c008bc6:	dbf8                	sw	a4,116(a5)
1c008bc8:	40b2                	lw	ra,12(sp)
1c008bca:	0141                	addi	sp,sp,16
1c008bcc:	8082                	ret

1c008bce <__rt_bridge_clear_notif>:
1c008bce:	1141                	addi	sp,sp,-16
1c008bd0:	c606                	sw	ra,12(sp)
1c008bd2:	3f95                	jal	1c008b46 <__rt_bridge_check_connection>
1c008bd4:	1c0017b7          	lui	a5,0x1c001
1c008bd8:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008bdc:	479c                	lw	a5,8(a5)
1c008bde:	c781                	beqz	a5,1c008be6 <__rt_bridge_clear_notif+0x18>
1c008be0:	40b2                	lw	ra,12(sp)
1c008be2:	0141                	addi	sp,sp,16
1c008be4:	b775                	j	1c008b90 <__rt_bridge_set_available>
1c008be6:	40b2                	lw	ra,12(sp)
1c008be8:	0141                	addi	sp,sp,16
1c008bea:	8082                	ret

1c008bec <__rt_bridge_printf_flush>:
1c008bec:	1141                	addi	sp,sp,-16
1c008bee:	c422                	sw	s0,8(sp)
1c008bf0:	c606                	sw	ra,12(sp)
1c008bf2:	1c001437          	lui	s0,0x1c001
1c008bf6:	3f81                	jal	1c008b46 <__rt_bridge_check_connection>
1c008bf8:	db440793          	addi	a5,s0,-588 # 1c000db4 <__hal_debug_struct>
1c008bfc:	479c                	lw	a5,8(a5)
1c008bfe:	c385                	beqz	a5,1c008c1e <__rt_bridge_printf_flush+0x32>
1c008c00:	db440413          	addi	s0,s0,-588
1c008c04:	485c                	lw	a5,20(s0)
1c008c06:	e399                	bnez	a5,1c008c0c <__rt_bridge_printf_flush+0x20>
1c008c08:	4c1c                	lw	a5,24(s0)
1c008c0a:	cb91                	beqz	a5,1c008c1e <__rt_bridge_printf_flush+0x32>
1c008c0c:	374d                	jal	1c008bae <__rt_bridge_send_notif>
1c008c0e:	485c                	lw	a5,20(s0)
1c008c10:	e789                	bnez	a5,1c008c1a <__rt_bridge_printf_flush+0x2e>
1c008c12:	4422                	lw	s0,8(sp)
1c008c14:	40b2                	lw	ra,12(sp)
1c008c16:	0141                	addi	sp,sp,16
1c008c18:	bf5d                	j	1c008bce <__rt_bridge_clear_notif>
1c008c1a:	35bd                	jal	1c008a88 <__rt_bridge_wait>
1c008c1c:	bfcd                	j	1c008c0e <__rt_bridge_printf_flush+0x22>
1c008c1e:	40b2                	lw	ra,12(sp)
1c008c20:	4422                	lw	s0,8(sp)
1c008c22:	0141                	addi	sp,sp,16
1c008c24:	8082                	ret

1c008c26 <__rt_bridge_req_shutdown>:
1c008c26:	1141                	addi	sp,sp,-16
1c008c28:	c606                	sw	ra,12(sp)
1c008c2a:	c422                	sw	s0,8(sp)
1c008c2c:	3f29                	jal	1c008b46 <__rt_bridge_check_connection>
1c008c2e:	1c0017b7          	lui	a5,0x1c001
1c008c32:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008c36:	479c                	lw	a5,8(a5)
1c008c38:	c7a1                	beqz	a5,1c008c80 <__rt_bridge_req_shutdown+0x5a>
1c008c3a:	1a104437          	lui	s0,0x1a104
1c008c3e:	377d                	jal	1c008bec <__rt_bridge_printf_flush>
1c008c40:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008c44:	401c                	lw	a5,0(s0)
1c008c46:	83a5                	srli	a5,a5,0x9
1c008c48:	f837b7b3          	p.bclr	a5,a5,28,3
1c008c4c:	0277ae63          	p.beqimm	a5,7,1c008c88 <__rt_bridge_req_shutdown+0x62>
1c008c50:	4791                	li	a5,4
1c008c52:	c01c                	sw	a5,0(s0)
1c008c54:	1a104437          	lui	s0,0x1a104
1c008c58:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008c5c:	401c                	lw	a5,0(s0)
1c008c5e:	83a5                	srli	a5,a5,0x9
1c008c60:	f837b7b3          	p.bclr	a5,a5,28,3
1c008c64:	0277b463          	p.bneimm	a5,7,1c008c8c <__rt_bridge_req_shutdown+0x66>
1c008c68:	00042023          	sw	zero,0(s0)
1c008c6c:	1a104437          	lui	s0,0x1a104
1c008c70:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008c74:	401c                	lw	a5,0(s0)
1c008c76:	83a5                	srli	a5,a5,0x9
1c008c78:	f837b7b3          	p.bclr	a5,a5,28,3
1c008c7c:	0077aa63          	p.beqimm	a5,7,1c008c90 <__rt_bridge_req_shutdown+0x6a>
1c008c80:	40b2                	lw	ra,12(sp)
1c008c82:	4422                	lw	s0,8(sp)
1c008c84:	0141                	addi	sp,sp,16
1c008c86:	8082                	ret
1c008c88:	3501                	jal	1c008a88 <__rt_bridge_wait>
1c008c8a:	bf6d                	j	1c008c44 <__rt_bridge_req_shutdown+0x1e>
1c008c8c:	3bf5                	jal	1c008a88 <__rt_bridge_wait>
1c008c8e:	b7f9                	j	1c008c5c <__rt_bridge_req_shutdown+0x36>
1c008c90:	3be5                	jal	1c008a88 <__rt_bridge_wait>
1c008c92:	b7cd                	j	1c008c74 <__rt_bridge_req_shutdown+0x4e>

1c008c94 <__rt_bridge_init>:
1c008c94:	1c0017b7          	lui	a5,0x1c001
1c008c98:	1a10a737          	lui	a4,0x1a10a
1c008c9c:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c008ca0:	81070713          	addi	a4,a4,-2032 # 1a109810 <__rt_udma_callback_data+0x1a109518>
1c008ca4:	0ae7ac23          	sw	a4,184(a5)
1c008ca8:	4741                	li	a4,16
1c008caa:	0a07a223          	sw	zero,164(a5)
1c008cae:	0a07a623          	sw	zero,172(a5)
1c008cb2:	0a07aa23          	sw	zero,180(a5)
1c008cb6:	0ae7ae23          	sw	a4,188(a5)
1c008cba:	00400793          	li	a5,4
1c008cbe:	0007a823          	sw	zero,16(a5)
1c008cc2:	0007a023          	sw	zero,0(a5)
1c008cc6:	8082                	ret

1c008cc8 <__rt_event_init>:
1c008cc8:	02052023          	sw	zero,32(a0)
1c008ccc:	02052223          	sw	zero,36(a0)
1c008cd0:	02052823          	sw	zero,48(a0)
1c008cd4:	00052023          	sw	zero,0(a0)
1c008cd8:	8082                	ret

1c008cda <__rt_wait_event_prepare_blocking>:
1c008cda:	01800793          	li	a5,24
1c008cde:	4388                	lw	a0,0(a5)
1c008ce0:	4d18                	lw	a4,24(a0)
1c008ce2:	02052223          	sw	zero,36(a0)
1c008ce6:	c398                	sw	a4,0(a5)
1c008ce8:	4785                	li	a5,1
1c008cea:	d11c                	sw	a5,32(a0)
1c008cec:	00052023          	sw	zero,0(a0)
1c008cf0:	8082                	ret

1c008cf2 <rt_event_alloc>:
1c008cf2:	1141                	addi	sp,sp,-16
1c008cf4:	c422                	sw	s0,8(sp)
1c008cf6:	c606                	sw	ra,12(sp)
1c008cf8:	c226                	sw	s1,4(sp)
1c008cfa:	842e                	mv	s0,a1
1c008cfc:	300474f3          	csrrci	s1,mstatus,8
1c008d00:	f14027f3          	csrr	a5,mhartid
1c008d04:	8795                	srai	a5,a5,0x5
1c008d06:	f267b7b3          	p.bclr	a5,a5,25,6
1c008d0a:	477d                	li	a4,31
1c008d0c:	00378513          	addi	a0,a5,3
1c008d10:	00e79363          	bne	a5,a4,1c008d16 <rt_event_alloc+0x24>
1c008d14:	4501                	li	a0,0
1c008d16:	08c00593          	li	a1,140
1c008d1a:	02b405b3          	mul	a1,s0,a1
1c008d1e:	ffcff0ef          	jal	ra,1c00851a <rt_alloc>
1c008d22:	87aa                	mv	a5,a0
1c008d24:	557d                	li	a0,-1
1c008d26:	cf91                	beqz	a5,1c008d42 <rt_event_alloc+0x50>
1c008d28:	01802683          	lw	a3,24(zero) # 18 <__rt_first_free>
1c008d2c:	4581                	li	a1,0
1c008d2e:	4601                	li	a2,0
1c008d30:	01800713          	li	a4,24
1c008d34:	00864c63          	blt	a2,s0,1c008d4c <rt_event_alloc+0x5a>
1c008d38:	c191                	beqz	a1,1c008d3c <rt_event_alloc+0x4a>
1c008d3a:	c314                	sw	a3,0(a4)
1c008d3c:	30049073          	csrw	mstatus,s1
1c008d40:	4501                	li	a0,0
1c008d42:	40b2                	lw	ra,12(sp)
1c008d44:	4422                	lw	s0,8(sp)
1c008d46:	4492                	lw	s1,4(sp)
1c008d48:	0141                	addi	sp,sp,16
1c008d4a:	8082                	ret
1c008d4c:	cf94                	sw	a3,24(a5)
1c008d4e:	0207a023          	sw	zero,32(a5)
1c008d52:	0207a223          	sw	zero,36(a5)
1c008d56:	0207a823          	sw	zero,48(a5)
1c008d5a:	0007a023          	sw	zero,0(a5)
1c008d5e:	86be                	mv	a3,a5
1c008d60:	0605                	addi	a2,a2,1
1c008d62:	4585                	li	a1,1
1c008d64:	08c78793          	addi	a5,a5,140
1c008d68:	b7f1                	j	1c008d34 <rt_event_alloc+0x42>

1c008d6a <rt_event_get>:
1c008d6a:	30047773          	csrrci	a4,mstatus,8
1c008d6e:	01800793          	li	a5,24
1c008d72:	4388                	lw	a0,0(a5)
1c008d74:	c509                	beqz	a0,1c008d7e <rt_event_get+0x14>
1c008d76:	4d14                	lw	a3,24(a0)
1c008d78:	c150                	sw	a2,4(a0)
1c008d7a:	c394                	sw	a3,0(a5)
1c008d7c:	c10c                	sw	a1,0(a0)
1c008d7e:	30071073          	csrw	mstatus,a4
1c008d82:	8082                	ret

1c008d84 <rt_event_get_blocking>:
1c008d84:	30047773          	csrrci	a4,mstatus,8
1c008d88:	01800793          	li	a5,24
1c008d8c:	4388                	lw	a0,0(a5)
1c008d8e:	c909                	beqz	a0,1c008da0 <rt_event_get_blocking+0x1c>
1c008d90:	4d14                	lw	a3,24(a0)
1c008d92:	00052223          	sw	zero,4(a0)
1c008d96:	c394                	sw	a3,0(a5)
1c008d98:	4785                	li	a5,1
1c008d9a:	00052023          	sw	zero,0(a0)
1c008d9e:	d11c                	sw	a5,32(a0)
1c008da0:	30071073          	csrw	mstatus,a4
1c008da4:	8082                	ret

1c008da6 <__rt_event_execute>:
1c008da6:	1141                	addi	sp,sp,-16
1c008da8:	c422                	sw	s0,8(sp)
1c008daa:	01800793          	li	a5,24
1c008dae:	43dc                	lw	a5,4(a5)
1c008db0:	c606                	sw	ra,12(sp)
1c008db2:	c226                	sw	s1,4(sp)
1c008db4:	01800413          	li	s0,24
1c008db8:	eb91                	bnez	a5,1c008dcc <__rt_event_execute+0x26>
1c008dba:	c1a9                	beqz	a1,1c008dfc <__rt_event_execute+0x56>
1c008dbc:	10500073          	wfi
1c008dc0:	300467f3          	csrrsi	a5,mstatus,8
1c008dc4:	300477f3          	csrrci	a5,mstatus,8
1c008dc8:	405c                	lw	a5,4(s0)
1c008dca:	cb8d                	beqz	a5,1c008dfc <__rt_event_execute+0x56>
1c008dcc:	4485                	li	s1,1
1c008dce:	4f98                	lw	a4,24(a5)
1c008dd0:	53d4                	lw	a3,36(a5)
1c008dd2:	00978823          	sb	s1,16(a5)
1c008dd6:	c058                	sw	a4,4(s0)
1c008dd8:	43c8                	lw	a0,4(a5)
1c008dda:	4398                	lw	a4,0(a5)
1c008ddc:	e691                	bnez	a3,1c008de8 <__rt_event_execute+0x42>
1c008dde:	5394                	lw	a3,32(a5)
1c008de0:	e681                	bnez	a3,1c008de8 <__rt_event_execute+0x42>
1c008de2:	4014                	lw	a3,0(s0)
1c008de4:	c01c                	sw	a5,0(s0)
1c008de6:	cf94                	sw	a3,24(a5)
1c008de8:	0207a023          	sw	zero,32(a5)
1c008dec:	c711                	beqz	a4,1c008df8 <__rt_event_execute+0x52>
1c008dee:	300467f3          	csrrsi	a5,mstatus,8
1c008df2:	9702                	jalr	a4
1c008df4:	300477f3          	csrrci	a5,mstatus,8
1c008df8:	405c                	lw	a5,4(s0)
1c008dfa:	fbf1                	bnez	a5,1c008dce <__rt_event_execute+0x28>
1c008dfc:	40b2                	lw	ra,12(sp)
1c008dfe:	4422                	lw	s0,8(sp)
1c008e00:	4492                	lw	s1,4(sp)
1c008e02:	0141                	addi	sp,sp,16
1c008e04:	8082                	ret

1c008e06 <__rt_wait_event>:
1c008e06:	1141                	addi	sp,sp,-16
1c008e08:	c422                	sw	s0,8(sp)
1c008e0a:	c606                	sw	ra,12(sp)
1c008e0c:	842a                	mv	s0,a0
1c008e0e:	501c                	lw	a5,32(s0)
1c008e10:	ef81                	bnez	a5,1c008e28 <__rt_wait_event+0x22>
1c008e12:	581c                	lw	a5,48(s0)
1c008e14:	eb91                	bnez	a5,1c008e28 <__rt_wait_event+0x22>
1c008e16:	01800793          	li	a5,24
1c008e1a:	4398                	lw	a4,0(a5)
1c008e1c:	40b2                	lw	ra,12(sp)
1c008e1e:	c380                	sw	s0,0(a5)
1c008e20:	cc18                	sw	a4,24(s0)
1c008e22:	4422                	lw	s0,8(sp)
1c008e24:	0141                	addi	sp,sp,16
1c008e26:	8082                	ret
1c008e28:	4585                	li	a1,1
1c008e2a:	4501                	li	a0,0
1c008e2c:	3fad                	jal	1c008da6 <__rt_event_execute>
1c008e2e:	b7c5                	j	1c008e0e <__rt_wait_event+0x8>

1c008e30 <rt_event_wait>:
1c008e30:	1141                	addi	sp,sp,-16
1c008e32:	c606                	sw	ra,12(sp)
1c008e34:	c422                	sw	s0,8(sp)
1c008e36:	30047473          	csrrci	s0,mstatus,8
1c008e3a:	37f1                	jal	1c008e06 <__rt_wait_event>
1c008e3c:	30041073          	csrw	mstatus,s0
1c008e40:	40b2                	lw	ra,12(sp)
1c008e42:	4422                	lw	s0,8(sp)
1c008e44:	0141                	addi	sp,sp,16
1c008e46:	8082                	ret

1c008e48 <__rt_event_sched_init>:
1c008e48:	01800513          	li	a0,24
1c008e4c:	00052023          	sw	zero,0(a0)
1c008e50:	00052223          	sw	zero,4(a0)
1c008e54:	4585                	li	a1,1
1c008e56:	0511                	addi	a0,a0,4
1c008e58:	bd69                	j	1c008cf2 <rt_event_alloc>

1c008e5a <__rt_time_poweroff>:
1c008e5a:	1a10b7b7          	lui	a5,0x1a10b
1c008e5e:	0791                	addi	a5,a5,4
1c008e60:	0087a783          	lw	a5,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008e64:	1c001737          	lui	a4,0x1c001
1c008e68:	f2f72c23          	sw	a5,-200(a4) # 1c000f38 <timer_count>
1c008e6c:	4501                	li	a0,0
1c008e6e:	8082                	ret

1c008e70 <__rt_time_poweron>:
1c008e70:	1c0017b7          	lui	a5,0x1c001
1c008e74:	f387a703          	lw	a4,-200(a5) # 1c000f38 <timer_count>
1c008e78:	1a10b7b7          	lui	a5,0x1a10b
1c008e7c:	0791                	addi	a5,a5,4
1c008e7e:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008e82:	4501                	li	a0,0
1c008e84:	8082                	ret

1c008e86 <rt_event_push_delayed>:
1c008e86:	30047373          	csrrci	t1,mstatus,8
1c008e8a:	1c001637          	lui	a2,0x1c001
1c008e8e:	72c62703          	lw	a4,1836(a2) # 1c00172c <first_delayed>
1c008e92:	1a10b7b7          	lui	a5,0x1a10b
1c008e96:	0791                	addi	a5,a5,4
1c008e98:	0087a783          	lw	a5,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008e9c:	46f9                	li	a3,30
1c008e9e:	0405e5b3          	p.max	a1,a1,zero
1c008ea2:	02d5c5b3          	div	a1,a1,a3
1c008ea6:	800006b7          	lui	a3,0x80000
1c008eaa:	fff6c693          	not	a3,a3
1c008eae:	00d7f833          	and	a6,a5,a3
1c008eb2:	0585                	addi	a1,a1,1
1c008eb4:	97ae                	add	a5,a5,a1
1c008eb6:	d95c                	sw	a5,52(a0)
1c008eb8:	982e                	add	a6,a6,a1
1c008eba:	4781                	li	a5,0
1c008ebc:	c719                	beqz	a4,1c008eca <rt_event_push_delayed+0x44>
1c008ebe:	03472883          	lw	a7,52(a4)
1c008ec2:	00d8f8b3          	and	a7,a7,a3
1c008ec6:	0108e863          	bltu	a7,a6,1c008ed6 <rt_event_push_delayed+0x50>
1c008eca:	cb89                	beqz	a5,1c008edc <rt_event_push_delayed+0x56>
1c008ecc:	cf88                	sw	a0,24(a5)
1c008ece:	cd18                	sw	a4,24(a0)
1c008ed0:	30031073          	csrw	mstatus,t1
1c008ed4:	8082                	ret
1c008ed6:	87ba                	mv	a5,a4
1c008ed8:	4f18                	lw	a4,24(a4)
1c008eda:	b7cd                	j	1c008ebc <rt_event_push_delayed+0x36>
1c008edc:	1a10b7b7          	lui	a5,0x1a10b
1c008ee0:	0791                	addi	a5,a5,4
1c008ee2:	72a62623          	sw	a0,1836(a2)
1c008ee6:	cd18                	sw	a4,24(a0)
1c008ee8:	0087a703          	lw	a4,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008eec:	95ba                	add	a1,a1,a4
1c008eee:	00b7a823          	sw	a1,16(a5)
1c008ef2:	08500713          	li	a4,133
1c008ef6:	00e7a023          	sw	a4,0(a5)
1c008efa:	bfd9                	j	1c008ed0 <rt_event_push_delayed+0x4a>

1c008efc <rt_time_wait_us>:
1c008efc:	1101                	addi	sp,sp,-32
1c008efe:	85aa                	mv	a1,a0
1c008f00:	4501                	li	a0,0
1c008f02:	ce06                	sw	ra,28(sp)
1c008f04:	cc22                	sw	s0,24(sp)
1c008f06:	c62e                	sw	a1,12(sp)
1c008f08:	3db5                	jal	1c008d84 <rt_event_get_blocking>
1c008f0a:	45b2                	lw	a1,12(sp)
1c008f0c:	842a                	mv	s0,a0
1c008f0e:	3fa5                	jal	1c008e86 <rt_event_push_delayed>
1c008f10:	8522                	mv	a0,s0
1c008f12:	4462                	lw	s0,24(sp)
1c008f14:	40f2                	lw	ra,28(sp)
1c008f16:	6105                	addi	sp,sp,32
1c008f18:	bf21                	j	1c008e30 <rt_event_wait>

1c008f1a <__rt_time_init>:
1c008f1a:	1c0017b7          	lui	a5,0x1c001
1c008f1e:	7207a623          	sw	zero,1836(a5) # 1c00172c <first_delayed>
1c008f22:	1a10b7b7          	lui	a5,0x1a10b
1c008f26:	1141                	addi	sp,sp,-16
1c008f28:	08300713          	li	a4,131
1c008f2c:	0791                	addi	a5,a5,4
1c008f2e:	c606                	sw	ra,12(sp)
1c008f30:	c422                	sw	s0,8(sp)
1c008f32:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c008f36:	1c0095b7          	lui	a1,0x1c009
1c008f3a:	f9a58593          	addi	a1,a1,-102 # 1c008f9a <__rt_timer_handler>
1c008f3e:	452d                	li	a0,11
1c008f40:	3aa5                	jal	1c0088b8 <rt_irq_set_handler>
1c008f42:	6785                	lui	a5,0x1
1c008f44:	1a10a737          	lui	a4,0x1a10a
1c008f48:	80078793          	addi	a5,a5,-2048 # 800 <__rt_udma_callback_data+0x508>
1c008f4c:	1c0095b7          	lui	a1,0x1c009
1c008f50:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__rt_udma_callback_data+0x1a10950c>
1c008f54:	4601                	li	a2,0
1c008f56:	e5a58593          	addi	a1,a1,-422 # 1c008e5a <__rt_time_poweroff>
1c008f5a:	4509                	li	a0,2
1c008f5c:	3405                	jal	1c00897c <__rt_cbsys_add>
1c008f5e:	1c0095b7          	lui	a1,0x1c009
1c008f62:	842a                	mv	s0,a0
1c008f64:	4601                	li	a2,0
1c008f66:	e7058593          	addi	a1,a1,-400 # 1c008e70 <__rt_time_poweron>
1c008f6a:	450d                	li	a0,3
1c008f6c:	3c01                	jal	1c00897c <__rt_cbsys_add>
1c008f6e:	8d41                	or	a0,a0,s0
1c008f70:	c10d                	beqz	a0,1c008f92 <__rt_time_init+0x78>
1c008f72:	f1402673          	csrr	a2,mhartid
1c008f76:	1c000537          	lui	a0,0x1c000
1c008f7a:	40565593          	srai	a1,a2,0x5
1c008f7e:	f265b5b3          	p.bclr	a1,a1,25,6
1c008f82:	f4563633          	p.bclr	a2,a2,26,5
1c008f86:	4dc50513          	addi	a0,a0,1244 # 1c0004dc <__DTOR_END__+0x184>
1c008f8a:	141000ef          	jal	ra,1c0098ca <printf>
1c008f8e:	0a9000ef          	jal	ra,1c009836 <abort>
1c008f92:	40b2                	lw	ra,12(sp)
1c008f94:	4422                	lw	s0,8(sp)
1c008f96:	0141                	addi	sp,sp,16
1c008f98:	8082                	ret

1c008f9a <__rt_timer_handler>:
1c008f9a:	7179                	addi	sp,sp,-48
1c008f9c:	ce36                	sw	a3,28(sp)
1c008f9e:	1c0016b7          	lui	a3,0x1c001
1c008fa2:	ca3e                	sw	a5,20(sp)
1c008fa4:	72c6a783          	lw	a5,1836(a3) # 1c00172c <first_delayed>
1c008fa8:	cc3a                	sw	a4,24(sp)
1c008faa:	1a10b737          	lui	a4,0x1a10b
1c008fae:	0711                	addi	a4,a4,4
1c008fb0:	d61a                	sw	t1,44(sp)
1c008fb2:	d42a                	sw	a0,40(sp)
1c008fb4:	d22e                	sw	a1,36(sp)
1c008fb6:	d032                	sw	a2,32(sp)
1c008fb8:	c842                	sw	a6,16(sp)
1c008fba:	c646                	sw	a7,12(sp)
1c008fbc:	00872703          	lw	a4,8(a4) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008fc0:	01c02583          	lw	a1,28(zero) # 1c <__rt_sched>
1c008fc4:	02002603          	lw	a2,32(zero) # 20 <__rt_sched+0x4>
1c008fc8:	800008b7          	lui	a7,0x80000
1c008fcc:	4501                	li	a0,0
1c008fce:	4801                	li	a6,0
1c008fd0:	ffe8c893          	xori	a7,a7,-2
1c008fd4:	e3ad                	bnez	a5,1c009036 <__rt_timer_handler+0x9c>
1c008fd6:	00080463          	beqz	a6,1c008fde <__rt_timer_handler+0x44>
1c008fda:	00b02e23          	sw	a1,28(zero) # 1c <__rt_sched>
1c008fde:	c119                	beqz	a0,1c008fe4 <__rt_timer_handler+0x4a>
1c008fe0:	02c02023          	sw	a2,32(zero) # 20 <__rt_sched+0x4>
1c008fe4:	1a10b7b7          	lui	a5,0x1a10b
1c008fe8:	08100713          	li	a4,129
1c008fec:	0791                	addi	a5,a5,4
1c008fee:	7206a623          	sw	zero,1836(a3)
1c008ff2:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c008ff6:	6785                	lui	a5,0x1
1c008ff8:	1a10a737          	lui	a4,0x1a10a
1c008ffc:	80078793          	addi	a5,a5,-2048 # 800 <__rt_udma_callback_data+0x508>
1c009000:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__rt_udma_callback_data+0x1a10951c>
1c009004:	5332                	lw	t1,44(sp)
1c009006:	5522                	lw	a0,40(sp)
1c009008:	5592                	lw	a1,36(sp)
1c00900a:	5602                	lw	a2,32(sp)
1c00900c:	46f2                	lw	a3,28(sp)
1c00900e:	4762                	lw	a4,24(sp)
1c009010:	47d2                	lw	a5,20(sp)
1c009012:	4842                	lw	a6,16(sp)
1c009014:	48b2                	lw	a7,12(sp)
1c009016:	6145                	addi	sp,sp,48
1c009018:	30200073          	mret
1c00901c:	0187a303          	lw	t1,24(a5)
1c009020:	0007ac23          	sw	zero,24(a5)
1c009024:	c591                	beqz	a1,1c009030 <__rt_timer_handler+0x96>
1c009026:	ce1c                	sw	a5,24(a2)
1c009028:	863e                	mv	a2,a5
1c00902a:	4505                	li	a0,1
1c00902c:	879a                	mv	a5,t1
1c00902e:	b75d                	j	1c008fd4 <__rt_timer_handler+0x3a>
1c009030:	85be                	mv	a1,a5
1c009032:	4805                	li	a6,1
1c009034:	bfd5                	j	1c009028 <__rt_timer_handler+0x8e>
1c009036:	0347a303          	lw	t1,52(a5)
1c00903a:	40670333          	sub	t1,a4,t1
1c00903e:	fc68ffe3          	bleu	t1,a7,1c00901c <__rt_timer_handler+0x82>
1c009042:	00080463          	beqz	a6,1c00904a <__rt_timer_handler+0xb0>
1c009046:	00b02e23          	sw	a1,28(zero) # 1c <__rt_sched>
1c00904a:	c119                	beqz	a0,1c009050 <__rt_timer_handler+0xb6>
1c00904c:	02c02023          	sw	a2,32(zero) # 20 <__rt_sched+0x4>
1c009050:	72f6a623          	sw	a5,1836(a3)
1c009054:	1a10b6b7          	lui	a3,0x1a10b
1c009058:	0691                	addi	a3,a3,4
1c00905a:	0086a603          	lw	a2,8(a3) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c00905e:	5bdc                	lw	a5,52(a5)
1c009060:	40e78733          	sub	a4,a5,a4
1c009064:	9732                	add	a4,a4,a2
1c009066:	00e6a823          	sw	a4,16(a3)
1c00906a:	08500793          	li	a5,133
1c00906e:	00f6a023          	sw	a5,0(a3)
1c009072:	bf49                	j	1c009004 <__rt_timer_handler+0x6a>

1c009074 <rt_periph_copy>:
1c009074:	1101                	addi	sp,sp,-32
1c009076:	cc22                	sw	s0,24(sp)
1c009078:	ca26                	sw	s1,20(sp)
1c00907a:	ce06                	sw	ra,28(sp)
1c00907c:	c84a                	sw	s2,16(sp)
1c00907e:	842a                	mv	s0,a0
1c009080:	84ae                	mv	s1,a1
1c009082:	30047973          	csrrci	s2,mstatus,8
1c009086:	853e                	mv	a0,a5
1c009088:	eb91                	bnez	a5,1c00909c <rt_periph_copy+0x28>
1c00908a:	c632                	sw	a2,12(sp)
1c00908c:	c436                	sw	a3,8(sp)
1c00908e:	c23a                	sw	a4,4(sp)
1c009090:	c03e                	sw	a5,0(sp)
1c009092:	31a1                	jal	1c008cda <__rt_wait_event_prepare_blocking>
1c009094:	4782                	lw	a5,0(sp)
1c009096:	4712                	lw	a4,4(sp)
1c009098:	46a2                	lw	a3,8(sp)
1c00909a:	4632                	lw	a2,12(sp)
1c00909c:	e419                	bnez	s0,1c0090aa <rt_periph_copy+0x36>
1c00909e:	03450413          	addi	s0,a0,52
1c0090a2:	04052023          	sw	zero,64(a0)
1c0090a6:	04052823          	sw	zero,80(a0)
1c0090aa:	444c                	lw	a1,12(s0)
1c0090ac:	c054                	sw	a3,4(s0)
1c0090ae:	cc08                	sw	a0,24(s0)
1c0090b0:	f645b5b3          	p.bclr	a1,a1,27,4
1c0090b4:	4811                	li	a6,4
1c0090b6:	06b86263          	bltu	a6,a1,1c00911a <rt_periph_copy+0xa6>
1c0090ba:	03000593          	li	a1,48
1c0090be:	00549313          	slli	t1,s1,0x5
1c0090c2:	959a                	add	a1,a1,t1
1c0090c4:	0005a803          	lw	a6,0(a1)
1c0090c8:	00042a23          	sw	zero,20(s0)
1c0090cc:	03000893          	li	a7,48
1c0090d0:	04081f63          	bnez	a6,1c00912e <rt_periph_copy+0xba>
1c0090d4:	c180                	sw	s0,0(a1)
1c0090d6:	006885b3          	add	a1,a7,t1
1c0090da:	0085ae03          	lw	t3,8(a1)
1c0090de:	c1c0                	sw	s0,4(a1)
1c0090e0:	c0474733          	p.bset	a4,a4,0,4
1c0090e4:	040e1863          	bnez	t3,1c009134 <rt_periph_copy+0xc0>
1c0090e8:	4014d813          	srai	a6,s1,0x1
1c0090ec:	1a1025b7          	lui	a1,0x1a102
1c0090f0:	08058593          	addi	a1,a1,128 # 1a102080 <__rt_udma_callback_data+0x1a101d88>
1c0090f4:	081e                	slli	a6,a6,0x7
1c0090f6:	982e                	add	a6,a6,a1
1c0090f8:	00449593          	slli	a1,s1,0x4
1c0090fc:	89c1                	andi	a1,a1,16
1c0090fe:	95c2                	add	a1,a1,a6
1c009100:	00858e93          	addi	t4,a1,8
1c009104:	000ea803          	lw	a6,0(t4)
1c009108:	02087813          	andi	a6,a6,32
1c00910c:	02081463          	bnez	a6,1c009134 <rt_periph_copy+0xc0>
1c009110:	00c5a22b          	p.sw	a2,4(a1!)
1c009114:	c194                	sw	a3,0(a1)
1c009116:	00eea023          	sw	a4,0(t4)
1c00911a:	e391                	bnez	a5,1c00911e <rt_periph_copy+0xaa>
1c00911c:	31ed                	jal	1c008e06 <__rt_wait_event>
1c00911e:	30091073          	csrw	mstatus,s2
1c009122:	40f2                	lw	ra,28(sp)
1c009124:	4462                	lw	s0,24(sp)
1c009126:	44d2                	lw	s1,20(sp)
1c009128:	4942                	lw	s2,16(sp)
1c00912a:	6105                	addi	sp,sp,32
1c00912c:	8082                	ret
1c00912e:	41cc                	lw	a1,4(a1)
1c009130:	c9c0                	sw	s0,20(a1)
1c009132:	b755                	j	1c0090d6 <rt_periph_copy+0x62>
1c009134:	00042823          	sw	zero,16(s0)
1c009138:	c010                	sw	a2,0(s0)
1c00913a:	c054                	sw	a3,4(s0)
1c00913c:	c418                	sw	a4,8(s0)
1c00913e:	fc0e1ee3          	bnez	t3,1c00911a <rt_periph_copy+0xa6>
1c009142:	989a                	add	a7,a7,t1
1c009144:	0088a423          	sw	s0,8(a7) # 80000008 <pulp__FC+0x80000009>
1c009148:	bfc9                	j	1c00911a <rt_periph_copy+0xa6>

1c00914a <__rt_periph_init>:
1c00914a:	03000693          	li	a3,48
1c00914e:	1c008637          	lui	a2,0x1c008
1c009152:	2a068693          	addi	a3,a3,672
1c009156:	03000713          	li	a4,48
1c00915a:	15a60613          	addi	a2,a2,346 # 1c00815a <udma_event_handler>
1c00915e:	00a250fb          	lp.setupi	x1,10,1c009166 <__rt_periph_init+0x1c>
1c009162:	00c6a22b          	p.sw	a2,4(a3!)
1c009166:	0001                	nop
1c009168:	28072023          	sw	zero,640(a4)
1c00916c:	28072223          	sw	zero,644(a4)
1c009170:	28072423          	sw	zero,648(a4)
1c009174:	28072623          	sw	zero,652(a4)
1c009178:	28072823          	sw	zero,656(a4)
1c00917c:	28072a23          	sw	zero,660(a4)
1c009180:	28072c23          	sw	zero,664(a4)
1c009184:	1a102837          	lui	a6,0x1a102
1c009188:	28072e23          	sw	zero,668(a4)
1c00918c:	03000793          	li	a5,48
1c009190:	4681                	li	a3,0
1c009192:	08080813          	addi	a6,a6,128 # 1a102080 <__rt_udma_callback_data+0x1a101d88>
1c009196:	0148d0fb          	lp.setupi	x1,20,1c0091b8 <__rt_periph_init+0x6e>
1c00919a:	4016d713          	srai	a4,a3,0x1
1c00919e:	00469513          	slli	a0,a3,0x4
1c0091a2:	071e                	slli	a4,a4,0x7
1c0091a4:	9742                	add	a4,a4,a6
1c0091a6:	8941                	andi	a0,a0,16
1c0091a8:	972a                	add	a4,a4,a0
1c0091aa:	0007a023          	sw	zero,0(a5)
1c0091ae:	0007a423          	sw	zero,8(a5)
1c0091b2:	c7d8                	sw	a4,12(a5)
1c0091b4:	cfd0                	sw	a2,28(a5)
1c0091b6:	0685                	addi	a3,a3,1
1c0091b8:	02078793          	addi	a5,a5,32
1c0091bc:	8082                	ret

1c0091be <__rt_freq_init>:
1c0091be:	1141                	addi	sp,sp,-16
1c0091c0:	c422                	sw	s0,8(sp)
1c0091c2:	c226                	sw	s1,4(sp)
1c0091c4:	c606                	sw	ra,12(sp)
1c0091c6:	227d                	jal	1c009374 <__rt_flls_constructor>
1c0091c8:	1c0017b7          	lui	a5,0x1c001
1c0091cc:	e787a783          	lw	a5,-392(a5) # 1c000e78 <__rt_platform>
1c0091d0:	1c001437          	lui	s0,0x1c001
1c0091d4:	73040493          	addi	s1,s0,1840 # 1c001730 <__rt_freq_domains>
1c0091d8:	0017ae63          	p.beqimm	a5,1,1c0091f4 <__rt_freq_init+0x36>
1c0091dc:	4501                	li	a0,0
1c0091de:	28cd                	jal	1c0092d0 <__rt_fll_init>
1c0091e0:	72a42823          	sw	a0,1840(s0)
1c0091e4:	4505                	li	a0,1
1c0091e6:	20ed                	jal	1c0092d0 <__rt_fll_init>
1c0091e8:	c0c8                	sw	a0,4(s1)
1c0091ea:	40b2                	lw	ra,12(sp)
1c0091ec:	4422                	lw	s0,8(sp)
1c0091ee:	4492                	lw	s1,4(sp)
1c0091f0:	0141                	addi	sp,sp,16
1c0091f2:	8082                	ret
1c0091f4:	1c0017b7          	lui	a5,0x1c001
1c0091f8:	e887a783          	lw	a5,-376(a5) # 1c000e88 <__rt_fpga_fc_frequency>
1c0091fc:	72f42823          	sw	a5,1840(s0)
1c009200:	1c0017b7          	lui	a5,0x1c001
1c009204:	e8c7a783          	lw	a5,-372(a5) # 1c000e8c <__rt_fpga_periph_frequency>
1c009208:	c0dc                	sw	a5,4(s1)
1c00920a:	b7c5                	j	1c0091ea <__rt_freq_init+0x2c>

1c00920c <rt_padframe_set>:
1c00920c:	300476f3          	csrrci	a3,mstatus,8
1c009210:	4158                	lw	a4,4(a0)
1c009212:	1a1047b7          	lui	a5,0x1a104
1c009216:	01078613          	addi	a2,a5,16 # 1a104010 <__rt_udma_callback_data+0x1a103d18>
1c00921a:	430c                	lw	a1,0(a4)
1c00921c:	c20c                	sw	a1,0(a2)
1c00921e:	434c                	lw	a1,4(a4)
1c009220:	01478613          	addi	a2,a5,20
1c009224:	c20c                	sw	a1,0(a2)
1c009226:	470c                	lw	a1,8(a4)
1c009228:	01878613          	addi	a2,a5,24
1c00922c:	07f1                	addi	a5,a5,28
1c00922e:	c20c                	sw	a1,0(a2)
1c009230:	4758                	lw	a4,12(a4)
1c009232:	c398                	sw	a4,0(a5)
1c009234:	30069073          	csrw	mstatus,a3
1c009238:	8082                	ret

1c00923a <__rt_padframe_init>:
1c00923a:	1c001537          	lui	a0,0x1c001
1c00923e:	e7c50513          	addi	a0,a0,-388 # 1c000e7c <__rt_padframe_profiles>
1c009242:	b7e9                	j	1c00920c <rt_padframe_set>

1c009244 <__rt_ov7670_init>:
1c009244:	1c0107b7          	lui	a5,0x1c010
1c009248:	00078023          	sb	zero,0(a5) # 1c010000 <__ov7670Inited>
1c00924c:	8082                	ret

1c00924e <__rt_i2c_init>:
1c00924e:	1c0107b7          	lui	a5,0x1c010
1c009252:	06078023          	sb	zero,96(a5) # 1c010060 <__rt_i2c+0x4>
1c009256:	8082                	ret

1c009258 <__rt_fll_set_freq>:
1c009258:	1101                	addi	sp,sp,-32
1c00925a:	cc22                	sw	s0,24(sp)
1c00925c:	ce06                	sw	ra,28(sp)
1c00925e:	842a                	mv	s0,a0
1c009260:	e501                	bnez	a0,1c009268 <__rt_fll_set_freq+0x10>
1c009262:	c62e                	sw	a1,12(sp)
1c009264:	32c9                	jal	1c008c26 <__rt_bridge_req_shutdown>
1c009266:	45b2                	lw	a1,12(sp)
1c009268:	10059733          	p.fl1	a4,a1
1c00926c:	47f5                	li	a5,29
1c00926e:	4505                	li	a0,1
1c009270:	82e7b7db          	p.subun	a5,a5,a4,1
1c009274:	04f567b3          	p.max	a5,a0,a5
1c009278:	fff78713          	addi	a4,a5,-1
1c00927c:	00f595b3          	sll	a1,a1,a5
1c009280:	00e51533          	sll	a0,a0,a4
1c009284:	1c0016b7          	lui	a3,0x1c001
1c009288:	dc05b733          	p.bclr	a4,a1,14,0
1c00928c:	c0f7255b          	p.addunr	a0,a4,a5
1c009290:	73868693          	addi	a3,a3,1848 # 1c001738 <__rt_fll_freq>
1c009294:	00241713          	slli	a4,s0,0x2
1c009298:	00a6e723          	p.sw	a0,a4(a3)
1c00929c:	1c001737          	lui	a4,0x1c001
1c0092a0:	f3c70713          	addi	a4,a4,-196 # 1c000f3c <__rt_fll_is_on>
1c0092a4:	9722                	add	a4,a4,s0
1c0092a6:	00074703          	lbu	a4,0(a4)
1c0092aa:	cf19                	beqz	a4,1c0092c8 <__rt_fll_set_freq+0x70>
1c0092ac:	0412                	slli	s0,s0,0x4
1c0092ae:	0411                	addi	s0,s0,4
1c0092b0:	1a1006b7          	lui	a3,0x1a100
1c0092b4:	2086f703          	p.lw	a4,s0(a3)
1c0092b8:	81bd                	srli	a1,a1,0xf
1c0092ba:	de05a733          	p.insert	a4,a1,15,0
1c0092be:	0785                	addi	a5,a5,1
1c0092c0:	c7a7a733          	p.insert	a4,a5,3,26
1c0092c4:	00e6e423          	p.sw	a4,s0(a3)
1c0092c8:	40f2                	lw	ra,28(sp)
1c0092ca:	4462                	lw	s0,24(sp)
1c0092cc:	6105                	addi	sp,sp,32
1c0092ce:	8082                	ret

1c0092d0 <__rt_fll_init>:
1c0092d0:	1141                	addi	sp,sp,-16
1c0092d2:	00451613          	slli	a2,a0,0x4
1c0092d6:	c226                	sw	s1,4(sp)
1c0092d8:	00460813          	addi	a6,a2,4
1c0092dc:	84aa                	mv	s1,a0
1c0092de:	1a1006b7          	lui	a3,0x1a100
1c0092e2:	c606                	sw	ra,12(sp)
1c0092e4:	c422                	sw	s0,8(sp)
1c0092e6:	2106f703          	p.lw	a4,a6(a3)
1c0092ea:	87ba                	mv	a5,a4
1c0092ec:	04074163          	bltz	a4,1c00932e <__rt_fll_init+0x5e>
1c0092f0:	00860893          	addi	a7,a2,8
1c0092f4:	2116f503          	p.lw	a0,a7(a3)
1c0092f8:	4599                	li	a1,6
1c0092fa:	caa5a533          	p.insert	a0,a1,5,10
1c0092fe:	05000593          	li	a1,80
1c009302:	d705a533          	p.insert	a0,a1,11,16
1c009306:	1a1005b7          	lui	a1,0x1a100
1c00930a:	00a5e8a3          	p.sw	a0,a7(a1)
1c00930e:	0631                	addi	a2,a2,12
1c009310:	20c6f683          	p.lw	a3,a2(a3)
1c009314:	14c00513          	li	a0,332
1c009318:	d30526b3          	p.insert	a3,a0,9,16
1c00931c:	00d5e623          	p.sw	a3,a2(a1)
1c009320:	4685                	li	a3,1
1c009322:	c1e6a7b3          	p.insert	a5,a3,0,30
1c009326:	c1f6a7b3          	p.insert	a5,a3,0,31
1c00932a:	00f5e823          	p.sw	a5,a6(a1)
1c00932e:	1c001637          	lui	a2,0x1c001
1c009332:	00249693          	slli	a3,s1,0x2
1c009336:	73860613          	addi	a2,a2,1848 # 1c001738 <__rt_fll_freq>
1c00933a:	96b2                	add	a3,a3,a2
1c00933c:	4280                	lw	s0,0(a3)
1c00933e:	c00d                	beqz	s0,1c009360 <__rt_fll_init+0x90>
1c009340:	85a2                	mv	a1,s0
1c009342:	8526                	mv	a0,s1
1c009344:	3f11                	jal	1c009258 <__rt_fll_set_freq>
1c009346:	1c0017b7          	lui	a5,0x1c001
1c00934a:	f3c78793          	addi	a5,a5,-196 # 1c000f3c <__rt_fll_is_on>
1c00934e:	4705                	li	a4,1
1c009350:	00e7c4a3          	p.sb	a4,s1(a5)
1c009354:	8522                	mv	a0,s0
1c009356:	40b2                	lw	ra,12(sp)
1c009358:	4422                	lw	s0,8(sp)
1c00935a:	4492                	lw	s1,4(sp)
1c00935c:	0141                	addi	sp,sp,16
1c00935e:	8082                	ret
1c009360:	10075733          	p.exthz	a4,a4
1c009364:	c7a797b3          	p.extractu	a5,a5,3,26
1c009368:	073e                	slli	a4,a4,0xf
1c00936a:	17fd                	addi	a5,a5,-1
1c00936c:	00f75433          	srl	s0,a4,a5
1c009370:	c280                	sw	s0,0(a3)
1c009372:	bfd1                	j	1c009346 <__rt_fll_init+0x76>

1c009374 <__rt_flls_constructor>:
1c009374:	1c0017b7          	lui	a5,0x1c001
1c009378:	7207ac23          	sw	zero,1848(a5) # 1c001738 <__rt_fll_freq>
1c00937c:	73878793          	addi	a5,a5,1848
1c009380:	0007a223          	sw	zero,4(a5)
1c009384:	1c0017b7          	lui	a5,0x1c001
1c009388:	f2079e23          	sh	zero,-196(a5) # 1c000f3c <__rt_fll_is_on>
1c00938c:	8082                	ret

1c00938e <rt_is_fc>:
1c00938e:	f1402573          	csrr	a0,mhartid
1c009392:	8515                	srai	a0,a0,0x5
1c009394:	f2653533          	p.bclr	a0,a0,25,6
1c009398:	1505                	addi	a0,a0,-31
1c00939a:	00153513          	seqz	a0,a0
1c00939e:	8082                	ret

1c0093a0 <__rt_io_end_of_flush>:
1c0093a0:	1c0017b7          	lui	a5,0x1c001
1c0093a4:	f407a223          	sw	zero,-188(a5) # 1c000f44 <__rt_io_pending_flush>
1c0093a8:	00052c23          	sw	zero,24(a0)
1c0093ac:	8082                	ret

1c0093ae <__rt_io_unlock>:
1c0093ae:	1c0017b7          	lui	a5,0x1c001
1c0093b2:	dc47a783          	lw	a5,-572(a5) # 1c000dc4 <__hal_debug_struct+0x10>
1c0093b6:	cf81                	beqz	a5,1c0093ce <__rt_io_unlock+0x20>
1c0093b8:	1c0017b7          	lui	a5,0x1c001
1c0093bc:	f4c7a783          	lw	a5,-180(a5) # 1c000f4c <_rt_io_uart>
1c0093c0:	e799                	bnez	a5,1c0093ce <__rt_io_unlock+0x20>
1c0093c2:	1c0017b7          	lui	a5,0x1c001
1c0093c6:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c0093ca:	0227b163          	p.bneimm	a5,2,1c0093ec <__rt_io_unlock+0x3e>
1c0093ce:	1141                	addi	sp,sp,-16
1c0093d0:	c606                	sw	ra,12(sp)
1c0093d2:	3f75                	jal	1c00938e <rt_is_fc>
1c0093d4:	c909                	beqz	a0,1c0093e6 <__rt_io_unlock+0x38>
1c0093d6:	40b2                	lw	ra,12(sp)
1c0093d8:	1c001537          	lui	a0,0x1c001
1c0093dc:	da450513          	addi	a0,a0,-604 # 1c000da4 <__rt_io_fc_lock>
1c0093e0:	0141                	addi	sp,sp,16
1c0093e2:	e5cff06f          	j	1c008a3e <__rt_fc_unlock>
1c0093e6:	40b2                	lw	ra,12(sp)
1c0093e8:	0141                	addi	sp,sp,16
1c0093ea:	8082                	ret
1c0093ec:	8082                	ret

1c0093ee <__rt_io_lock>:
1c0093ee:	1c0017b7          	lui	a5,0x1c001
1c0093f2:	dc47a783          	lw	a5,-572(a5) # 1c000dc4 <__hal_debug_struct+0x10>
1c0093f6:	cf81                	beqz	a5,1c00940e <__rt_io_lock+0x20>
1c0093f8:	1c0017b7          	lui	a5,0x1c001
1c0093fc:	f4c7a783          	lw	a5,-180(a5) # 1c000f4c <_rt_io_uart>
1c009400:	e799                	bnez	a5,1c00940e <__rt_io_lock+0x20>
1c009402:	1c0017b7          	lui	a5,0x1c001
1c009406:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c00940a:	0227b163          	p.bneimm	a5,2,1c00942c <__rt_io_lock+0x3e>
1c00940e:	1141                	addi	sp,sp,-16
1c009410:	c606                	sw	ra,12(sp)
1c009412:	3fb5                	jal	1c00938e <rt_is_fc>
1c009414:	c909                	beqz	a0,1c009426 <__rt_io_lock+0x38>
1c009416:	40b2                	lw	ra,12(sp)
1c009418:	1c001537          	lui	a0,0x1c001
1c00941c:	da450513          	addi	a0,a0,-604 # 1c000da4 <__rt_io_fc_lock>
1c009420:	0141                	addi	sp,sp,16
1c009422:	deaff06f          	j	1c008a0c <__rt_fc_lock>
1c009426:	40b2                	lw	ra,12(sp)
1c009428:	0141                	addi	sp,sp,16
1c00942a:	8082                	ret
1c00942c:	8082                	ret

1c00942e <__rt_io_start>:
1c00942e:	1101                	addi	sp,sp,-32
1c009430:	0028                	addi	a0,sp,8
1c009432:	ce06                	sw	ra,28(sp)
1c009434:	cc22                	sw	s0,24(sp)
1c009436:	6b1000ef          	jal	ra,1c00a2e6 <rt_uart_conf_init>
1c00943a:	4585                	li	a1,1
1c00943c:	4501                	li	a0,0
1c00943e:	8b5ff0ef          	jal	ra,1c008cf2 <rt_event_alloc>
1c009442:	547d                	li	s0,-1
1c009444:	ed15                	bnez	a0,1c009480 <__rt_io_start+0x52>
1c009446:	1c0017b7          	lui	a5,0x1c001
1c00944a:	e847a783          	lw	a5,-380(a5) # 1c000e84 <__rt_iodev_uart_baudrate>
1c00944e:	842a                	mv	s0,a0
1c009450:	1c001537          	lui	a0,0x1c001
1c009454:	e3ff7597          	auipc	a1,0xe3ff7
1c009458:	bc858593          	addi	a1,a1,-1080 # 1c <__rt_sched>
1c00945c:	e9050513          	addi	a0,a0,-368 # 1c000e90 <_edata>
1c009460:	c43e                	sw	a5,8(sp)
1c009462:	867ff0ef          	jal	ra,1c008cc8 <__rt_event_init>
1c009466:	1c0017b7          	lui	a5,0x1c001
1c00946a:	f347a503          	lw	a0,-204(a5) # 1c000f34 <__rt_iodev_uart_channel>
1c00946e:	4681                	li	a3,0
1c009470:	4601                	li	a2,0
1c009472:	002c                	addi	a1,sp,8
1c009474:	683000ef          	jal	ra,1c00a2f6 <__rt_uart_open>
1c009478:	1c0017b7          	lui	a5,0x1c001
1c00947c:	f4a7a623          	sw	a0,-180(a5) # 1c000f4c <_rt_io_uart>
1c009480:	8522                	mv	a0,s0
1c009482:	40f2                	lw	ra,28(sp)
1c009484:	4462                	lw	s0,24(sp)
1c009486:	6105                	addi	sp,sp,32
1c009488:	8082                	ret

1c00948a <rt_event_execute.isra.0.constprop.6>:
1c00948a:	1141                	addi	sp,sp,-16
1c00948c:	c606                	sw	ra,12(sp)
1c00948e:	c422                	sw	s0,8(sp)
1c009490:	30047473          	csrrci	s0,mstatus,8
1c009494:	4585                	li	a1,1
1c009496:	e3ff7517          	auipc	a0,0xe3ff7
1c00949a:	b8650513          	addi	a0,a0,-1146 # 1c <__rt_sched>
1c00949e:	909ff0ef          	jal	ra,1c008da6 <__rt_event_execute>
1c0094a2:	30041073          	csrw	mstatus,s0
1c0094a6:	40b2                	lw	ra,12(sp)
1c0094a8:	4422                	lw	s0,8(sp)
1c0094aa:	0141                	addi	sp,sp,16
1c0094ac:	8082                	ret

1c0094ae <__rt_io_uart_wait_pending>:
1c0094ae:	1141                	addi	sp,sp,-16
1c0094b0:	c422                	sw	s0,8(sp)
1c0094b2:	c606                	sw	ra,12(sp)
1c0094b4:	c226                	sw	s1,4(sp)
1c0094b6:	1c001437          	lui	s0,0x1c001
1c0094ba:	f4442783          	lw	a5,-188(s0) # 1c000f44 <__rt_io_pending_flush>
1c0094be:	e39d                	bnez	a5,1c0094e4 <__rt_io_uart_wait_pending+0x36>
1c0094c0:	1c001437          	lui	s0,0x1c001
1c0094c4:	f4040413          	addi	s0,s0,-192 # 1c000f40 <__rt_io_event_current>
1c0094c8:	4004                	lw	s1,0(s0)
1c0094ca:	c881                	beqz	s1,1c0094da <__rt_io_uart_wait_pending+0x2c>
1c0094cc:	35c9                	jal	1c00938e <rt_is_fc>
1c0094ce:	c511                	beqz	a0,1c0094da <__rt_io_uart_wait_pending+0x2c>
1c0094d0:	8526                	mv	a0,s1
1c0094d2:	95fff0ef          	jal	ra,1c008e30 <rt_event_wait>
1c0094d6:	00042023          	sw	zero,0(s0)
1c0094da:	40b2                	lw	ra,12(sp)
1c0094dc:	4422                	lw	s0,8(sp)
1c0094de:	4492                	lw	s1,4(sp)
1c0094e0:	0141                	addi	sp,sp,16
1c0094e2:	8082                	ret
1c0094e4:	35e9                	jal	1c0093ae <__rt_io_unlock>
1c0094e6:	3755                	jal	1c00948a <rt_event_execute.isra.0.constprop.6>
1c0094e8:	3719                	jal	1c0093ee <__rt_io_lock>
1c0094ea:	bfc1                	j	1c0094ba <__rt_io_uart_wait_pending+0xc>

1c0094ec <__rt_io_stop>:
1c0094ec:	1141                	addi	sp,sp,-16
1c0094ee:	c422                	sw	s0,8(sp)
1c0094f0:	1c001437          	lui	s0,0x1c001
1c0094f4:	c606                	sw	ra,12(sp)
1c0094f6:	f4c40413          	addi	s0,s0,-180 # 1c000f4c <_rt_io_uart>
1c0094fa:	3f55                	jal	1c0094ae <__rt_io_uart_wait_pending>
1c0094fc:	4008                	lw	a0,0(s0)
1c0094fe:	4581                	li	a1,0
1c009500:	679000ef          	jal	ra,1c00a378 <rt_uart_close>
1c009504:	40b2                	lw	ra,12(sp)
1c009506:	00042023          	sw	zero,0(s0)
1c00950a:	4422                	lw	s0,8(sp)
1c00950c:	4501                	li	a0,0
1c00950e:	0141                	addi	sp,sp,16
1c009510:	8082                	ret

1c009512 <__rt_io_uart_flush.constprop.5>:
1c009512:	1101                	addi	sp,sp,-32
1c009514:	ca26                	sw	s1,20(sp)
1c009516:	ce06                	sw	ra,28(sp)
1c009518:	cc22                	sw	s0,24(sp)
1c00951a:	c84a                	sw	s2,16(sp)
1c00951c:	c64e                	sw	s3,12(sp)
1c00951e:	c452                	sw	s4,8(sp)
1c009520:	1c0014b7          	lui	s1,0x1c001
1c009524:	f444a783          	lw	a5,-188(s1) # 1c000f44 <__rt_io_pending_flush>
1c009528:	f4448413          	addi	s0,s1,-188
1c00952c:	e3a5                	bnez	a5,1c00958c <__rt_io_uart_flush.constprop.5+0x7a>
1c00952e:	1c0019b7          	lui	s3,0x1c001
1c009532:	db498493          	addi	s1,s3,-588 # 1c000db4 <__hal_debug_struct>
1c009536:	0184a903          	lw	s2,24(s1)
1c00953a:	04090f63          	beqz	s2,1c009598 <__rt_io_uart_flush.constprop.5+0x86>
1c00953e:	3d81                	jal	1c00938e <rt_is_fc>
1c009540:	cd21                	beqz	a0,1c009598 <__rt_io_uart_flush.constprop.5+0x86>
1c009542:	4785                	li	a5,1
1c009544:	c01c                	sw	a5,0(s0)
1c009546:	1c0017b7          	lui	a5,0x1c001
1c00954a:	f4c7aa03          	lw	s4,-180(a5) # 1c000f4c <_rt_io_uart>
1c00954e:	1c0095b7          	lui	a1,0x1c009
1c009552:	db498613          	addi	a2,s3,-588
1c009556:	3a058593          	addi	a1,a1,928 # 1c0093a0 <__rt_io_end_of_flush>
1c00955a:	4501                	li	a0,0
1c00955c:	80fff0ef          	jal	ra,1c008d6a <rt_event_get>
1c009560:	004a2583          	lw	a1,4(s4)
1c009564:	87aa                	mv	a5,a0
1c009566:	4701                	li	a4,0
1c009568:	0586                	slli	a1,a1,0x1
1c00956a:	86ca                	mv	a3,s2
1c00956c:	01c48613          	addi	a2,s1,28
1c009570:	0585                	addi	a1,a1,1
1c009572:	4501                	li	a0,0
1c009574:	3601                	jal	1c009074 <rt_periph_copy>
1c009576:	3d25                	jal	1c0093ae <__rt_io_unlock>
1c009578:	401c                	lw	a5,0(s0)
1c00957a:	ef89                	bnez	a5,1c009594 <__rt_io_uart_flush.constprop.5+0x82>
1c00957c:	4462                	lw	s0,24(sp)
1c00957e:	40f2                	lw	ra,28(sp)
1c009580:	44d2                	lw	s1,20(sp)
1c009582:	4942                	lw	s2,16(sp)
1c009584:	49b2                	lw	s3,12(sp)
1c009586:	4a22                	lw	s4,8(sp)
1c009588:	6105                	addi	sp,sp,32
1c00958a:	b595                	j	1c0093ee <__rt_io_lock>
1c00958c:	350d                	jal	1c0093ae <__rt_io_unlock>
1c00958e:	3df5                	jal	1c00948a <rt_event_execute.isra.0.constprop.6>
1c009590:	3db9                	jal	1c0093ee <__rt_io_lock>
1c009592:	bf49                	j	1c009524 <__rt_io_uart_flush.constprop.5+0x12>
1c009594:	3ddd                	jal	1c00948a <rt_event_execute.isra.0.constprop.6>
1c009596:	b7cd                	j	1c009578 <__rt_io_uart_flush.constprop.5+0x66>
1c009598:	40f2                	lw	ra,28(sp)
1c00959a:	4462                	lw	s0,24(sp)
1c00959c:	44d2                	lw	s1,20(sp)
1c00959e:	4942                	lw	s2,16(sp)
1c0095a0:	49b2                	lw	s3,12(sp)
1c0095a2:	4a22                	lw	s4,8(sp)
1c0095a4:	6105                	addi	sp,sp,32
1c0095a6:	8082                	ret

1c0095a8 <memcpy>:
1c0095a8:	00a5e733          	or	a4,a1,a0
1c0095ac:	fa273733          	p.bclr	a4,a4,29,2
1c0095b0:	87aa                	mv	a5,a0
1c0095b2:	c709                	beqz	a4,1c0095bc <memcpy+0x14>
1c0095b4:	962e                	add	a2,a2,a1
1c0095b6:	00c59f63          	bne	a1,a2,1c0095d4 <memcpy+0x2c>
1c0095ba:	8082                	ret
1c0095bc:	fa263733          	p.bclr	a4,a2,29,2
1c0095c0:	fb75                	bnez	a4,1c0095b4 <memcpy+0xc>
1c0095c2:	962e                	add	a2,a2,a1
1c0095c4:	00c59363          	bne	a1,a2,1c0095ca <memcpy+0x22>
1c0095c8:	8082                	ret
1c0095ca:	0045a70b          	p.lw	a4,4(a1!)
1c0095ce:	00e7a22b          	p.sw	a4,4(a5!)
1c0095d2:	bfcd                	j	1c0095c4 <memcpy+0x1c>
1c0095d4:	0015c70b          	p.lbu	a4,1(a1!)
1c0095d8:	00e780ab          	p.sb	a4,1(a5!)
1c0095dc:	bfe9                	j	1c0095b6 <memcpy+0xe>

1c0095de <memmove>:
1c0095de:	40b507b3          	sub	a5,a0,a1
1c0095e2:	00c7e763          	bltu	a5,a2,1c0095f0 <memmove+0x12>
1c0095e6:	962a                	add	a2,a2,a0
1c0095e8:	87aa                	mv	a5,a0
1c0095ea:	00c79f63          	bne	a5,a2,1c009608 <memmove+0x2a>
1c0095ee:	8082                	ret
1c0095f0:	167d                	addi	a2,a2,-1
1c0095f2:	00c507b3          	add	a5,a0,a2
1c0095f6:	95b2                	add	a1,a1,a2
1c0095f8:	0605                	addi	a2,a2,1
1c0095fa:	004640fb          	lp.setup	x1,a2,1c009602 <memmove+0x24>
1c0095fe:	fff5c70b          	p.lbu	a4,-1(a1!)
1c009602:	fee78fab          	p.sb	a4,-1(a5!)
1c009606:	8082                	ret
1c009608:	0015c70b          	p.lbu	a4,1(a1!)
1c00960c:	00e780ab          	p.sb	a4,1(a5!)
1c009610:	bfe9                	j	1c0095ea <memmove+0xc>

1c009612 <strchr>:
1c009612:	0ff5f593          	andi	a1,a1,255
1c009616:	00054703          	lbu	a4,0(a0)
1c00961a:	87aa                	mv	a5,a0
1c00961c:	0505                	addi	a0,a0,1
1c00961e:	00b70563          	beq	a4,a1,1c009628 <strchr+0x16>
1c009622:	fb75                	bnez	a4,1c009616 <strchr+0x4>
1c009624:	c191                	beqz	a1,1c009628 <strchr+0x16>
1c009626:	4781                	li	a5,0
1c009628:	853e                	mv	a0,a5
1c00962a:	8082                	ret

1c00962c <__rt_putc_debug_bridge>:
1c00962c:	1141                	addi	sp,sp,-16
1c00962e:	c422                	sw	s0,8(sp)
1c009630:	1c001437          	lui	s0,0x1c001
1c009634:	c226                	sw	s1,4(sp)
1c009636:	c606                	sw	ra,12(sp)
1c009638:	84aa                	mv	s1,a0
1c00963a:	db440413          	addi	s0,s0,-588 # 1c000db4 <__hal_debug_struct>
1c00963e:	485c                	lw	a5,20(s0)
1c009640:	c791                	beqz	a5,1c00964c <__rt_putc_debug_bridge+0x20>
1c009642:	06400513          	li	a0,100
1c009646:	8b7ff0ef          	jal	ra,1c008efc <rt_time_wait_us>
1c00964a:	bfd5                	j	1c00963e <__rt_putc_debug_bridge+0x12>
1c00964c:	4c1c                	lw	a5,24(s0)
1c00964e:	00178713          	addi	a4,a5,1
1c009652:	97a2                	add	a5,a5,s0
1c009654:	00978e23          	sb	s1,28(a5)
1c009658:	cc18                	sw	a4,24(s0)
1c00965a:	4c14                	lw	a3,24(s0)
1c00965c:	08000793          	li	a5,128
1c009660:	00f68463          	beq	a3,a5,1c009668 <__rt_putc_debug_bridge+0x3c>
1c009664:	00a4b663          	p.bneimm	s1,10,1c009670 <__rt_putc_debug_bridge+0x44>
1c009668:	c701                	beqz	a4,1c009670 <__rt_putc_debug_bridge+0x44>
1c00966a:	c858                	sw	a4,20(s0)
1c00966c:	00042c23          	sw	zero,24(s0)
1c009670:	4c1c                	lw	a5,24(s0)
1c009672:	e799                	bnez	a5,1c009680 <__rt_putc_debug_bridge+0x54>
1c009674:	4422                	lw	s0,8(sp)
1c009676:	40b2                	lw	ra,12(sp)
1c009678:	4492                	lw	s1,4(sp)
1c00967a:	0141                	addi	sp,sp,16
1c00967c:	d70ff06f          	j	1c008bec <__rt_bridge_printf_flush>
1c009680:	40b2                	lw	ra,12(sp)
1c009682:	4422                	lw	s0,8(sp)
1c009684:	4492                	lw	s1,4(sp)
1c009686:	0141                	addi	sp,sp,16
1c009688:	8082                	ret

1c00968a <__rt_putc_uart>:
1c00968a:	1101                	addi	sp,sp,-32
1c00968c:	c62a                	sw	a0,12(sp)
1c00968e:	ce06                	sw	ra,28(sp)
1c009690:	3d39                	jal	1c0094ae <__rt_io_uart_wait_pending>
1c009692:	1c0017b7          	lui	a5,0x1c001
1c009696:	db478793          	addi	a5,a5,-588 # 1c000db4 <__hal_debug_struct>
1c00969a:	4f94                	lw	a3,24(a5)
1c00969c:	4532                	lw	a0,12(sp)
1c00969e:	00168713          	addi	a4,a3,1 # 1a100001 <__rt_udma_callback_data+0x1a0ffd09>
1c0096a2:	cf98                	sw	a4,24(a5)
1c0096a4:	97b6                	add	a5,a5,a3
1c0096a6:	00a78e23          	sb	a0,28(a5)
1c0096aa:	08000793          	li	a5,128
1c0096ae:	00f70463          	beq	a4,a5,1c0096b6 <__rt_putc_uart+0x2c>
1c0096b2:	00a53563          	p.bneimm	a0,10,1c0096bc <__rt_putc_uart+0x32>
1c0096b6:	40f2                	lw	ra,28(sp)
1c0096b8:	6105                	addi	sp,sp,32
1c0096ba:	bda1                	j	1c009512 <__rt_io_uart_flush.constprop.5>
1c0096bc:	40f2                	lw	ra,28(sp)
1c0096be:	6105                	addi	sp,sp,32
1c0096c0:	8082                	ret

1c0096c2 <tfp_putc.isra.3>:
1c0096c2:	1c0017b7          	lui	a5,0x1c001
1c0096c6:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c0096ca:	1141                	addi	sp,sp,-16
1c0096cc:	c422                	sw	s0,8(sp)
1c0096ce:	c606                	sw	ra,12(sp)
1c0096d0:	842a                	mv	s0,a0
1c0096d2:	0427b663          	p.bneimm	a5,2,1c00971e <tfp_putc.isra.3+0x5c>
1c0096d6:	3965                	jal	1c00938e <rt_is_fc>
1c0096d8:	c149                	beqz	a0,1c00975a <tfp_putc.isra.3+0x98>
1c0096da:	1c0017b7          	lui	a5,0x1c001
1c0096de:	f4878613          	addi	a2,a5,-184 # 1c000f48 <__rt_putc_host_buffer_index>
1c0096e2:	4214                	lw	a3,0(a2)
1c0096e4:	1c010537          	lui	a0,0x1c010
1c0096e8:	f4878793          	addi	a5,a5,-184
1c0096ec:	00168713          	addi	a4,a3,1
1c0096f0:	c218                	sw	a4,0(a2)
1c0096f2:	06c50613          	addi	a2,a0,108 # 1c01006c <__rt_putc_host_buffer>
1c0096f6:	008646a3          	p.sb	s0,a3(a2)
1c0096fa:	07f00613          	li	a2,127
1c0096fe:	06c50693          	addi	a3,a0,108
1c009702:	00c70463          	beq	a4,a2,1c00970a <tfp_putc.isra.3+0x48>
1c009706:	04a43a63          	p.bneimm	s0,10,1c00975a <tfp_putc.isra.3+0x98>
1c00970a:	0006c723          	p.sb	zero,a4(a3)
1c00970e:	4422                	lw	s0,8(sp)
1c009710:	40b2                	lw	ra,12(sp)
1c009712:	0007a023          	sw	zero,0(a5)
1c009716:	06c50513          	addi	a0,a0,108
1c00971a:	0141                	addi	sp,sp,16
1c00971c:	a24d                	j	1c0098be <semihost_write0>
1c00971e:	1c0017b7          	lui	a5,0x1c001
1c009722:	f4c7a783          	lw	a5,-180(a5) # 1c000f4c <_rt_io_uart>
1c009726:	c789                	beqz	a5,1c009730 <tfp_putc.isra.3+0x6e>
1c009728:	4422                	lw	s0,8(sp)
1c00972a:	40b2                	lw	ra,12(sp)
1c00972c:	0141                	addi	sp,sp,16
1c00972e:	bfb1                	j	1c00968a <__rt_putc_uart>
1c009730:	1c0017b7          	lui	a5,0x1c001
1c009734:	dc47a783          	lw	a5,-572(a5) # 1c000dc4 <__hal_debug_struct+0x10>
1c009738:	c78d                	beqz	a5,1c009762 <tfp_putc.isra.3+0xa0>
1c00973a:	6609                	lui	a2,0x2
1c00973c:	f14027f3          	csrr	a5,mhartid
1c009740:	f8060613          	addi	a2,a2,-128 # 1f80 <__rt_udma_callback_data+0x1c88>
1c009744:	00379713          	slli	a4,a5,0x3
1c009748:	078a                	slli	a5,a5,0x2
1c00974a:	ee873733          	p.bclr	a4,a4,23,8
1c00974e:	8ff1                	and	a5,a5,a2
1c009750:	97ba                	add	a5,a5,a4
1c009752:	1a10f737          	lui	a4,0x1a10f
1c009756:	00a767a3          	p.sw	a0,a5(a4)
1c00975a:	40b2                	lw	ra,12(sp)
1c00975c:	4422                	lw	s0,8(sp)
1c00975e:	0141                	addi	sp,sp,16
1c009760:	8082                	ret
1c009762:	4422                	lw	s0,8(sp)
1c009764:	40b2                	lw	ra,12(sp)
1c009766:	0141                	addi	sp,sp,16
1c009768:	b5d1                	j	1c00962c <__rt_putc_debug_bridge>

1c00976a <puts>:
1c00976a:	1141                	addi	sp,sp,-16
1c00976c:	c422                	sw	s0,8(sp)
1c00976e:	c606                	sw	ra,12(sp)
1c009770:	842a                	mv	s0,a0
1c009772:	39b5                	jal	1c0093ee <__rt_io_lock>
1c009774:	0014450b          	p.lbu	a0,1(s0!)
1c009778:	c119                	beqz	a0,1c00977e <puts+0x14>
1c00977a:	37a1                	jal	1c0096c2 <tfp_putc.isra.3>
1c00977c:	bfe5                	j	1c009774 <puts+0xa>
1c00977e:	4529                	li	a0,10
1c009780:	3789                	jal	1c0096c2 <tfp_putc.isra.3>
1c009782:	3135                	jal	1c0093ae <__rt_io_unlock>
1c009784:	40b2                	lw	ra,12(sp)
1c009786:	4422                	lw	s0,8(sp)
1c009788:	4501                	li	a0,0
1c00978a:	0141                	addi	sp,sp,16
1c00978c:	8082                	ret

1c00978e <fputc_locked>:
1c00978e:	1141                	addi	sp,sp,-16
1c009790:	c422                	sw	s0,8(sp)
1c009792:	842a                	mv	s0,a0
1c009794:	0ff57513          	andi	a0,a0,255
1c009798:	c606                	sw	ra,12(sp)
1c00979a:	3725                	jal	1c0096c2 <tfp_putc.isra.3>
1c00979c:	8522                	mv	a0,s0
1c00979e:	40b2                	lw	ra,12(sp)
1c0097a0:	4422                	lw	s0,8(sp)
1c0097a2:	0141                	addi	sp,sp,16
1c0097a4:	8082                	ret

1c0097a6 <_prf_locked>:
1c0097a6:	1101                	addi	sp,sp,-32
1c0097a8:	ce06                	sw	ra,28(sp)
1c0097aa:	c02a                	sw	a0,0(sp)
1c0097ac:	c62e                	sw	a1,12(sp)
1c0097ae:	c432                	sw	a2,8(sp)
1c0097b0:	c236                	sw	a3,4(sp)
1c0097b2:	3935                	jal	1c0093ee <__rt_io_lock>
1c0097b4:	4692                	lw	a3,4(sp)
1c0097b6:	4622                	lw	a2,8(sp)
1c0097b8:	45b2                	lw	a1,12(sp)
1c0097ba:	4502                	lw	a0,0(sp)
1c0097bc:	2425                	jal	1c0099e4 <_prf>
1c0097be:	c02a                	sw	a0,0(sp)
1c0097c0:	36fd                	jal	1c0093ae <__rt_io_unlock>
1c0097c2:	40f2                	lw	ra,28(sp)
1c0097c4:	4502                	lw	a0,0(sp)
1c0097c6:	6105                	addi	sp,sp,32
1c0097c8:	8082                	ret

1c0097ca <exit>:
1c0097ca:	1141                	addi	sp,sp,-16
1c0097cc:	c422                	sw	s0,8(sp)
1c0097ce:	1a104437          	lui	s0,0x1a104
1c0097d2:	c04a                	sw	s2,0(sp)
1c0097d4:	0a040793          	addi	a5,s0,160 # 1a1040a0 <__rt_udma_callback_data+0x1a103da8>
1c0097d8:	c606                	sw	ra,12(sp)
1c0097da:	c226                	sw	s1,4(sp)
1c0097dc:	c1f54933          	p.bset	s2,a0,0,31
1c0097e0:	0127a023          	sw	s2,0(a5)
1c0097e4:	1c0017b7          	lui	a5,0x1c001
1c0097e8:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c0097ec:	0027be63          	p.bneimm	a5,2,1c009808 <exit+0x3e>
1c0097f0:	c519                	beqz	a0,1c0097fe <exit+0x34>
1c0097f2:	00020537          	lui	a0,0x20
1c0097f6:	02350513          	addi	a0,a0,35 # 20023 <__rt_udma_callback_data+0x1fd2b>
1c0097fa:	20e9                	jal	1c0098c4 <semihost_exit>
1c0097fc:	a001                	j	1c0097fc <exit+0x32>
1c0097fe:	00020537          	lui	a0,0x20
1c009802:	02650513          	addi	a0,a0,38 # 20026 <__rt_udma_callback_data+0x1fd2e>
1c009806:	bfd5                	j	1c0097fa <exit+0x30>
1c009808:	1c0014b7          	lui	s1,0x1c001
1c00980c:	db448493          	addi	s1,s1,-588 # 1c000db4 <__hal_debug_struct>
1c009810:	bdcff0ef          	jal	ra,1c008bec <__rt_bridge_printf_flush>
1c009814:	0124a623          	sw	s2,12(s1)
1c009818:	b96ff0ef          	jal	ra,1c008bae <__rt_bridge_send_notif>
1c00981c:	449c                	lw	a5,8(s1)
1c00981e:	dff9                	beqz	a5,1c0097fc <exit+0x32>
1c009820:	07440413          	addi	s0,s0,116
1c009824:	401c                	lw	a5,0(s0)
1c009826:	83a5                	srli	a5,a5,0x9
1c009828:	f837b7b3          	p.bclr	a5,a5,28,3
1c00982c:	fe77bce3          	p.bneimm	a5,7,1c009824 <exit+0x5a>
1c009830:	b9eff0ef          	jal	ra,1c008bce <__rt_bridge_clear_notif>
1c009834:	b7e1                	j	1c0097fc <exit+0x32>

1c009836 <abort>:
1c009836:	1141                	addi	sp,sp,-16
1c009838:	557d                	li	a0,-1
1c00983a:	c606                	sw	ra,12(sp)
1c00983c:	3779                	jal	1c0097ca <exit>

1c00983e <__rt_io_init>:
1c00983e:	1c0017b7          	lui	a5,0x1c001
1c009842:	f407a423          	sw	zero,-184(a5) # 1c000f48 <__rt_putc_host_buffer_index>
1c009846:	1c0017b7          	lui	a5,0x1c001
1c00984a:	da478793          	addi	a5,a5,-604 # 1c000da4 <__rt_io_fc_lock>
1c00984e:	0007a223          	sw	zero,4(a5)
1c009852:	0007a023          	sw	zero,0(a5)
1c009856:	0007a623          	sw	zero,12(a5)
1c00985a:	1c0017b7          	lui	a5,0x1c001
1c00985e:	f407a623          	sw	zero,-180(a5) # 1c000f4c <_rt_io_uart>
1c009862:	1c0017b7          	lui	a5,0x1c001
1c009866:	f407a023          	sw	zero,-192(a5) # 1c000f40 <__rt_io_event_current>
1c00986a:	1c0017b7          	lui	a5,0x1c001
1c00986e:	f307a783          	lw	a5,-208(a5) # 1c000f30 <__rt_iodev>
1c009872:	0217be63          	p.bneimm	a5,1,1c0098ae <__rt_io_init+0x70>
1c009876:	1c0095b7          	lui	a1,0x1c009
1c00987a:	1141                	addi	sp,sp,-16
1c00987c:	4601                	li	a2,0
1c00987e:	42e58593          	addi	a1,a1,1070 # 1c00942e <__rt_io_start>
1c009882:	4501                	li	a0,0
1c009884:	c606                	sw	ra,12(sp)
1c009886:	8f6ff0ef          	jal	ra,1c00897c <__rt_cbsys_add>
1c00988a:	1c0095b7          	lui	a1,0x1c009
1c00988e:	4ec58593          	addi	a1,a1,1260 # 1c0094ec <__rt_io_stop>
1c009892:	4601                	li	a2,0
1c009894:	4505                	li	a0,1
1c009896:	8e6ff0ef          	jal	ra,1c00897c <__rt_cbsys_add>
1c00989a:	40b2                	lw	ra,12(sp)
1c00989c:	1c0017b7          	lui	a5,0x1c001
1c0098a0:	f407a223          	sw	zero,-188(a5) # 1c000f44 <__rt_io_pending_flush>
1c0098a4:	4585                	li	a1,1
1c0098a6:	4501                	li	a0,0
1c0098a8:	0141                	addi	sp,sp,16
1c0098aa:	c48ff06f          	j	1c008cf2 <rt_event_alloc>
1c0098ae:	8082                	ret

1c0098b0 <__internal_semihost>:
1c0098b0:	01f01013          	slli	zero,zero,0x1f
1c0098b4:	00100073          	ebreak
1c0098b8:	40705013          	srai	zero,zero,0x7
1c0098bc:	8082                	ret

1c0098be <semihost_write0>:
1c0098be:	85aa                	mv	a1,a0
1c0098c0:	4511                	li	a0,4
1c0098c2:	b7fd                	j	1c0098b0 <__internal_semihost>

1c0098c4 <semihost_exit>:
1c0098c4:	85aa                	mv	a1,a0
1c0098c6:	4561                	li	a0,24
1c0098c8:	b7e5                	j	1c0098b0 <__internal_semihost>

1c0098ca <printf>:
1c0098ca:	7139                	addi	sp,sp,-64
1c0098cc:	d432                	sw	a2,40(sp)
1c0098ce:	862a                	mv	a2,a0
1c0098d0:	1c009537          	lui	a0,0x1c009
1c0098d4:	d22e                	sw	a1,36(sp)
1c0098d6:	d636                	sw	a3,44(sp)
1c0098d8:	4589                	li	a1,2
1c0098da:	1054                	addi	a3,sp,36
1c0098dc:	78e50513          	addi	a0,a0,1934 # 1c00978e <fputc_locked>
1c0098e0:	ce06                	sw	ra,28(sp)
1c0098e2:	d83a                	sw	a4,48(sp)
1c0098e4:	da3e                	sw	a5,52(sp)
1c0098e6:	dc42                	sw	a6,56(sp)
1c0098e8:	de46                	sw	a7,60(sp)
1c0098ea:	c636                	sw	a3,12(sp)
1c0098ec:	3d6d                	jal	1c0097a6 <_prf_locked>
1c0098ee:	40f2                	lw	ra,28(sp)
1c0098f0:	6121                	addi	sp,sp,64
1c0098f2:	8082                	ret

1c0098f4 <_to_x>:
1c0098f4:	872a                	mv	a4,a0
1c0098f6:	87aa                	mv	a5,a0
1c0098f8:	4325                	li	t1,9
1c0098fa:	02c5f8b3          	remu	a7,a1,a2
1c0098fe:	02700513          	li	a0,39
1c009902:	02c5d5b3          	divu	a1,a1,a2
1c009906:	0ff8f813          	andi	a6,a7,255
1c00990a:	01136363          	bltu	t1,a7,1c009910 <_to_x+0x1c>
1c00990e:	4501                	li	a0,0
1c009910:	03080813          	addi	a6,a6,48
1c009914:	9542                	add	a0,a0,a6
1c009916:	00a780ab          	p.sb	a0,1(a5!)
1c00991a:	f1e5                	bnez	a1,1c0098fa <_to_x+0x6>
1c00991c:	03000613          	li	a2,48
1c009920:	40e78533          	sub	a0,a5,a4
1c009924:	00d54763          	blt	a0,a3,1c009932 <_to_x+0x3e>
1c009928:	fe078fab          	p.sb	zero,-1(a5!)
1c00992c:	00f76663          	bltu	a4,a5,1c009938 <_to_x+0x44>
1c009930:	8082                	ret
1c009932:	00c780ab          	p.sb	a2,1(a5!)
1c009936:	b7ed                	j	1c009920 <_to_x+0x2c>
1c009938:	00074603          	lbu	a2,0(a4) # 1a10f000 <__rt_udma_callback_data+0x1a10ed08>
1c00993c:	0007c683          	lbu	a3,0(a5)
1c009940:	fec78fab          	p.sb	a2,-1(a5!)
1c009944:	00d700ab          	p.sb	a3,1(a4!)
1c009948:	b7d5                	j	1c00992c <_to_x+0x38>

1c00994a <_rlrshift>:
1c00994a:	411c                	lw	a5,0(a0)
1c00994c:	4154                	lw	a3,4(a0)
1c00994e:	fc17b733          	p.bclr	a4,a5,30,1
1c009952:	01f69613          	slli	a2,a3,0x1f
1c009956:	8385                	srli	a5,a5,0x1
1c009958:	8fd1                	or	a5,a5,a2
1c00995a:	97ba                	add	a5,a5,a4
1c00995c:	8285                	srli	a3,a3,0x1
1c00995e:	00e7b733          	sltu	a4,a5,a4
1c009962:	9736                	add	a4,a4,a3
1c009964:	c11c                	sw	a5,0(a0)
1c009966:	c158                	sw	a4,4(a0)
1c009968:	8082                	ret

1c00996a <_ldiv5>:
1c00996a:	4118                	lw	a4,0(a0)
1c00996c:	4154                	lw	a3,4(a0)
1c00996e:	4615                	li	a2,5
1c009970:	00270793          	addi	a5,a4,2
1c009974:	00e7b733          	sltu	a4,a5,a4
1c009978:	9736                	add	a4,a4,a3
1c00997a:	02c755b3          	divu	a1,a4,a2
1c00997e:	42b61733          	p.msu	a4,a2,a1
1c009982:	01d71693          	slli	a3,a4,0x1d
1c009986:	0037d713          	srli	a4,a5,0x3
1c00998a:	8f55                	or	a4,a4,a3
1c00998c:	02c75733          	divu	a4,a4,a2
1c009990:	01d75693          	srli	a3,a4,0x1d
1c009994:	070e                	slli	a4,a4,0x3
1c009996:	42e617b3          	p.msu	a5,a2,a4
1c00999a:	95b6                	add	a1,a1,a3
1c00999c:	02c7d7b3          	divu	a5,a5,a2
1c0099a0:	973e                	add	a4,a4,a5
1c0099a2:	00f737b3          	sltu	a5,a4,a5
1c0099a6:	97ae                	add	a5,a5,a1
1c0099a8:	c118                	sw	a4,0(a0)
1c0099aa:	c15c                	sw	a5,4(a0)
1c0099ac:	8082                	ret

1c0099ae <_get_digit>:
1c0099ae:	419c                	lw	a5,0(a1)
1c0099b0:	03000713          	li	a4,48
1c0099b4:	02f05563          	blez	a5,1c0099de <_get_digit+0x30>
1c0099b8:	17fd                	addi	a5,a5,-1
1c0099ba:	c19c                	sw	a5,0(a1)
1c0099bc:	411c                	lw	a5,0(a0)
1c0099be:	4729                	li	a4,10
1c0099c0:	4150                	lw	a2,4(a0)
1c0099c2:	02f706b3          	mul	a3,a4,a5
1c0099c6:	02f737b3          	mulhu	a5,a4,a5
1c0099ca:	c114                	sw	a3,0(a0)
1c0099cc:	42c707b3          	p.mac	a5,a4,a2
1c0099d0:	01c7d713          	srli	a4,a5,0x1c
1c0099d4:	c7c7b7b3          	p.bclr	a5,a5,3,28
1c0099d8:	03070713          	addi	a4,a4,48
1c0099dc:	c15c                	sw	a5,4(a0)
1c0099de:	0ff77513          	andi	a0,a4,255
1c0099e2:	8082                	ret

1c0099e4 <_prf>:
1c0099e4:	714d                	addi	sp,sp,-336
1c0099e6:	14912223          	sw	s1,324(sp)
1c0099ea:	15212023          	sw	s2,320(sp)
1c0099ee:	13812423          	sw	s8,296(sp)
1c0099f2:	14112623          	sw	ra,332(sp)
1c0099f6:	14812423          	sw	s0,328(sp)
1c0099fa:	13312e23          	sw	s3,316(sp)
1c0099fe:	13412c23          	sw	s4,312(sp)
1c009a02:	13512a23          	sw	s5,308(sp)
1c009a06:	13612823          	sw	s6,304(sp)
1c009a0a:	13712623          	sw	s7,300(sp)
1c009a0e:	13912223          	sw	s9,292(sp)
1c009a12:	13a12023          	sw	s10,288(sp)
1c009a16:	11b12e23          	sw	s11,284(sp)
1c009a1a:	cc2a                	sw	a0,24(sp)
1c009a1c:	ce2e                	sw	a1,28(sp)
1c009a1e:	84b2                	mv	s1,a2
1c009a20:	8c36                	mv	s8,a3
1c009a22:	4901                	li	s2,0
1c009a24:	0004c503          	lbu	a0,0(s1)
1c009a28:	00148b93          	addi	s7,s1,1
1c009a2c:	c919                	beqz	a0,1c009a42 <_prf+0x5e>
1c009a2e:	02500793          	li	a5,37
1c009a32:	14f50563          	beq	a0,a5,1c009b7c <_prf+0x198>
1c009a36:	45f2                	lw	a1,28(sp)
1c009a38:	4762                	lw	a4,24(sp)
1c009a3a:	9702                	jalr	a4
1c009a3c:	05f53063          	p.bneimm	a0,-1,1c009a7c <_prf+0x98>
1c009a40:	597d                	li	s2,-1
1c009a42:	14c12083          	lw	ra,332(sp)
1c009a46:	14812403          	lw	s0,328(sp)
1c009a4a:	854a                	mv	a0,s2
1c009a4c:	14412483          	lw	s1,324(sp)
1c009a50:	14012903          	lw	s2,320(sp)
1c009a54:	13c12983          	lw	s3,316(sp)
1c009a58:	13812a03          	lw	s4,312(sp)
1c009a5c:	13412a83          	lw	s5,308(sp)
1c009a60:	13012b03          	lw	s6,304(sp)
1c009a64:	12c12b83          	lw	s7,300(sp)
1c009a68:	12812c03          	lw	s8,296(sp)
1c009a6c:	12412c83          	lw	s9,292(sp)
1c009a70:	12012d03          	lw	s10,288(sp)
1c009a74:	11c12d83          	lw	s11,284(sp)
1c009a78:	6171                	addi	sp,sp,336
1c009a7a:	8082                	ret
1c009a7c:	0905                	addi	s2,s2,1
1c009a7e:	8a62                	mv	s4,s8
1c009a80:	84de                	mv	s1,s7
1c009a82:	8c52                	mv	s8,s4
1c009a84:	b745                	j	1c009a24 <_prf+0x40>
1c009a86:	0f3a8263          	beq	s5,s3,1c009b6a <_prf+0x186>
1c009a8a:	0d59e563          	bltu	s3,s5,1c009b54 <_prf+0x170>
1c009a8e:	fa0a8ae3          	beqz	s5,1c009a42 <_prf+0x5e>
1c009a92:	0dba8a63          	beq	s5,s11,1c009b66 <_prf+0x182>
1c009a96:	8ba6                	mv	s7,s1
1c009a98:	000bca83          	lbu	s5,0(s7)
1c009a9c:	1c0007b7          	lui	a5,0x1c000
1c009aa0:	52478513          	addi	a0,a5,1316 # 1c000524 <__DTOR_END__+0x1cc>
1c009aa4:	85d6                	mv	a1,s5
1c009aa6:	001b8493          	addi	s1,s7,1
1c009aaa:	36a5                	jal	1c009612 <strchr>
1c009aac:	fd69                	bnez	a0,1c009a86 <_prf+0xa2>
1c009aae:	02a00693          	li	a3,42
1c009ab2:	0eda9763          	bne	s5,a3,1c009ba0 <_prf+0x1bc>
1c009ab6:	000c2983          	lw	s3,0(s8)
1c009aba:	004c0693          	addi	a3,s8,4
1c009abe:	0009d663          	bgez	s3,1c009aca <_prf+0xe6>
1c009ac2:	4705                	li	a4,1
1c009ac4:	413009b3          	neg	s3,s3
1c009ac8:	ca3a                	sw	a4,20(sp)
1c009aca:	0004ca83          	lbu	s5,0(s1)
1c009ace:	8c36                	mv	s8,a3
1c009ad0:	002b8493          	addi	s1,s7,2
1c009ad4:	0c800713          	li	a4,200
1c009ad8:	02e00693          	li	a3,46
1c009adc:	04e9d9b3          	p.minu	s3,s3,a4
1c009ae0:	5d7d                	li	s10,-1
1c009ae2:	02da9463          	bne	s5,a3,1c009b0a <_prf+0x126>
1c009ae6:	0004c703          	lbu	a4,0(s1)
1c009aea:	02a00793          	li	a5,42
1c009aee:	0ef71c63          	bne	a4,a5,1c009be6 <_prf+0x202>
1c009af2:	000c2d03          	lw	s10,0(s8)
1c009af6:	0485                	addi	s1,s1,1
1c009af8:	0c11                	addi	s8,s8,4
1c009afa:	0c800793          	li	a5,200
1c009afe:	01a7d363          	ble	s10,a5,1c009b04 <_prf+0x120>
1c009b02:	5d7d                	li	s10,-1
1c009b04:	0004ca83          	lbu	s5,0(s1)
1c009b08:	0485                	addi	s1,s1,1
1c009b0a:	1c0007b7          	lui	a5,0x1c000
1c009b0e:	85d6                	mv	a1,s5
1c009b10:	52c78513          	addi	a0,a5,1324 # 1c00052c <__DTOR_END__+0x1d4>
1c009b14:	3cfd                	jal	1c009612 <strchr>
1c009b16:	c501                	beqz	a0,1c009b1e <_prf+0x13a>
1c009b18:	0004ca83          	lbu	s5,0(s1)
1c009b1c:	0485                	addi	s1,s1,1
1c009b1e:	06700693          	li	a3,103
1c009b22:	1356c563          	blt	a3,s5,1c009c4c <_prf+0x268>
1c009b26:	06500693          	li	a3,101
1c009b2a:	20dad063          	ble	a3,s5,1c009d2a <_prf+0x346>
1c009b2e:	04700693          	li	a3,71
1c009b32:	0b56ce63          	blt	a3,s5,1c009bee <_prf+0x20a>
1c009b36:	04500693          	li	a3,69
1c009b3a:	1edad863          	ble	a3,s5,1c009d2a <_prf+0x346>
1c009b3e:	f00a82e3          	beqz	s5,1c009a42 <_prf+0x5e>
1c009b42:	02500713          	li	a4,37
1c009b46:	64ea8a63          	beq	s5,a4,1c00a19a <_prf+0x7b6>
1c009b4a:	0c800713          	li	a4,200
1c009b4e:	65575e63          	ble	s5,a4,1c00a1aa <_prf+0x7c6>
1c009b52:	b5fd                	j	1c009a40 <_prf+0x5c>
1c009b54:	034a8163          	beq	s5,s4,1c009b76 <_prf+0x192>
1c009b58:	016a8b63          	beq	s5,s6,1c009b6e <_prf+0x18a>
1c009b5c:	f3aa9de3          	bne	s5,s10,1c009a96 <_prf+0xb2>
1c009b60:	4785                	li	a5,1
1c009b62:	c83e                	sw	a5,16(sp)
1c009b64:	bf0d                	j	1c009a96 <_prf+0xb2>
1c009b66:	4405                	li	s0,1
1c009b68:	b73d                	j	1c009a96 <_prf+0xb2>
1c009b6a:	4c85                	li	s9,1
1c009b6c:	b72d                	j	1c009a96 <_prf+0xb2>
1c009b6e:	03000713          	li	a4,48
1c009b72:	c63a                	sw	a4,12(sp)
1c009b74:	b70d                	j	1c009a96 <_prf+0xb2>
1c009b76:	4785                	li	a5,1
1c009b78:	ca3e                	sw	a5,20(sp)
1c009b7a:	bf31                	j	1c009a96 <_prf+0xb2>
1c009b7c:	02000713          	li	a4,32
1c009b80:	c63a                	sw	a4,12(sp)
1c009b82:	4401                	li	s0,0
1c009b84:	c802                	sw	zero,16(sp)
1c009b86:	ca02                	sw	zero,20(sp)
1c009b88:	4c81                	li	s9,0
1c009b8a:	02300993          	li	s3,35
1c009b8e:	02d00a13          	li	s4,45
1c009b92:	03000b13          	li	s6,48
1c009b96:	02b00d13          	li	s10,43
1c009b9a:	02000d93          	li	s11,32
1c009b9e:	bded                	j	1c009a98 <_prf+0xb4>
1c009ba0:	fd0a8693          	addi	a3,s5,-48
1c009ba4:	4625                	li	a2,9
1c009ba6:	4981                	li	s3,0
1c009ba8:	f2d666e3          	bltu	a2,a3,1c009ad4 <_prf+0xf0>
1c009bac:	46a5                	li	a3,9
1c009bae:	45a9                	li	a1,10
1c009bb0:	84de                	mv	s1,s7
1c009bb2:	0014c70b          	p.lbu	a4,1(s1!)
1c009bb6:	fd070613          	addi	a2,a4,-48
1c009bba:	8aba                	mv	s5,a4
1c009bbc:	f0c6ece3          	bltu	a3,a2,1c009ad4 <_prf+0xf0>
1c009bc0:	42b98733          	p.mac	a4,s3,a1
1c009bc4:	8ba6                	mv	s7,s1
1c009bc6:	fd070993          	addi	s3,a4,-48
1c009bca:	b7dd                	j	1c009bb0 <_prf+0x1cc>
1c009bcc:	42ad07b3          	p.mac	a5,s10,a0
1c009bd0:	84b6                	mv	s1,a3
1c009bd2:	fd078d13          	addi	s10,a5,-48
1c009bd6:	86a6                	mv	a3,s1
1c009bd8:	0016c78b          	p.lbu	a5,1(a3!)
1c009bdc:	fd078593          	addi	a1,a5,-48
1c009be0:	feb676e3          	bleu	a1,a2,1c009bcc <_prf+0x1e8>
1c009be4:	bf19                	j	1c009afa <_prf+0x116>
1c009be6:	4d01                	li	s10,0
1c009be8:	4625                	li	a2,9
1c009bea:	4529                	li	a0,10
1c009bec:	b7ed                	j	1c009bd6 <_prf+0x1f2>
1c009bee:	06300693          	li	a3,99
1c009bf2:	0cda8e63          	beq	s5,a3,1c009cce <_prf+0x2ea>
1c009bf6:	0756cb63          	blt	a3,s5,1c009c6c <_prf+0x288>
1c009bfa:	05800693          	li	a3,88
1c009bfe:	f4da96e3          	bne	s5,a3,1c009b4a <_prf+0x166>
1c009c02:	04410b93          	addi	s7,sp,68
1c009c06:	004c0a13          	addi	s4,s8,4
1c009c0a:	000c2583          	lw	a1,0(s8)
1c009c0e:	845e                	mv	s0,s7
1c009c10:	000c8963          	beqz	s9,1c009c22 <_prf+0x23e>
1c009c14:	76e1                	lui	a3,0xffff8
1c009c16:	8306c693          	xori	a3,a3,-2000
1c009c1a:	04d11223          	sh	a3,68(sp)
1c009c1e:	04610413          	addi	s0,sp,70
1c009c22:	86ea                	mv	a3,s10
1c009c24:	4641                	li	a2,16
1c009c26:	8522                	mv	a0,s0
1c009c28:	31f1                	jal	1c0098f4 <_to_x>
1c009c2a:	05800693          	li	a3,88
1c009c2e:	00da9863          	bne	s5,a3,1c009c3e <_prf+0x25a>
1c009c32:	86de                	mv	a3,s7
1c009c34:	45e5                	li	a1,25
1c009c36:	0016c78b          	p.lbu	a5,1(a3!) # ffff8001 <pulp__FC+0xffff8002>
1c009c3a:	54079663          	bnez	a5,1c00a186 <_prf+0x7a2>
1c009c3e:	41740433          	sub	s0,s0,s7
1c009c42:	9522                	add	a0,a0,s0
1c009c44:	01903433          	snez	s0,s9
1c009c48:	0406                	slli	s0,s0,0x1
1c009c4a:	a0e9                	j	1c009d14 <_prf+0x330>
1c009c4c:	07000693          	li	a3,112
1c009c50:	4eda8463          	beq	s5,a3,1c00a138 <_prf+0x754>
1c009c54:	0556c163          	blt	a3,s5,1c009c96 <_prf+0x2b2>
1c009c58:	06e00693          	li	a3,110
1c009c5c:	46da8163          	beq	s5,a3,1c00a0be <_prf+0x6da>
1c009c60:	4756c663          	blt	a3,s5,1c00a0cc <_prf+0x6e8>
1c009c64:	06900693          	li	a3,105
1c009c68:	eeda91e3          	bne	s5,a3,1c009b4a <_prf+0x166>
1c009c6c:	000c2a83          	lw	s5,0(s8)
1c009c70:	004c0a13          	addi	s4,s8,4
1c009c74:	04410b13          	addi	s6,sp,68
1c009c78:	060ad663          	bgez	s5,1c009ce4 <_prf+0x300>
1c009c7c:	02d00693          	li	a3,45
1c009c80:	04d10223          	sb	a3,68(sp)
1c009c84:	80000737          	lui	a4,0x80000
1c009c88:	415005b3          	neg	a1,s5
1c009c8c:	06ea9663          	bne	s5,a4,1c009cf8 <_prf+0x314>
1c009c90:	800005b7          	lui	a1,0x80000
1c009c94:	a095                	j	1c009cf8 <_prf+0x314>
1c009c96:	07500693          	li	a3,117
1c009c9a:	4cda8c63          	beq	s5,a3,1c00a172 <_prf+0x78e>
1c009c9e:	07800693          	li	a3,120
1c009ca2:	f6da80e3          	beq	s5,a3,1c009c02 <_prf+0x21e>
1c009ca6:	07300693          	li	a3,115
1c009caa:	eada90e3          	bne	s5,a3,1c009b4a <_prf+0x166>
1c009cae:	000c2583          	lw	a1,0(s8)
1c009cb2:	004c0a13          	addi	s4,s8,4
1c009cb6:	4c81                	li	s9,0
1c009cb8:	86ae                	mv	a3,a1
1c009cba:	0c8350fb          	lp.setupi	x1,200,1c009cc6 <_prf+0x2e2>
1c009cbe:	0016c60b          	p.lbu	a2,1(a3!)
1c009cc2:	48060d63          	beqz	a2,1c00a15c <_prf+0x778>
1c009cc6:	0c85                	addi	s9,s9,1
1c009cc8:	480d5c63          	bgez	s10,1c00a160 <_prf+0x77c>
1c009ccc:	a971                	j	1c00a168 <_prf+0x784>
1c009cce:	000c2783          	lw	a5,0(s8)
1c009cd2:	004c0a13          	addi	s4,s8,4
1c009cd6:	040102a3          	sb	zero,69(sp)
1c009cda:	04f10223          	sb	a5,68(sp)
1c009cde:	4c85                	li	s9,1
1c009ce0:	4401                	li	s0,0
1c009ce2:	a901                	j	1c00a0f2 <_prf+0x70e>
1c009ce4:	47c2                	lw	a5,16(sp)
1c009ce6:	02b00693          	li	a3,43
1c009cea:	e781                	bnez	a5,1c009cf2 <_prf+0x30e>
1c009cec:	c815                	beqz	s0,1c009d20 <_prf+0x33c>
1c009cee:	02000693          	li	a3,32
1c009cf2:	04d10223          	sb	a3,68(sp)
1c009cf6:	85d6                	mv	a1,s5
1c009cf8:	04510c13          	addi	s8,sp,69
1c009cfc:	86ea                	mv	a3,s10
1c009cfe:	4629                	li	a2,10
1c009d00:	8562                	mv	a0,s8
1c009d02:	3ecd                	jal	1c0098f4 <_to_x>
1c009d04:	4742                	lw	a4,16(sp)
1c009d06:	9562                	add	a0,a0,s8
1c009d08:	41650533          	sub	a0,a0,s6
1c009d0c:	ef09                	bnez	a4,1c009d26 <_prf+0x342>
1c009d0e:	e019                	bnez	s0,1c009d14 <_prf+0x330>
1c009d10:	01fad413          	srli	s0,s5,0x1f
1c009d14:	0bfd2363          	p.beqimm	s10,-1,1c009dba <_prf+0x3d6>
1c009d18:	02000713          	li	a4,32
1c009d1c:	c63a                	sw	a4,12(sp)
1c009d1e:	a871                	j	1c009dba <_prf+0x3d6>
1c009d20:	85d6                	mv	a1,s5
1c009d22:	8c5a                	mv	s8,s6
1c009d24:	bfe1                	j	1c009cfc <_prf+0x318>
1c009d26:	4442                	lw	s0,16(sp)
1c009d28:	b7f5                	j	1c009d14 <_prf+0x330>
1c009d2a:	0c1d                	addi	s8,s8,7
1c009d2c:	c40c3c33          	p.bclr	s8,s8,2,0
1c009d30:	000c2883          	lw	a7,0(s8)
1c009d34:	004c2303          	lw	t1,4(s8)
1c009d38:	800007b7          	lui	a5,0x80000
1c009d3c:	0158d593          	srli	a1,a7,0x15
1c009d40:	00b31693          	slli	a3,t1,0xb
1c009d44:	8ecd                	or	a3,a3,a1
1c009d46:	fff7c793          	not	a5,a5
1c009d4a:	01435613          	srli	a2,t1,0x14
1c009d4e:	08ae                	slli	a7,a7,0xb
1c009d50:	8efd                	and	a3,a3,a5
1c009d52:	e8b63633          	p.bclr	a2,a2,20,11
1c009d56:	d846                	sw	a7,48(sp)
1c009d58:	da36                	sw	a3,52(sp)
1c009d5a:	7ff00593          	li	a1,2047
1c009d5e:	008c0a13          	addi	s4,s8,8
1c009d62:	08b61d63          	bne	a2,a1,1c009dfc <_prf+0x418>
1c009d66:	00d0                	addi	a2,sp,68
1c009d68:	8732                	mv	a4,a2
1c009d6a:	00035863          	bgez	t1,1c009d7a <_prf+0x396>
1c009d6e:	02d00713          	li	a4,45
1c009d72:	04e10223          	sb	a4,68(sp)
1c009d76:	04510713          	addi	a4,sp,69
1c009d7a:	00d8e6b3          	or	a3,a7,a3
1c009d7e:	fbfa8793          	addi	a5,s5,-65
1c009d82:	00370513          	addi	a0,a4,3 # 80000003 <pulp__FC+0x80000004>
1c009d86:	eaa1                	bnez	a3,1c009dd6 <_prf+0x3f2>
1c009d88:	46e5                	li	a3,25
1c009d8a:	02f6ee63          	bltu	a3,a5,1c009dc6 <_prf+0x3e2>
1c009d8e:	6795                	lui	a5,0x5
1c009d90:	e4978793          	addi	a5,a5,-439 # 4e49 <__rt_udma_callback_data+0x4b51>
1c009d94:	00f71023          	sh	a5,0(a4)
1c009d98:	04600793          	li	a5,70
1c009d9c:	00f70123          	sb	a5,2(a4)
1c009da0:	000701a3          	sb	zero,3(a4)
1c009da4:	8d11                	sub	a0,a0,a2
1c009da6:	47c2                	lw	a5,16(sp)
1c009da8:	44079f63          	bnez	a5,1c00a206 <_prf+0x822>
1c009dac:	e419                	bnez	s0,1c009dba <_prf+0x3d6>
1c009dae:	04414403          	lbu	s0,68(sp)
1c009db2:	fd340413          	addi	s0,s0,-45
1c009db6:	00143413          	seqz	s0,s0
1c009dba:	0c800793          	li	a5,200
1c009dbe:	c8a7c1e3          	blt	a5,a0,1c009a40 <_prf+0x5c>
1c009dc2:	8caa                	mv	s9,a0
1c009dc4:	a63d                	j	1c00a0f2 <_prf+0x70e>
1c009dc6:	679d                	lui	a5,0x7
1c009dc8:	e6978793          	addi	a5,a5,-407 # 6e69 <__rt_udma_callback_data+0x6b71>
1c009dcc:	00f71023          	sh	a5,0(a4)
1c009dd0:	06600793          	li	a5,102
1c009dd4:	b7e1                	j	1c009d9c <_prf+0x3b8>
1c009dd6:	46e5                	li	a3,25
1c009dd8:	00f6ea63          	bltu	a3,a5,1c009dec <_prf+0x408>
1c009ddc:	6791                	lui	a5,0x4
1c009dde:	14e78793          	addi	a5,a5,334 # 414e <__rt_udma_callback_data+0x3e56>
1c009de2:	00f71023          	sh	a5,0(a4)
1c009de6:	04e00793          	li	a5,78
1c009dea:	bf4d                	j	1c009d9c <_prf+0x3b8>
1c009dec:	6799                	lui	a5,0x6
1c009dee:	16e78793          	addi	a5,a5,366 # 616e <__rt_udma_callback_data+0x5e76>
1c009df2:	00f71023          	sh	a5,0(a4)
1c009df6:	06e00793          	li	a5,110
1c009dfa:	b74d                	j	1c009d9c <_prf+0x3b8>
1c009dfc:	04600593          	li	a1,70
1c009e00:	00ba9463          	bne	s5,a1,1c009e08 <_prf+0x424>
1c009e04:	06600a93          	li	s5,102
1c009e08:	011665b3          	or	a1,a2,a7
1c009e0c:	8dd5                	or	a1,a1,a3
1c009e0e:	c5d1                	beqz	a1,1c009e9a <_prf+0x4b6>
1c009e10:	80000737          	lui	a4,0x80000
1c009e14:	8ed9                	or	a3,a3,a4
1c009e16:	da36                	sw	a3,52(sp)
1c009e18:	d846                	sw	a7,48(sp)
1c009e1a:	c0260c13          	addi	s8,a2,-1022
1c009e1e:	02d00693          	li	a3,45
1c009e22:	00034b63          	bltz	t1,1c009e38 <_prf+0x454>
1c009e26:	47c2                	lw	a5,16(sp)
1c009e28:	02b00693          	li	a3,43
1c009e2c:	e791                	bnez	a5,1c009e38 <_prf+0x454>
1c009e2e:	04410b13          	addi	s6,sp,68
1c009e32:	c419                	beqz	s0,1c009e40 <_prf+0x45c>
1c009e34:	02000693          	li	a3,32
1c009e38:	04d10223          	sb	a3,68(sp)
1c009e3c:	04510b13          	addi	s6,sp,69
1c009e40:	4b81                	li	s7,0
1c009e42:	55f9                	li	a1,-2
1c009e44:	04bc4f63          	blt	s8,a1,1c009ea2 <_prf+0x4be>
1c009e48:	0b804563          	bgtz	s8,1c009ef2 <_prf+0x50e>
1c009e4c:	1808                	addi	a0,sp,48
1c009e4e:	0c05                	addi	s8,s8,1
1c009e50:	3ced                	jal	1c00994a <_rlrshift>
1c009e52:	fe4c3de3          	p.bneimm	s8,4,1c009e4c <_prf+0x468>
1c009e56:	000d5363          	bgez	s10,1c009e5c <_prf+0x478>
1c009e5a:	4d19                	li	s10,6
1c009e5c:	c05ab5b3          	p.bclr	a1,s5,0,5
1c009e60:	04700513          	li	a0,71
1c009e64:	0ca59363          	bne	a1,a0,1c009f2a <_prf+0x546>
1c009e68:	4c01                	li	s8,0
1c009e6a:	000c9463          	bnez	s9,1c009e72 <_prf+0x48e>
1c009e6e:	01a03c33          	snez	s8,s10
1c009e72:	55f5                	li	a1,-3
1c009e74:	00bbc663          	blt	s7,a1,1c009e80 <_prf+0x49c>
1c009e78:	001d0593          	addi	a1,s10,1
1c009e7c:	0b75dc63          	ble	s7,a1,1c009f34 <_prf+0x550>
1c009e80:	06700593          	li	a1,103
1c009e84:	14ba8763          	beq	s5,a1,1c009fd2 <_prf+0x5ee>
1c009e88:	04500a93          	li	s5,69
1c009e8c:	001d0593          	addi	a1,s10,1
1c009e90:	4541                	li	a0,16
1c009e92:	d62a                	sw	a0,44(sp)
1c009e94:	04a5cdb3          	p.min	s11,a1,a0
1c009e98:	a07d                	j	1c009f46 <_prf+0x562>
1c009e9a:	4c01                	li	s8,0
1c009e9c:	b769                	j	1c009e26 <_prf+0x442>
1c009e9e:	1808                	addi	a0,sp,48
1c009ea0:	346d                	jal	1c00994a <_rlrshift>
1c009ea2:	5352                	lw	t1,52(sp)
1c009ea4:	33333737          	lui	a4,0x33333
1c009ea8:	33270713          	addi	a4,a4,818 # 33333332 <__l2_shared_end+0x17323246>
1c009eac:	58c2                	lw	a7,48(sp)
1c009eae:	0c05                	addi	s8,s8,1
1c009eb0:	fe6767e3          	bltu	a4,t1,1c009e9e <_prf+0x4ba>
1c009eb4:	4515                	li	a0,5
1c009eb6:	031535b3          	mulhu	a1,a0,a7
1c009eba:	1bfd                	addi	s7,s7,-1
1c009ebc:	031508b3          	mul	a7,a0,a7
1c009ec0:	426505b3          	p.mac	a1,a0,t1
1c009ec4:	d846                	sw	a7,48(sp)
1c009ec6:	4501                	li	a0,0
1c009ec8:	da2e                	sw	a1,52(sp)
1c009eca:	800007b7          	lui	a5,0x80000
1c009ece:	fff7c793          	not	a5,a5
1c009ed2:	00b7f663          	bleu	a1,a5,1c009ede <_prf+0x4fa>
1c009ed6:	d535                	beqz	a0,1c009e42 <_prf+0x45e>
1c009ed8:	d846                	sw	a7,48(sp)
1c009eda:	da2e                	sw	a1,52(sp)
1c009edc:	b79d                	j	1c009e42 <_prf+0x45e>
1c009ede:	01f8d313          	srli	t1,a7,0x1f
1c009ee2:	00159513          	slli	a0,a1,0x1
1c009ee6:	00a365b3          	or	a1,t1,a0
1c009eea:	0886                	slli	a7,a7,0x1
1c009eec:	1c7d                	addi	s8,s8,-1
1c009eee:	4505                	li	a0,1
1c009ef0:	bfe9                	j	1c009eca <_prf+0x4e6>
1c009ef2:	1808                	addi	a0,sp,48
1c009ef4:	a77ff0ef          	jal	ra,1c00996a <_ldiv5>
1c009ef8:	58c2                	lw	a7,48(sp)
1c009efa:	55d2                	lw	a1,52(sp)
1c009efc:	1c7d                	addi	s8,s8,-1
1c009efe:	0b85                	addi	s7,s7,1
1c009f00:	4501                	li	a0,0
1c009f02:	80000737          	lui	a4,0x80000
1c009f06:	fff74713          	not	a4,a4
1c009f0a:	00b77663          	bleu	a1,a4,1c009f16 <_prf+0x532>
1c009f0e:	dd0d                	beqz	a0,1c009e48 <_prf+0x464>
1c009f10:	d846                	sw	a7,48(sp)
1c009f12:	da2e                	sw	a1,52(sp)
1c009f14:	bf15                	j	1c009e48 <_prf+0x464>
1c009f16:	01f8d313          	srli	t1,a7,0x1f
1c009f1a:	00159513          	slli	a0,a1,0x1
1c009f1e:	00a365b3          	or	a1,t1,a0
1c009f22:	0886                	slli	a7,a7,0x1
1c009f24:	1c7d                	addi	s8,s8,-1
1c009f26:	4505                	li	a0,1
1c009f28:	bfe9                	j	1c009f02 <_prf+0x51e>
1c009f2a:	06600593          	li	a1,102
1c009f2e:	4c01                	li	s8,0
1c009f30:	f4ba9ee3          	bne	s5,a1,1c009e8c <_prf+0x4a8>
1c009f34:	01ab85b3          	add	a1,s7,s10
1c009f38:	06600a93          	li	s5,102
1c009f3c:	f405dae3          	bgez	a1,1c009e90 <_prf+0x4ac>
1c009f40:	45c1                	li	a1,16
1c009f42:	d62e                	sw	a1,44(sp)
1c009f44:	4d81                	li	s11,0
1c009f46:	4301                	li	t1,0
1c009f48:	080003b7          	lui	t2,0x8000
1c009f4c:	dc1a                	sw	t1,56(sp)
1c009f4e:	de1e                	sw	t2,60(sp)
1c009f50:	1dfd                	addi	s11,s11,-1
1c009f52:	09fdb363          	p.bneimm	s11,-1,1c009fd8 <_prf+0x5f4>
1c009f56:	55c2                	lw	a1,48(sp)
1c009f58:	5562                	lw	a0,56(sp)
1c009f5a:	58d2                	lw	a7,52(sp)
1c009f5c:	5372                	lw	t1,60(sp)
1c009f5e:	952e                	add	a0,a0,a1
1c009f60:	00b535b3          	sltu	a1,a0,a1
1c009f64:	989a                	add	a7,a7,t1
1c009f66:	95c6                	add	a1,a1,a7
1c009f68:	da2e                	sw	a1,52(sp)
1c009f6a:	d82a                	sw	a0,48(sp)
1c009f6c:	f605b5b3          	p.bclr	a1,a1,27,0
1c009f70:	c981                	beqz	a1,1c009f80 <_prf+0x59c>
1c009f72:	1808                	addi	a0,sp,48
1c009f74:	9f7ff0ef          	jal	ra,1c00996a <_ldiv5>
1c009f78:	1808                	addi	a0,sp,48
1c009f7a:	9d1ff0ef          	jal	ra,1c00994a <_rlrshift>
1c009f7e:	0b85                	addi	s7,s7,1
1c009f80:	06600593          	li	a1,102
1c009f84:	001b0d93          	addi	s11,s6,1
1c009f88:	08ba9463          	bne	s5,a1,1c00a010 <_prf+0x62c>
1c009f8c:	05705d63          	blez	s7,1c009fe6 <_prf+0x602>
1c009f90:	017b0db3          	add	s11,s6,s7
1c009f94:	106c                	addi	a1,sp,44
1c009f96:	1808                	addi	a0,sp,48
1c009f98:	a17ff0ef          	jal	ra,1c0099ae <_get_digit>
1c009f9c:	00ab00ab          	p.sb	a0,1(s6!)
1c009fa0:	ffbb1ae3          	bne	s6,s11,1c009f94 <_prf+0x5b0>
1c009fa4:	4b81                	li	s7,0
1c009fa6:	000c9463          	bnez	s9,1c009fae <_prf+0x5ca>
1c009faa:	020d0163          	beqz	s10,1c009fcc <_prf+0x5e8>
1c009fae:	001d8b13          	addi	s6,s11,1
1c009fb2:	02e00613          	li	a2,46
1c009fb6:	00cd8023          	sb	a2,0(s11)
1c009fba:	8cea                	mv	s9,s10
1c009fbc:	8dda                	mv	s11,s6
1c009fbe:	03000893          	li	a7,48
1c009fc2:	1cfd                	addi	s9,s9,-1
1c009fc4:	03fcb663          	p.bneimm	s9,-1,1c009ff0 <_prf+0x60c>
1c009fc8:	01ab0db3          	add	s11,s6,s10
1c009fcc:	060c1c63          	bnez	s8,1c00a044 <_prf+0x660>
1c009fd0:	a8c1                	j	1c00a0a0 <_prf+0x6bc>
1c009fd2:	06500a93          	li	s5,101
1c009fd6:	bd5d                	j	1c009e8c <_prf+0x4a8>
1c009fd8:	1828                	addi	a0,sp,56
1c009fda:	991ff0ef          	jal	ra,1c00996a <_ldiv5>
1c009fde:	1828                	addi	a0,sp,56
1c009fe0:	96bff0ef          	jal	ra,1c00994a <_rlrshift>
1c009fe4:	b7b5                	j	1c009f50 <_prf+0x56c>
1c009fe6:	03000593          	li	a1,48
1c009fea:	00bb0023          	sb	a1,0(s6)
1c009fee:	bf65                	j	1c009fa6 <_prf+0x5c2>
1c009ff0:	0d85                	addi	s11,s11,1
1c009ff2:	000b8663          	beqz	s7,1c009ffe <_prf+0x61a>
1c009ff6:	ff1d8fa3          	sb	a7,-1(s11)
1c009ffa:	0b85                	addi	s7,s7,1
1c009ffc:	b7d9                	j	1c009fc2 <_prf+0x5de>
1c009ffe:	106c                	addi	a1,sp,44
1c00a000:	1808                	addi	a0,sp,48
1c00a002:	c446                	sw	a7,8(sp)
1c00a004:	9abff0ef          	jal	ra,1c0099ae <_get_digit>
1c00a008:	fead8fa3          	sb	a0,-1(s11)
1c00a00c:	48a2                	lw	a7,8(sp)
1c00a00e:	bf55                	j	1c009fc2 <_prf+0x5de>
1c00a010:	106c                	addi	a1,sp,44
1c00a012:	1808                	addi	a0,sp,48
1c00a014:	99bff0ef          	jal	ra,1c0099ae <_get_digit>
1c00a018:	00ab0023          	sb	a0,0(s6)
1c00a01c:	03000593          	li	a1,48
1c00a020:	00b50363          	beq	a0,a1,1c00a026 <_prf+0x642>
1c00a024:	1bfd                	addi	s7,s7,-1
1c00a026:	000c9463          	bnez	s9,1c00a02e <_prf+0x64a>
1c00a02a:	000d0b63          	beqz	s10,1c00a040 <_prf+0x65c>
1c00a02e:	002b0d93          	addi	s11,s6,2
1c00a032:	02e00593          	li	a1,46
1c00a036:	00bb00a3          	sb	a1,1(s6)
1c00a03a:	9d6e                	add	s10,s10,s11
1c00a03c:	07bd1863          	bne	s10,s11,1c00a0ac <_prf+0x6c8>
1c00a040:	000c0f63          	beqz	s8,1c00a05e <_prf+0x67a>
1c00a044:	03000593          	li	a1,48
1c00a048:	fffd8713          	addi	a4,s11,-1
1c00a04c:	00074603          	lbu	a2,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00a050:	06b60563          	beq	a2,a1,1c00a0ba <_prf+0x6d6>
1c00a054:	02e00593          	li	a1,46
1c00a058:	00b61363          	bne	a2,a1,1c00a05e <_prf+0x67a>
1c00a05c:	8dba                	mv	s11,a4
1c00a05e:	c05ab733          	p.bclr	a4,s5,0,5
1c00a062:	04500613          	li	a2,69
1c00a066:	02c71d63          	bne	a4,a2,1c00a0a0 <_prf+0x6bc>
1c00a06a:	87d6                	mv	a5,s5
1c00a06c:	00fd8023          	sb	a5,0(s11)
1c00a070:	02b00793          	li	a5,43
1c00a074:	000bd663          	bgez	s7,1c00a080 <_prf+0x69c>
1c00a078:	41700bb3          	neg	s7,s7
1c00a07c:	02d00793          	li	a5,45
1c00a080:	00fd80a3          	sb	a5,1(s11)
1c00a084:	47a9                	li	a5,10
1c00a086:	02fbc733          	div	a4,s7,a5
1c00a08a:	0d91                	addi	s11,s11,4
1c00a08c:	02fbe6b3          	rem	a3,s7,a5
1c00a090:	03070713          	addi	a4,a4,48
1c00a094:	feed8f23          	sb	a4,-2(s11)
1c00a098:	03068693          	addi	a3,a3,48
1c00a09c:	fedd8fa3          	sb	a3,-1(s11)
1c00a0a0:	00c8                	addi	a0,sp,68
1c00a0a2:	000d8023          	sb	zero,0(s11)
1c00a0a6:	40ad8533          	sub	a0,s11,a0
1c00a0aa:	b9f5                	j	1c009da6 <_prf+0x3c2>
1c00a0ac:	106c                	addi	a1,sp,44
1c00a0ae:	1808                	addi	a0,sp,48
1c00a0b0:	8ffff0ef          	jal	ra,1c0099ae <_get_digit>
1c00a0b4:	00ad80ab          	p.sb	a0,1(s11!)
1c00a0b8:	b751                	j	1c00a03c <_prf+0x658>
1c00a0ba:	8dba                	mv	s11,a4
1c00a0bc:	b771                	j	1c00a048 <_prf+0x664>
1c00a0be:	000c2783          	lw	a5,0(s8)
1c00a0c2:	004c0a13          	addi	s4,s8,4
1c00a0c6:	0127a023          	sw	s2,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00a0ca:	ba65                	j	1c009a82 <_prf+0x9e>
1c00a0cc:	004c0a13          	addi	s4,s8,4
1c00a0d0:	000c2583          	lw	a1,0(s8)
1c00a0d4:	00dc                	addi	a5,sp,68
1c00a0d6:	040c8263          	beqz	s9,1c00a11a <_prf+0x736>
1c00a0da:	03000693          	li	a3,48
1c00a0de:	04d10223          	sb	a3,68(sp)
1c00a0e2:	04510513          	addi	a0,sp,69
1c00a0e6:	e99d                	bnez	a1,1c00a11c <_prf+0x738>
1c00a0e8:	040102a3          	sb	zero,69(sp)
1c00a0ec:	4401                	li	s0,0
1c00a0ee:	0dfd3063          	p.bneimm	s10,-1,1c00a1ae <_prf+0x7ca>
1c00a0f2:	04410b93          	addi	s7,sp,68
1c00a0f6:	0d3cc063          	blt	s9,s3,1c00a1b6 <_prf+0x7d2>
1c00a0fa:	89e6                	mv	s3,s9
1c00a0fc:	41790433          	sub	s0,s2,s7
1c00a100:	01740933          	add	s2,s0,s7
1c00a104:	96098fe3          	beqz	s3,1c009a82 <_prf+0x9e>
1c00a108:	45f2                	lw	a1,28(sp)
1c00a10a:	001bc50b          	p.lbu	a0,1(s7!)
1c00a10e:	47e2                	lw	a5,24(sp)
1c00a110:	9782                	jalr	a5
1c00a112:	93f527e3          	p.beqimm	a0,-1,1c009a40 <_prf+0x5c>
1c00a116:	19fd                	addi	s3,s3,-1
1c00a118:	b7e5                	j	1c00a100 <_prf+0x71c>
1c00a11a:	853e                	mv	a0,a5
1c00a11c:	86ea                	mv	a3,s10
1c00a11e:	4621                	li	a2,8
1c00a120:	40f50433          	sub	s0,a0,a5
1c00a124:	fd0ff0ef          	jal	ra,1c0098f4 <_to_x>
1c00a128:	9522                	add	a0,a0,s0
1c00a12a:	4401                	li	s0,0
1c00a12c:	c9fd27e3          	p.beqimm	s10,-1,1c009dba <_prf+0x3d6>
1c00a130:	02000793          	li	a5,32
1c00a134:	c63e                	sw	a5,12(sp)
1c00a136:	b151                	j	1c009dba <_prf+0x3d6>
1c00a138:	000c2583          	lw	a1,0(s8)
1c00a13c:	77e1                	lui	a5,0xffff8
1c00a13e:	8307c793          	xori	a5,a5,-2000
1c00a142:	46a1                	li	a3,8
1c00a144:	4641                	li	a2,16
1c00a146:	04610513          	addi	a0,sp,70
1c00a14a:	04f11223          	sh	a5,68(sp)
1c00a14e:	fa6ff0ef          	jal	ra,1c0098f4 <_to_x>
1c00a152:	004c0a13          	addi	s4,s8,4
1c00a156:	0509                	addi	a0,a0,2
1c00a158:	4401                	li	s0,0
1c00a15a:	be6d                	j	1c009d14 <_prf+0x330>
1c00a15c:	000d4463          	bltz	s10,1c00a164 <_prf+0x780>
1c00a160:	05acccb3          	p.min	s9,s9,s10
1c00a164:	900c8fe3          	beqz	s9,1c009a82 <_prf+0x9e>
1c00a168:	8666                	mv	a2,s9
1c00a16a:	00c8                	addi	a0,sp,68
1c00a16c:	c3cff0ef          	jal	ra,1c0095a8 <memcpy>
1c00a170:	be85                	j	1c009ce0 <_prf+0x2fc>
1c00a172:	000c2583          	lw	a1,0(s8)
1c00a176:	86ea                	mv	a3,s10
1c00a178:	4629                	li	a2,10
1c00a17a:	00c8                	addi	a0,sp,68
1c00a17c:	004c0a13          	addi	s4,s8,4
1c00a180:	f74ff0ef          	jal	ra,1c0098f4 <_to_x>
1c00a184:	b75d                	j	1c00a12a <_prf+0x746>
1c00a186:	f9f78613          	addi	a2,a5,-97 # ffff7f9f <pulp__FC+0xffff7fa0>
1c00a18a:	0ff67613          	andi	a2,a2,255
1c00a18e:	aac5e4e3          	bltu	a1,a2,1c009c36 <_prf+0x252>
1c00a192:	1781                	addi	a5,a5,-32
1c00a194:	fef68fa3          	sb	a5,-1(a3)
1c00a198:	bc79                	j	1c009c36 <_prf+0x252>
1c00a19a:	45f2                	lw	a1,28(sp)
1c00a19c:	4762                	lw	a4,24(sp)
1c00a19e:	02500513          	li	a0,37
1c00a1a2:	9702                	jalr	a4
1c00a1a4:	89f52ee3          	p.beqimm	a0,-1,1c009a40 <_prf+0x5c>
1c00a1a8:	0905                	addi	s2,s2,1
1c00a1aa:	8a62                	mv	s4,s8
1c00a1ac:	b8d9                	j	1c009a82 <_prf+0x9e>
1c00a1ae:	02000793          	li	a5,32
1c00a1b2:	c63e                	sw	a5,12(sp)
1c00a1b4:	bf3d                	j	1c00a0f2 <_prf+0x70e>
1c00a1b6:	4752                	lw	a4,20(sp)
1c00a1b8:	cf01                	beqz	a4,1c00a1d0 <_prf+0x7ec>
1c00a1ba:	019b8833          	add	a6,s7,s9
1c00a1be:	02000713          	li	a4,32
1c00a1c2:	417807b3          	sub	a5,a6,s7
1c00a1c6:	f337dbe3          	ble	s3,a5,1c00a0fc <_prf+0x718>
1c00a1ca:	00e800ab          	p.sb	a4,1(a6!)
1c00a1ce:	bfd5                	j	1c00a1c2 <_prf+0x7de>
1c00a1d0:	41998c33          	sub	s8,s3,s9
1c00a1d4:	001c8613          	addi	a2,s9,1
1c00a1d8:	85de                	mv	a1,s7
1c00a1da:	018b8533          	add	a0,s7,s8
1c00a1de:	c00ff0ef          	jal	ra,1c0095de <memmove>
1c00a1e2:	4732                	lw	a4,12(sp)
1c00a1e4:	02000793          	li	a5,32
1c00a1e8:	00f70363          	beq	a4,a5,1c00a1ee <_prf+0x80a>
1c00a1ec:	ca22                	sw	s0,20(sp)
1c00a1ee:	47d2                	lw	a5,20(sp)
1c00a1f0:	9c3e                	add	s8,s8,a5
1c00a1f2:	00fb8ab3          	add	s5,s7,a5
1c00a1f6:	417a87b3          	sub	a5,s5,s7
1c00a1fa:	f187d1e3          	ble	s8,a5,1c00a0fc <_prf+0x718>
1c00a1fe:	4732                	lw	a4,12(sp)
1c00a200:	00ea80ab          	p.sb	a4,1(s5!)
1c00a204:	bfcd                	j	1c00a1f6 <_prf+0x812>
1c00a206:	4442                	lw	s0,16(sp)
1c00a208:	be4d                	j	1c009dba <_prf+0x3d6>

1c00a20a <__rt_uart_wait_tx_done.isra.3>:
1c00a20a:	1a102737          	lui	a4,0x1a102
1c00a20e:	09870713          	addi	a4,a4,152 # 1a102098 <__rt_udma_callback_data+0x1a101da0>
1c00a212:	431c                	lw	a5,0(a4)
1c00a214:	8bc1                	andi	a5,a5,16
1c00a216:	eb95                	bnez	a5,1c00a24a <__rt_uart_wait_tx_done.isra.3+0x40>
1c00a218:	1a102737          	lui	a4,0x1a102
1c00a21c:	0a070713          	addi	a4,a4,160 # 1a1020a0 <__rt_udma_callback_data+0x1a101da8>
1c00a220:	431c                	lw	a5,0(a4)
1c00a222:	fc17b7b3          	p.bclr	a5,a5,30,1
1c00a226:	ffed                	bnez	a5,1c00a220 <__rt_uart_wait_tx_done.isra.3+0x16>
1c00a228:	1a10a7b7          	lui	a5,0x1a10a
1c00a22c:	81478593          	addi	a1,a5,-2028 # 1a109814 <__rt_udma_callback_data+0x1a10951c>
1c00a230:	80478613          	addi	a2,a5,-2044
1c00a234:	6691                	lui	a3,0x4
1c00a236:	80878793          	addi	a5,a5,-2040
1c00a23a:	032350fb          	lp.setupi	x1,50,1c00a246 <__rt_uart_wait_tx_done.isra.3+0x3c>
1c00a23e:	c194                	sw	a3,0(a1)
1c00a240:	c214                	sw	a3,0(a2)
1c00a242:	10500073          	wfi
1c00a246:	c394                	sw	a3,0(a5)
1c00a248:	8082                	ret
1c00a24a:	10500073          	wfi
1c00a24e:	b7d1                	j	1c00a212 <__rt_uart_wait_tx_done.isra.3+0x8>

1c00a250 <__rt_uart_setfreq_before>:
1c00a250:	1c0017b7          	lui	a5,0x1c001
1c00a254:	f1c7a783          	lw	a5,-228(a5) # 1c000f1c <__rt_uart>
1c00a258:	cf99                	beqz	a5,1c00a276 <__rt_uart_setfreq_before+0x26>
1c00a25a:	1141                	addi	sp,sp,-16
1c00a25c:	c606                	sw	ra,12(sp)
1c00a25e:	3775                	jal	1c00a20a <__rt_uart_wait_tx_done.isra.3>
1c00a260:	40b2                	lw	ra,12(sp)
1c00a262:	005007b7          	lui	a5,0x500
1c00a266:	1a102737          	lui	a4,0x1a102
1c00a26a:	0799                	addi	a5,a5,6
1c00a26c:	0af72223          	sw	a5,164(a4) # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a270:	4501                	li	a0,0
1c00a272:	0141                	addi	sp,sp,16
1c00a274:	8082                	ret
1c00a276:	4501                	li	a0,0
1c00a278:	8082                	ret

1c00a27a <__rt_uart_setup.isra.4>:
1c00a27a:	1c001737          	lui	a4,0x1c001
1c00a27e:	73472703          	lw	a4,1844(a4) # 1c001734 <__rt_freq_domains+0x4>
1c00a282:	00155793          	srli	a5,a0,0x1
1c00a286:	97ba                	add	a5,a5,a4
1c00a288:	02a7d7b3          	divu	a5,a5,a0
1c00a28c:	1a102737          	lui	a4,0x1a102
1c00a290:	17fd                	addi	a5,a5,-1
1c00a292:	07c2                	slli	a5,a5,0x10
1c00a294:	3067e793          	ori	a5,a5,774
1c00a298:	0af72223          	sw	a5,164(a4) # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a29c:	8082                	ret

1c00a29e <__rt_uart_setfreq_after>:
1c00a29e:	1c0017b7          	lui	a5,0x1c001
1c00a2a2:	f1c78793          	addi	a5,a5,-228 # 1c000f1c <__rt_uart>
1c00a2a6:	4398                	lw	a4,0(a5)
1c00a2a8:	cb09                	beqz	a4,1c00a2ba <__rt_uart_setfreq_after+0x1c>
1c00a2aa:	4788                	lw	a0,8(a5)
1c00a2ac:	1141                	addi	sp,sp,-16
1c00a2ae:	c606                	sw	ra,12(sp)
1c00a2b0:	37e9                	jal	1c00a27a <__rt_uart_setup.isra.4>
1c00a2b2:	40b2                	lw	ra,12(sp)
1c00a2b4:	4501                	li	a0,0
1c00a2b6:	0141                	addi	sp,sp,16
1c00a2b8:	8082                	ret
1c00a2ba:	4501                	li	a0,0
1c00a2bc:	8082                	ret

1c00a2be <soc_eu_fcEventMask_setEvent>:
1c00a2be:	02000793          	li	a5,32
1c00a2c2:	02f54733          	div	a4,a0,a5
1c00a2c6:	1a1066b7          	lui	a3,0x1a106
1c00a2ca:	0691                	addi	a3,a3,4
1c00a2cc:	02f56533          	rem	a0,a0,a5
1c00a2d0:	070a                	slli	a4,a4,0x2
1c00a2d2:	9736                	add	a4,a4,a3
1c00a2d4:	4314                	lw	a3,0(a4)
1c00a2d6:	4785                	li	a5,1
1c00a2d8:	00a797b3          	sll	a5,a5,a0
1c00a2dc:	fff7c793          	not	a5,a5
1c00a2e0:	8ff5                	and	a5,a5,a3
1c00a2e2:	c31c                	sw	a5,0(a4)
1c00a2e4:	8082                	ret

1c00a2e6 <rt_uart_conf_init>:
1c00a2e6:	000997b7          	lui	a5,0x99
1c00a2ea:	96878793          	addi	a5,a5,-1688 # 98968 <__rt_udma_callback_data+0x98670>
1c00a2ee:	c11c                	sw	a5,0(a0)
1c00a2f0:	57fd                	li	a5,-1
1c00a2f2:	c15c                	sw	a5,4(a0)
1c00a2f4:	8082                	ret

1c00a2f6 <__rt_uart_open>:
1c00a2f6:	1141                	addi	sp,sp,-16
1c00a2f8:	c606                	sw	ra,12(sp)
1c00a2fa:	c422                	sw	s0,8(sp)
1c00a2fc:	c226                	sw	s1,4(sp)
1c00a2fe:	c04a                	sw	s2,0(sp)
1c00a300:	30047973          	csrrci	s2,mstatus,8
1c00a304:	cd85                	beqz	a1,1c00a33c <__rt_uart_open+0x46>
1c00a306:	4198                	lw	a4,0(a1)
1c00a308:	1c0017b7          	lui	a5,0x1c001
1c00a30c:	f1c78413          	addi	s0,a5,-228 # 1c000f1c <__rt_uart>
1c00a310:	00451613          	slli	a2,a0,0x4
1c00a314:	9432                	add	s0,s0,a2
1c00a316:	4014                	lw	a3,0(s0)
1c00a318:	f1c78793          	addi	a5,a5,-228
1c00a31c:	c68d                	beqz	a3,1c00a346 <__rt_uart_open+0x50>
1c00a31e:	c589                	beqz	a1,1c00a328 <__rt_uart_open+0x32>
1c00a320:	418c                	lw	a1,0(a1)
1c00a322:	4418                	lw	a4,8(s0)
1c00a324:	04e59863          	bne	a1,a4,1c00a374 <__rt_uart_open+0x7e>
1c00a328:	0685                	addi	a3,a3,1
1c00a32a:	00d7e623          	p.sw	a3,a2(a5)
1c00a32e:	8522                	mv	a0,s0
1c00a330:	40b2                	lw	ra,12(sp)
1c00a332:	4422                	lw	s0,8(sp)
1c00a334:	4492                	lw	s1,4(sp)
1c00a336:	4902                	lw	s2,0(sp)
1c00a338:	0141                	addi	sp,sp,16
1c00a33a:	8082                	ret
1c00a33c:	00099737          	lui	a4,0x99
1c00a340:	96870713          	addi	a4,a4,-1688 # 98968 <__rt_udma_callback_data+0x98670>
1c00a344:	b7d1                	j	1c00a308 <__rt_uart_open+0x12>
1c00a346:	4785                	li	a5,1
1c00a348:	c01c                	sw	a5,0(s0)
1c00a34a:	c418                	sw	a4,8(s0)
1c00a34c:	c048                	sw	a0,4(s0)
1c00a34e:	1a102737          	lui	a4,0x1a102
1c00a352:	4314                	lw	a3,0(a4)
1c00a354:	00a797b3          	sll	a5,a5,a0
1c00a358:	00251493          	slli	s1,a0,0x2
1c00a35c:	8fd5                	or	a5,a5,a3
1c00a35e:	c31c                	sw	a5,0(a4)
1c00a360:	8526                	mv	a0,s1
1c00a362:	3fb1                	jal	1c00a2be <soc_eu_fcEventMask_setEvent>
1c00a364:	00148513          	addi	a0,s1,1
1c00a368:	3f99                	jal	1c00a2be <soc_eu_fcEventMask_setEvent>
1c00a36a:	4408                	lw	a0,8(s0)
1c00a36c:	3739                	jal	1c00a27a <__rt_uart_setup.isra.4>
1c00a36e:	30091073          	csrw	mstatus,s2
1c00a372:	bf75                	j	1c00a32e <__rt_uart_open+0x38>
1c00a374:	4401                	li	s0,0
1c00a376:	bf65                	j	1c00a32e <__rt_uart_open+0x38>

1c00a378 <rt_uart_close>:
1c00a378:	1141                	addi	sp,sp,-16
1c00a37a:	c606                	sw	ra,12(sp)
1c00a37c:	c422                	sw	s0,8(sp)
1c00a37e:	c226                	sw	s1,4(sp)
1c00a380:	300474f3          	csrrci	s1,mstatus,8
1c00a384:	411c                	lw	a5,0(a0)
1c00a386:	17fd                	addi	a5,a5,-1
1c00a388:	c11c                	sw	a5,0(a0)
1c00a38a:	e785                	bnez	a5,1c00a3b2 <rt_uart_close+0x3a>
1c00a38c:	842a                	mv	s0,a0
1c00a38e:	3db5                	jal	1c00a20a <__rt_uart_wait_tx_done.isra.3>
1c00a390:	1a102737          	lui	a4,0x1a102
1c00a394:	005007b7          	lui	a5,0x500
1c00a398:	0a470693          	addi	a3,a4,164 # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a39c:	0799                	addi	a5,a5,6
1c00a39e:	c29c                	sw	a5,0(a3)
1c00a3a0:	4050                	lw	a2,4(s0)
1c00a3a2:	4314                	lw	a3,0(a4)
1c00a3a4:	4785                	li	a5,1
1c00a3a6:	00c797b3          	sll	a5,a5,a2
1c00a3aa:	fff7c793          	not	a5,a5
1c00a3ae:	8ff5                	and	a5,a5,a3
1c00a3b0:	c31c                	sw	a5,0(a4)
1c00a3b2:	30049073          	csrw	mstatus,s1
1c00a3b6:	40b2                	lw	ra,12(sp)
1c00a3b8:	4422                	lw	s0,8(sp)
1c00a3ba:	4492                	lw	s1,4(sp)
1c00a3bc:	0141                	addi	sp,sp,16
1c00a3be:	8082                	ret

1c00a3c0 <__rt_uart_init>:
1c00a3c0:	1c00a5b7          	lui	a1,0x1c00a
1c00a3c4:	1141                	addi	sp,sp,-16
1c00a3c6:	4601                	li	a2,0
1c00a3c8:	25058593          	addi	a1,a1,592 # 1c00a250 <__rt_uart_setfreq_before>
1c00a3cc:	4511                	li	a0,4
1c00a3ce:	c606                	sw	ra,12(sp)
1c00a3d0:	c422                	sw	s0,8(sp)
1c00a3d2:	daafe0ef          	jal	ra,1c00897c <__rt_cbsys_add>
1c00a3d6:	1c00a5b7          	lui	a1,0x1c00a
1c00a3da:	842a                	mv	s0,a0
1c00a3dc:	4601                	li	a2,0
1c00a3de:	29e58593          	addi	a1,a1,670 # 1c00a29e <__rt_uart_setfreq_after>
1c00a3e2:	4515                	li	a0,5
1c00a3e4:	d98fe0ef          	jal	ra,1c00897c <__rt_cbsys_add>
1c00a3e8:	1c0017b7          	lui	a5,0x1c001
1c00a3ec:	f007ae23          	sw	zero,-228(a5) # 1c000f1c <__rt_uart>
1c00a3f0:	8d41                	or	a0,a0,s0
1c00a3f2:	c10d                	beqz	a0,1c00a414 <__rt_uart_init+0x54>
1c00a3f4:	f1402673          	csrr	a2,mhartid
1c00a3f8:	1c000537          	lui	a0,0x1c000
1c00a3fc:	40565593          	srai	a1,a2,0x5
1c00a400:	f265b5b3          	p.bclr	a1,a1,25,6
1c00a404:	f4563633          	p.bclr	a2,a2,26,5
1c00a408:	53450513          	addi	a0,a0,1332 # 1c000534 <__DTOR_END__+0x1dc>
1c00a40c:	cbeff0ef          	jal	ra,1c0098ca <printf>
1c00a410:	c26ff0ef          	jal	ra,1c009836 <abort>
1c00a414:	40b2                	lw	ra,12(sp)
1c00a416:	4422                	lw	s0,8(sp)
1c00a418:	0141                	addi	sp,sp,16
1c00a41a:	8082                	ret
