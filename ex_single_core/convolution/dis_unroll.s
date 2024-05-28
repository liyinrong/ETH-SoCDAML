/home/soc_master/ex_single_core/2024/v1.0.16-pulp-riscv-gcc-centos-7/bin/riscv32-unknown-elf-objdump -Mmarch=rv32imfcxpulpv2 /home/soc_12fs24/ex01_socdaml/convolution/build/pulpissimo/convolution/convolution -d

/home/soc_12fs24/ex01_socdaml/convolution/build/pulpissimo/convolution/convolution:     file format elf32-littleriscv


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
1c008090:	1208                	addi	a0,sp,288
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
1c0080a8:	23c28293          	addi	t0,t0,572 # 1c0012e0 <_edata>
1c0080ac:	ffff9317          	auipc	t1,0xffff9
1c0080b0:	31430313          	addi	t1,t1,788 # 1c0013c0 <__l2_priv0_end>
1c0080b4:	0002a023          	sw	zero,0(t0)
1c0080b8:	0291                	addi	t0,t0,4
1c0080ba:	fe62ede3          	bltu	t0,t1,1c0080b4 <_entry+0x14>
1c0080be:	ffff9117          	auipc	sp,0xffff9
1c0080c2:	ce210113          	addi	sp,sp,-798 # 1c000da0 <stack>
1c0080c6:	0b3000ef          	jal	ra,1c008978 <__rt_init>
1c0080ca:	00000513          	li	a0,0
1c0080ce:	00000593          	li	a1,0
1c0080d2:	00000397          	auipc	t2,0x0
1c0080d6:	3bc38393          	addi	t2,t2,956 # 1c00848e <main>
1c0080da:	000380e7          	jalr	t2
1c0080de:	842a                	mv	s0,a0
1c0080e0:	16f000ef          	jal	ra,1c008a4e <__rt_deinit>
1c0080e4:	8522                	mv	a0,s0
1c0080e6:	08b010ef          	jal	ra,1c009970 <exit>

1c0080ea <_fini>:
1c0080ea:	8082                	ret

1c0080ec <__rt_illegal_instr>:
1c0080ec:	fe112e23          	sw	ra,-4(sp)
1c0080f0:	fea12c23          	sw	a0,-8(sp)
1c0080f4:	00001517          	auipc	a0,0x1
1c0080f8:	9d850513          	addi	a0,a0,-1576 # 1c008acc <__rt_handle_illegal_instr>
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
1c0082d0:	9d060613          	addi	a2,a2,-1584 # 1c008c9c <__rt_bridge_handle_notif>
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

1c008336 <InitZero>:
1c008336:	00b05c63          	blez	a1,1c00834e <InitZero+0x18>
1c00833a:	00159793          	slli	a5,a1,0x1
1c00833e:	17f9                	addi	a5,a5,-2
1c008340:	8385                	srli	a5,a5,0x1
1c008342:	0785                	addi	a5,a5,1
1c008344:	0047c0fb          	lp.setup	x1,a5,1c00834c <InitZero+0x16>
1c008348:	0005112b          	p.sh	zero,2(a0!)
1c00834c:	0001                	nop
1c00834e:	8082                	ret

1c008350 <checkresult>:
1c008350:	1101                	addi	sp,sp,-32
1c008352:	ce06                	sw	ra,28(sp)
1c008354:	cc22                	sw	s0,24(sp)
1c008356:	ca26                	sw	s1,20(sp)
1c008358:	c84a                	sw	s2,16(sp)
1c00835a:	c64e                	sw	s3,12(sp)
1c00835c:	c452                	sw	s4,8(sp)
1c00835e:	c256                	sw	s5,4(sp)
1c008360:	04c05663          	blez	a2,1c0083ac <checkresult+0x5c>
1c008364:	00161993          	slli	s3,a2,0x1
1c008368:	842a                	mv	s0,a0
1c00836a:	892e                	mv	s2,a1
1c00836c:	99aa                	add	s3,s3,a0
1c00836e:	4a01                	li	s4,0
1c008370:	4481                	li	s1,0
1c008372:	1c000ab7          	lui	s5,0x1c000
1c008376:	0024170b          	p.lh	a4,2(s0!)
1c00837a:	0029178b          	p.lh	a5,2(s2!)
1c00837e:	85a6                	mv	a1,s1
1c008380:	863a                	mv	a2,a4
1c008382:	86be                	mv	a3,a5
1c008384:	40ca8513          	addi	a0,s5,1036 # 1c00040c <__DTOR_END__+0xb4>
1c008388:	00f70563          	beq	a4,a5,1c008392 <checkresult+0x42>
1c00838c:	6e4010ef          	jal	ra,1c009a70 <printf>
1c008390:	0a05                	addi	s4,s4,1
1c008392:	0485                	addi	s1,s1,1
1c008394:	ff3411e3          	bne	s0,s3,1c008376 <checkresult+0x26>
1c008398:	40f2                	lw	ra,28(sp)
1c00839a:	4462                	lw	s0,24(sp)
1c00839c:	8552                	mv	a0,s4
1c00839e:	44d2                	lw	s1,20(sp)
1c0083a0:	4942                	lw	s2,16(sp)
1c0083a2:	49b2                	lw	s3,12(sp)
1c0083a4:	4a22                	lw	s4,8(sp)
1c0083a6:	4a92                	lw	s5,4(sp)
1c0083a8:	6105                	addi	sp,sp,32
1c0083aa:	8082                	ret
1c0083ac:	4a01                	li	s4,0
1c0083ae:	b7ed                	j	1c008398 <checkresult+0x48>

1c0083b0 <check_Conv5x5_Scalar>:
1c0083b0:	1c000537          	lui	a0,0x1c000
1c0083b4:	1141                	addi	sp,sp,-16
1c0083b6:	4639                	li	a2,14
1c0083b8:	4595                	li	a1,5
1c0083ba:	35850513          	addi	a0,a0,856 # 1c000358 <__DTOR_END__>
1c0083be:	c606                	sw	ra,12(sp)
1c0083c0:	c422                	sw	s0,8(sp)
1c0083c2:	c226                	sw	s1,4(sp)
1c0083c4:	6ac010ef          	jal	ra,1c009a70 <printf>
1c0083c8:	1c0104b7          	lui	s1,0x1c010
1c0083cc:	10000593          	li	a1,256
1c0083d0:	00048513          	mv	a0,s1
1c0083d4:	378d                	jal	1c008336 <InitZero>
1c0083d6:	04c00593          	li	a1,76
1c0083da:	4509                	li	a0,2
1c0083dc:	2621                	jal	1c0086e4 <rt_alloc>
1c0083de:	842a                	mv	s0,a0
1c0083e0:	2e55                	jal	1c008794 <rt_perf_init>
1c0083e2:	45fd                	li	a1,31
1c0083e4:	8522                	mv	a0,s0
1c0083e6:	2e75                	jal	1c0087a2 <rt_perf_conf>
1c0083e8:	477d                	li	a4,31
1c0083ea:	f14027f3          	csrr	a5,mhartid
1c0083ee:	ca5797b3          	p.extractu	a5,a5,5,5
1c0083f2:	00e79a63          	bne	a5,a4,1c008406 <check_Conv5x5_Scalar+0x56>
1c0083f6:	4785                	li	a5,1
1c0083f8:	1a10b737          	lui	a4,0x1a10b
1c0083fc:	02f72023          	sw	a5,32(a4) # 1a10b020 <__rt_udma_callback_data+0x1a10ad28>
1c008400:	4781                	li	a5,0
1c008402:	79f79073          	csrw	pccr31,a5
1c008406:	f14027f3          	csrr	a5,mhartid
1c00840a:	477d                	li	a4,31
1c00840c:	ca5797b3          	p.extractu	a5,a5,5,5
1c008410:	00e79a63          	bne	a5,a4,1c008424 <check_Conv5x5_Scalar+0x74>
1c008414:	4785                	li	a5,1
1c008416:	1a10b737          	lui	a4,0x1a10b
1c00841a:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__rt_udma_callback_data+0x1a10ad20>
1c00841e:	478d                	li	a5,3
1c008420:	cc179073          	csrw	0xcc1,a5
1c008424:	1c001737          	lui	a4,0x1c001
1c008428:	1c001537          	lui	a0,0x1c001
1c00842c:	dd470713          	addi	a4,a4,-556 # 1c000dd4 <Filter_Kern>
1c008430:	46c1                	li	a3,16
1c008432:	4641                	li	a2,16
1c008434:	00048593          	mv	a1,s1
1c008438:	00850513          	addi	a0,a0,8 # 1c001008 <In_Img>
1c00843c:	2085                	jal	1c00849c <Conv5x5_Scalar>
1c00843e:	477d                	li	a4,31
1c008440:	f14027f3          	csrr	a5,mhartid
1c008444:	ca5797b3          	p.extractu	a5,a5,5,5
1c008448:	00e79963          	bne	a5,a4,1c00845a <check_Conv5x5_Scalar+0xaa>
1c00844c:	1a10b7b7          	lui	a5,0x1a10b
1c008450:	0007a023          	sw	zero,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c008454:	4781                	li	a5,0
1c008456:	cc179073          	csrw	0xcc1,a5
1c00845a:	8522                	mv	a0,s0
1c00845c:	26b9                	jal	1c0087aa <rt_perf_save>
1c00845e:	4410                	lw	a2,8(s0)
1c008460:	404c                	lw	a1,4(s0)
1c008462:	485c                	lw	a5,20(s0)
1c008464:	4818                	lw	a4,16(s0)
1c008466:	4454                	lw	a3,12(s0)
1c008468:	1c000537          	lui	a0,0x1c000
1c00846c:	38450513          	addi	a0,a0,900 # 1c000384 <__DTOR_END__+0x2c>
1c008470:	600010ef          	jal	ra,1c009a70 <printf>
1c008474:	4422                	lw	s0,8(sp)
1c008476:	40b2                	lw	ra,12(sp)
1c008478:	00048513          	mv	a0,s1
1c00847c:	4492                	lw	s1,4(sp)
1c00847e:	1c0015b7          	lui	a1,0x1c001
1c008482:	10000613          	li	a2,256
1c008486:	e0858593          	addi	a1,a1,-504 # 1c000e08 <Gold_Out_Img>
1c00848a:	0141                	addi	sp,sp,16
1c00848c:	b5d1                	j	1c008350 <checkresult>

1c00848e <main>:
1c00848e:	1141                	addi	sp,sp,-16
1c008490:	c606                	sw	ra,12(sp)
1c008492:	3f39                	jal	1c0083b0 <check_Conv5x5_Scalar>
1c008494:	40b2                	lw	ra,12(sp)
1c008496:	4501                	li	a0,0
1c008498:	0141                	addi	sp,sp,16
1c00849a:	8082                	ret

1c00849c <Conv5x5_Scalar>:
1c00849c:	4791                	li	a5,4
1c00849e:	1cc7de63          	ble	a2,a5,1c00867a <Conv5x5_Scalar+0x1de>
1c0084a2:	7139                	addi	sp,sp,-64
1c0084a4:	8d89                	sub	a1,a1,a0
1c0084a6:	d05e                	sw	s7,32(sp)
1c0084a8:	00169b93          	slli	s7,a3,0x1
1c0084ac:	d25a                	sw	s6,36(sp)
1c0084ae:	ce62                	sw	s8,28(sp)
1c0084b0:	40d00b33          	neg	s6,a3
1c0084b4:	00db8c33          	add	s8,s7,a3
1c0084b8:	95de                	add	a1,a1,s7
1c0084ba:	cc66                	sw	s9,24(sp)
1c0084bc:	1561                	addi	a0,a0,-8
1c0084be:	0b06                	slli	s6,s6,0x1
1c0084c0:	00269c93          	slli	s9,a3,0x2
1c0084c4:	0c06                	slli	s8,s8,0x1
1c0084c6:	05b1                	addi	a1,a1,12
1c0084c8:	d84e                	sw	s3,48(sp)
1c0084ca:	d652                	sw	s4,44(sp)
1c0084cc:	d456                	sw	s5,40(sp)
1c0084ce:	ca6a                	sw	s10,20(sp)
1c0084d0:	c86e                	sw	s11,16(sp)
1c0084d2:	de22                	sw	s0,60(sp)
1c0084d4:	dc26                	sw	s1,56(sp)
1c0084d6:	da4a                	sw	s2,52(sp)
1c0084d8:	017509b3          	add	s3,a0,s7
1c0084dc:	4d11                	li	s10,4
1c0084de:	0b21                	addi	s6,s6,8
1c0084e0:	008b8d93          	addi	s11,s7,8
1c0084e4:	0ca1                	addi	s9,s9,8
1c0084e6:	0c21                	addi	s8,s8,8
1c0084e8:	c62e                	sw	a1,12(sp)
1c0084ea:	6a05                	lui	s4,0x1
1c0084ec:	ffc60a93          	addi	s5,a2,-4
1c0084f0:	0b6ac07b          	lp.setup	x0,s5,1c00865c <Conv5x5_Scalar+0x1c0>
1c0084f4:	16dd5363          	ble	a3,s10,1c00865a <Conv5x5_Scalar+0x1be>
1c0084f8:	013b0633          	add	a2,s6,s3
1c0084fc:	40c98333          	sub	t1,s3,a2
1c008500:	43b2                	lw	t2,12(sp)
1c008502:	1379                	addi	t1,t1,-2
1c008504:	00135313          	srli	t1,t1,0x1
1c008508:	00898893          	addi	a7,s3,8
1c00850c:	013d8833          	add	a6,s11,s3
1c008510:	013c8533          	add	a0,s9,s3
1c008514:	013c05b3          	add	a1,s8,s3
1c008518:	01338e33          	add	t3,t2,s3
1c00851c:	0305                	addi	t1,t1,1
1c00851e:	09c340fb          	lp.setup	x1,t1,1c008656 <Conv5x5_Scalar+0x1ba>
1c008522:	0026178b          	p.lh	a5,2(a2!)
1c008526:	00075f03          	lhu	t5,0(a4)
1c00852a:	00275e83          	lhu	t4,2(a4)
1c00852e:	00065903          	lhu	s2,0(a2)
1c008532:	80ff07db          	p.muls	a5,t5,a5
1c008536:	00265483          	lhu	s1,2(a2)
1c00853a:	00475403          	lhu	s0,4(a4)
1c00853e:	00465383          	lhu	t2,4(a2)
1c008542:	00675283          	lhu	t0,6(a4)
1c008546:	00289f0b          	p.lh	t5,2(a7!)
1c00854a:	00a71f83          	lh	t6,10(a4)
1c00854e:	81d917db          	p.macs	a5,s2,t4
1c008552:	00281e8b          	p.lh	t4,2(a6!)
1c008556:	01471903          	lh	s2,20(a4)
1c00855a:	808497db          	p.macs	a5,s1,s0
1c00855e:	00665483          	lhu	s1,6(a2)
1c008562:	0025140b          	p.lh	s0,2(a0!)
1c008566:	805397db          	p.macs	a5,t2,t0
1c00856a:	00875383          	lhu	t2,8(a4)
1c00856e:	01e71283          	lh	t0,30(a4)
1c008572:	807497db          	p.macs	a5,s1,t2
1c008576:	0025938b          	p.lh	t2,2(a1!)
1c00857a:	02871483          	lh	s1,40(a4)
1c00857e:	43ef87b3          	p.mac	a5,t6,t5
1c008582:	0008df03          	lhu	t5,0(a7)
1c008586:	00c75f83          	lhu	t6,12(a4)
1c00858a:	81ff17db          	p.macs	a5,t5,t6
1c00858e:	0028df03          	lhu	t5,2(a7)
1c008592:	00e75f83          	lhu	t6,14(a4)
1c008596:	81ff17db          	p.macs	a5,t5,t6
1c00859a:	0048df03          	lhu	t5,4(a7)
1c00859e:	01075f83          	lhu	t6,16(a4)
1c0085a2:	81ff17db          	p.macs	a5,t5,t6
1c0085a6:	0068df03          	lhu	t5,6(a7)
1c0085aa:	01275f83          	lhu	t6,18(a4)
1c0085ae:	81ff17db          	p.macs	a5,t5,t6
1c0085b2:	01675f03          	lhu	t5,22(a4)
1c0085b6:	00285f83          	lhu	t6,2(a6)
1c0085ba:	43d907b3          	p.mac	a5,s2,t4
1c0085be:	00085e83          	lhu	t4,0(a6)
1c0085c2:	81ee97db          	p.macs	a5,t4,t5
1c0085c6:	01875e83          	lhu	t4,24(a4)
1c0085ca:	00485f03          	lhu	t5,4(a6)
1c0085ce:	81df97db          	p.macs	a5,t6,t4
1c0085d2:	01a75f83          	lhu	t6,26(a4)
1c0085d6:	00685e83          	lhu	t4,6(a6)
1c0085da:	81ff17db          	p.macs	a5,t5,t6
1c0085de:	01c75f03          	lhu	t5,28(a4)
1c0085e2:	00055f83          	lhu	t6,0(a0)
1c0085e6:	81ee97db          	p.macs	a5,t4,t5
1c0085ea:	02075e83          	lhu	t4,32(a4)
1c0085ee:	00255f03          	lhu	t5,2(a0)
1c0085f2:	428287b3          	p.mac	a5,t0,s0
1c0085f6:	81df97db          	p.macs	a5,t6,t4
1c0085fa:	02275f83          	lhu	t6,34(a4)
1c0085fe:	00455e83          	lhu	t4,4(a0)
1c008602:	81ff17db          	p.macs	a5,t5,t6
1c008606:	02475f03          	lhu	t5,36(a4)
1c00860a:	00655f83          	lhu	t6,6(a0)
1c00860e:	81ee97db          	p.macs	a5,t4,t5
1c008612:	02675e83          	lhu	t4,38(a4)
1c008616:	0005df03          	lhu	t5,0(a1)
1c00861a:	81df97db          	p.macs	a5,t6,t4
1c00861e:	02a75f83          	lhu	t6,42(a4)
1c008622:	0045de83          	lhu	t4,4(a1)
1c008626:	427487b3          	p.mac	a5,s1,t2
1c00862a:	0025d383          	lhu	t2,2(a1)
1c00862e:	02c75483          	lhu	s1,44(a4)
1c008632:	81ff17db          	p.macs	a5,t5,t6
1c008636:	02e75f03          	lhu	t5,46(a4)
1c00863a:	0065df83          	lhu	t6,6(a1)
1c00863e:	809397db          	p.macs	a5,t2,s1
1c008642:	03075383          	lhu	t2,48(a4)
1c008646:	81ee97db          	p.macs	a5,t4,t5
1c00864a:	807f97db          	p.macs	a5,t6,t2
1c00864e:	1b47a7db          	p.addn	a5,a5,s4,13
1c008652:	14e7a7b3          	p.clipu	a5,a5,14
1c008656:	00fe112b          	p.sh	a5,2(t3!)
1c00865a:	99de                	add	s3,s3,s7
1c00865c:	0001                	nop
1c00865e:	5472                	lw	s0,60(sp)
1c008660:	54e2                	lw	s1,56(sp)
1c008662:	5952                	lw	s2,52(sp)
1c008664:	59c2                	lw	s3,48(sp)
1c008666:	5a32                	lw	s4,44(sp)
1c008668:	5aa2                	lw	s5,40(sp)
1c00866a:	5b12                	lw	s6,36(sp)
1c00866c:	5b82                	lw	s7,32(sp)
1c00866e:	4c72                	lw	s8,28(sp)
1c008670:	4ce2                	lw	s9,24(sp)
1c008672:	4d52                	lw	s10,20(sp)
1c008674:	4dc2                	lw	s11,16(sp)
1c008676:	6121                	addi	sp,sp,64
1c008678:	8082                	ret
1c00867a:	8082                	ret

1c00867c <rt_user_alloc_init>:
1c00867c:	00758793          	addi	a5,a1,7
1c008680:	c407b7b3          	p.bclr	a5,a5,2,0
1c008684:	40b785b3          	sub	a1,a5,a1
1c008688:	c11c                	sw	a5,0(a0)
1c00868a:	8e0d                	sub	a2,a2,a1
1c00868c:	00c05763          	blez	a2,1c00869a <rt_user_alloc_init+0x1e>
1c008690:	c4063633          	p.bclr	a2,a2,2,0
1c008694:	c390                	sw	a2,0(a5)
1c008696:	0007a223          	sw	zero,4(a5)
1c00869a:	8082                	ret

1c00869c <rt_user_alloc>:
1c00869c:	411c                	lw	a5,0(a0)
1c00869e:	059d                	addi	a1,a1,7
1c0086a0:	c405b5b3          	p.bclr	a1,a1,2,0
1c0086a4:	4701                	li	a4,0
1c0086a6:	cb89                	beqz	a5,1c0086b8 <rt_user_alloc+0x1c>
1c0086a8:	4394                	lw	a3,0(a5)
1c0086aa:	43d0                	lw	a2,4(a5)
1c0086ac:	00b6c863          	blt	a3,a1,1c0086bc <rt_user_alloc+0x20>
1c0086b0:	00b69b63          	bne	a3,a1,1c0086c6 <rt_user_alloc+0x2a>
1c0086b4:	c719                	beqz	a4,1c0086c2 <rt_user_alloc+0x26>
1c0086b6:	c350                	sw	a2,4(a4)
1c0086b8:	853e                	mv	a0,a5
1c0086ba:	8082                	ret
1c0086bc:	873e                	mv	a4,a5
1c0086be:	87b2                	mv	a5,a2
1c0086c0:	b7dd                	j	1c0086a6 <rt_user_alloc+0xa>
1c0086c2:	c110                	sw	a2,0(a0)
1c0086c4:	bfd5                	j	1c0086b8 <rt_user_alloc+0x1c>
1c0086c6:	00b78833          	add	a6,a5,a1
1c0086ca:	40b685b3          	sub	a1,a3,a1
1c0086ce:	00b82023          	sw	a1,0(a6)
1c0086d2:	00c82223          	sw	a2,4(a6)
1c0086d6:	c701                	beqz	a4,1c0086de <rt_user_alloc+0x42>
1c0086d8:	01072223          	sw	a6,4(a4)
1c0086dc:	bff1                	j	1c0086b8 <rt_user_alloc+0x1c>
1c0086de:	01052023          	sw	a6,0(a0)
1c0086e2:	bfd9                	j	1c0086b8 <rt_user_alloc+0x1c>

1c0086e4 <rt_alloc>:
1c0086e4:	1101                	addi	sp,sp,-32
1c0086e6:	c84a                	sw	s2,16(sp)
1c0086e8:	1c001937          	lui	s2,0x1c001
1c0086ec:	cc22                	sw	s0,24(sp)
1c0086ee:	ca26                	sw	s1,20(sp)
1c0086f0:	c64e                	sw	s3,12(sp)
1c0086f2:	ce06                	sw	ra,28(sp)
1c0086f4:	842a                	mv	s0,a0
1c0086f6:	89ae                	mv	s3,a1
1c0086f8:	448d                	li	s1,3
1c0086fa:	3a090913          	addi	s2,s2,928 # 1c0013a0 <__rt_alloc_l2>
1c0086fe:	00241513          	slli	a0,s0,0x2
1c008702:	85ce                	mv	a1,s3
1c008704:	954a                	add	a0,a0,s2
1c008706:	3f59                	jal	1c00869c <rt_user_alloc>
1c008708:	e519                	bnez	a0,1c008716 <rt_alloc+0x32>
1c00870a:	0405                	addi	s0,s0,1
1c00870c:	00343363          	p.bneimm	s0,3,1c008712 <rt_alloc+0x2e>
1c008710:	4401                	li	s0,0
1c008712:	14fd                	addi	s1,s1,-1
1c008714:	f4ed                	bnez	s1,1c0086fe <rt_alloc+0x1a>
1c008716:	40f2                	lw	ra,28(sp)
1c008718:	4462                	lw	s0,24(sp)
1c00871a:	44d2                	lw	s1,20(sp)
1c00871c:	4942                	lw	s2,16(sp)
1c00871e:	49b2                	lw	s3,12(sp)
1c008720:	6105                	addi	sp,sp,32
1c008722:	8082                	ret

1c008724 <__rt_allocs_init>:
1c008724:	1141                	addi	sp,sp,-16
1c008726:	1c0015b7          	lui	a1,0x1c001
1c00872a:	c606                	sw	ra,12(sp)
1c00872c:	3c058793          	addi	a5,a1,960 # 1c0013c0 <__l2_priv0_end>
1c008730:	1c008637          	lui	a2,0x1c008
1c008734:	04c7c863          	blt	a5,a2,1c008784 <__rt_allocs_init+0x60>
1c008738:	4581                	li	a1,0
1c00873a:	4601                	li	a2,0
1c00873c:	1c001537          	lui	a0,0x1c001
1c008740:	3a050513          	addi	a0,a0,928 # 1c0013a0 <__rt_alloc_l2>
1c008744:	3f25                	jal	1c00867c <rt_user_alloc_init>
1c008746:	1c00a5b7          	lui	a1,0x1c00a
1c00874a:	5c458793          	addi	a5,a1,1476 # 1c00a5c4 <__l2_priv1_end>
1c00874e:	1c010637          	lui	a2,0x1c010
1c008752:	02c7cd63          	blt	a5,a2,1c00878c <__rt_allocs_init+0x68>
1c008756:	4581                	li	a1,0
1c008758:	4601                	li	a2,0
1c00875a:	1c001537          	lui	a0,0x1c001
1c00875e:	3a450513          	addi	a0,a0,932 # 1c0013a4 <__rt_alloc_l2+0x4>
1c008762:	3f29                	jal	1c00867c <rt_user_alloc_init>
1c008764:	1c0105b7          	lui	a1,0x1c010
1c008768:	40b2                	lw	ra,12(sp)
1c00876a:	2ec58793          	addi	a5,a1,748 # 1c0102ec <__l2_shared_end>
1c00876e:	1c080637          	lui	a2,0x1c080
1c008772:	1c001537          	lui	a0,0x1c001
1c008776:	8e1d                	sub	a2,a2,a5
1c008778:	2ec58593          	addi	a1,a1,748
1c00877c:	3a850513          	addi	a0,a0,936 # 1c0013a8 <__rt_alloc_l2+0x8>
1c008780:	0141                	addi	sp,sp,16
1c008782:	bded                	j	1c00867c <rt_user_alloc_init>
1c008784:	8e1d                	sub	a2,a2,a5
1c008786:	3c058593          	addi	a1,a1,960
1c00878a:	bf4d                	j	1c00873c <__rt_allocs_init+0x18>
1c00878c:	8e1d                	sub	a2,a2,a5
1c00878e:	5c458593          	addi	a1,a1,1476
1c008792:	b7e1                	j	1c00875a <__rt_allocs_init+0x36>

1c008794 <rt_perf_init>:
1c008794:	0511                	addi	a0,a0,4
1c008796:	012250fb          	lp.setupi	x1,18,1c00879e <rt_perf_init+0xa>
1c00879a:	0005222b          	p.sw	zero,4(a0!)
1c00879e:	0001                	nop
1c0087a0:	8082                	ret

1c0087a2 <rt_perf_conf>:
1c0087a2:	c10c                	sw	a1,0(a0)
1c0087a4:	cc059073          	csrw	0xcc0,a1
1c0087a8:	8082                	ret

1c0087aa <rt_perf_save>:
1c0087aa:	4110                	lw	a2,0(a0)
1c0087ac:	7179                	addi	sp,sp,-48
1c0087ae:	f14026f3          	csrr	a3,mhartid
1c0087b2:	8695                	srai	a3,a3,0x5
1c0087b4:	d622                	sw	s0,44(sp)
1c0087b6:	d426                	sw	s1,40(sp)
1c0087b8:	d24a                	sw	s2,36(sp)
1c0087ba:	d04e                	sw	s3,32(sp)
1c0087bc:	ce52                	sw	s4,28(sp)
1c0087be:	cc56                	sw	s5,24(sp)
1c0087c0:	ca5a                	sw	s6,20(sp)
1c0087c2:	c85e                	sw	s7,16(sp)
1c0087c4:	c662                	sw	s8,12(sp)
1c0087c6:	c466                	sw	s9,8(sp)
1c0087c8:	4f85                	li	t6,1
1c0087ca:	f266b6b3          	p.bclr	a3,a3,25,6
1c0087ce:	42fd                	li	t0,31
1c0087d0:	43c5                	li	t2,17
1c0087d2:	4439                	li	s0,14
1c0087d4:	45dd                	li	a1,23
1c0087d6:	486d                	li	a6,27
1c0087d8:	48f5                	li	a7,29
1c0087da:	44f9                	li	s1,30
1c0087dc:	4365                	li	t1,25
1c0087de:	4e4d                	li	t3,19
1c0087e0:	4ed5                	li	t4,21
1c0087e2:	4f41                	li	t5,16
1c0087e4:	4949                	li	s2,18
1c0087e6:	4999                	li	s3,6
1c0087e8:	4a29                	li	s4,10
1c0087ea:	4ab1                	li	s5,12
1c0087ec:	4b21                	li	s6,8
1c0087ee:	4b89                	li	s7,2
1c0087f0:	4c11                	li	s8,4
1c0087f2:	ee09                	bnez	a2,1c00880c <rt_perf_save+0x62>
1c0087f4:	5432                	lw	s0,44(sp)
1c0087f6:	54a2                	lw	s1,40(sp)
1c0087f8:	5912                	lw	s2,36(sp)
1c0087fa:	5982                	lw	s3,32(sp)
1c0087fc:	4a72                	lw	s4,28(sp)
1c0087fe:	4ae2                	lw	s5,24(sp)
1c008800:	4b52                	lw	s6,20(sp)
1c008802:	4bc2                	lw	s7,16(sp)
1c008804:	4c32                	lw	s8,12(sp)
1c008806:	4ca2                	lw	s9,8(sp)
1c008808:	6145                	addi	sp,sp,48
1c00880a:	8082                	ret
1c00880c:	100617b3          	p.fl1	a5,a2
1c008810:	00ff9733          	sll	a4,t6,a5
1c008814:	fff74713          	not	a4,a4
1c008818:	8e79                	and	a2,a2,a4
1c00881a:	fc569ce3          	bne	a3,t0,1c0087f2 <rt_perf_save+0x48>
1c00881e:	00779d63          	bne	a5,t2,1c008838 <rt_perf_save+0x8e>
1c008822:	1a10b737          	lui	a4,0x1a10b
1c008826:	00872703          	lw	a4,8(a4) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c00882a:	078a                	slli	a5,a5,0x2
1c00882c:	97aa                	add	a5,a5,a0
1c00882e:	0047ac83          	lw	s9,4(a5)
1c008832:	9766                	add	a4,a4,s9
1c008834:	c3d8                	sw	a4,4(a5)
1c008836:	bf75                	j	1c0087f2 <rt_perf_save+0x48>
1c008838:	0ee7a763          	p.beqimm	a5,14,1c008926 <rt_perf_save+0x17c>
1c00883c:	04f44863          	blt	s0,a5,1c00888c <rt_perf_save+0xe2>
1c008840:	0c67a163          	p.beqimm	a5,6,1c008902 <rt_perf_save+0x158>
1c008844:	02f9c263          	blt	s3,a5,1c008868 <rt_perf_save+0xbe>
1c008848:	0a27a463          	p.beqimm	a5,2,1c0088f0 <rt_perf_save+0x146>
1c00884c:	00fbc763          	blt	s7,a5,1c00885a <rt_perf_save+0xb0>
1c008850:	cbd1                	beqz	a5,1c0088e4 <rt_perf_save+0x13a>
1c008852:	0817ac63          	p.beqimm	a5,1,1c0088ea <rt_perf_save+0x140>
1c008856:	4701                	li	a4,0
1c008858:	bfc9                	j	1c00882a <rt_perf_save+0x80>
1c00885a:	0a47a163          	p.beqimm	a5,4,1c0088fc <rt_perf_save+0x152>
1c00885e:	08fc5c63          	ble	a5,s8,1c0088f6 <rt_perf_save+0x14c>
1c008862:	78502773          	csrr	a4,pccr5
1c008866:	b7d1                	j	1c00882a <rt_perf_save+0x80>
1c008868:	0aa7a663          	p.beqimm	a5,10,1c008914 <rt_perf_save+0x16a>
1c00886c:	00fa4963          	blt	s4,a5,1c00887e <rt_perf_save+0xd4>
1c008870:	0887af63          	p.beqimm	a5,8,1c00890e <rt_perf_save+0x164>
1c008874:	08fb5a63          	ble	a5,s6,1c008908 <rt_perf_save+0x15e>
1c008878:	78902773          	csrr	a4,pccr9
1c00887c:	b77d                	j	1c00882a <rt_perf_save+0x80>
1c00887e:	0ac7a163          	p.beqimm	a5,12,1c008920 <rt_perf_save+0x176>
1c008882:	08fadc63          	ble	a5,s5,1c00891a <rt_perf_save+0x170>
1c008886:	78d02773          	csrr	a4,pccr13
1c00888a:	b745                	j	1c00882a <rt_perf_save+0x80>
1c00888c:	0ab78f63          	beq	a5,a1,1c00894a <rt_perf_save+0x1a0>
1c008890:	02f5c663          	blt	a1,a5,1c0088bc <rt_perf_save+0x112>
1c008894:	0bc78263          	beq	a5,t3,1c008938 <rt_perf_save+0x18e>
1c008898:	00fe4b63          	blt	t3,a5,1c0088ae <rt_perf_save+0x104>
1c00889c:	09e78b63          	beq	a5,t5,1c008932 <rt_perf_save+0x188>
1c0088a0:	09e7c663          	blt	a5,t5,1c00892c <rt_perf_save+0x182>
1c0088a4:	fb2799e3          	bne	a5,s2,1c008856 <rt_perf_save+0xac>
1c0088a8:	79202773          	csrr	a4,pccr18
1c0088ac:	bfbd                	j	1c00882a <rt_perf_save+0x80>
1c0088ae:	09d78b63          	beq	a5,t4,1c008944 <rt_perf_save+0x19a>
1c0088b2:	08fed663          	ble	a5,t4,1c00893e <rt_perf_save+0x194>
1c0088b6:	79602773          	csrr	a4,pccr22
1c0088ba:	bf85                	j	1c00882a <rt_perf_save+0x80>
1c0088bc:	0b078063          	beq	a5,a6,1c00895c <rt_perf_save+0x1b2>
1c0088c0:	00f84963          	blt	a6,a5,1c0088d2 <rt_perf_save+0x128>
1c0088c4:	08678963          	beq	a5,t1,1c008956 <rt_perf_save+0x1ac>
1c0088c8:	08f35463          	ble	a5,t1,1c008950 <rt_perf_save+0x1a6>
1c0088cc:	79a02773          	csrr	a4,pccr26
1c0088d0:	bfa9                	j	1c00882a <rt_perf_save+0x80>
1c0088d2:	09178b63          	beq	a5,a7,1c008968 <rt_perf_save+0x1be>
1c0088d6:	0917c663          	blt	a5,a7,1c008962 <rt_perf_save+0x1b8>
1c0088da:	f6979ee3          	bne	a5,s1,1c008856 <rt_perf_save+0xac>
1c0088de:	79e02773          	csrr	a4,pccr30
1c0088e2:	b7a1                	j	1c00882a <rt_perf_save+0x80>
1c0088e4:	78002773          	csrr	a4,pccr0
1c0088e8:	b789                	j	1c00882a <rt_perf_save+0x80>
1c0088ea:	78102773          	csrr	a4,pccr1
1c0088ee:	bf35                	j	1c00882a <rt_perf_save+0x80>
1c0088f0:	78202773          	csrr	a4,pccr2
1c0088f4:	bf1d                	j	1c00882a <rt_perf_save+0x80>
1c0088f6:	78302773          	csrr	a4,pccr3
1c0088fa:	bf05                	j	1c00882a <rt_perf_save+0x80>
1c0088fc:	78402773          	csrr	a4,pccr4
1c008900:	b72d                	j	1c00882a <rt_perf_save+0x80>
1c008902:	78602773          	csrr	a4,pccr6
1c008906:	b715                	j	1c00882a <rt_perf_save+0x80>
1c008908:	78702773          	csrr	a4,pccr7
1c00890c:	bf39                	j	1c00882a <rt_perf_save+0x80>
1c00890e:	78802773          	csrr	a4,pccr8
1c008912:	bf21                	j	1c00882a <rt_perf_save+0x80>
1c008914:	78a02773          	csrr	a4,pccr10
1c008918:	bf09                	j	1c00882a <rt_perf_save+0x80>
1c00891a:	78b02773          	csrr	a4,pccr11
1c00891e:	b731                	j	1c00882a <rt_perf_save+0x80>
1c008920:	78c02773          	csrr	a4,pccr12
1c008924:	b719                	j	1c00882a <rt_perf_save+0x80>
1c008926:	78e02773          	csrr	a4,pccr14
1c00892a:	b701                	j	1c00882a <rt_perf_save+0x80>
1c00892c:	78f02773          	csrr	a4,pccr15
1c008930:	bded                	j	1c00882a <rt_perf_save+0x80>
1c008932:	79002773          	csrr	a4,pccr16
1c008936:	bdd5                	j	1c00882a <rt_perf_save+0x80>
1c008938:	79302773          	csrr	a4,pccr19
1c00893c:	b5fd                	j	1c00882a <rt_perf_save+0x80>
1c00893e:	79402773          	csrr	a4,pccr20
1c008942:	b5e5                	j	1c00882a <rt_perf_save+0x80>
1c008944:	79502773          	csrr	a4,pccr21
1c008948:	b5cd                	j	1c00882a <rt_perf_save+0x80>
1c00894a:	79702773          	csrr	a4,pccr23
1c00894e:	bdf1                	j	1c00882a <rt_perf_save+0x80>
1c008950:	79802773          	csrr	a4,pccr24
1c008954:	bdd9                	j	1c00882a <rt_perf_save+0x80>
1c008956:	79902773          	csrr	a4,pccr25
1c00895a:	bdc1                	j	1c00882a <rt_perf_save+0x80>
1c00895c:	79b02773          	csrr	a4,pccr27
1c008960:	b5e9                	j	1c00882a <rt_perf_save+0x80>
1c008962:	79c02773          	csrr	a4,pccr28
1c008966:	b5d1                	j	1c00882a <rt_perf_save+0x80>
1c008968:	79d02773          	csrr	a4,pccr29
1c00896c:	bd7d                	j	1c00882a <rt_perf_save+0x80>

1c00896e <__rt_himax_init>:
1c00896e:	1c0017b7          	lui	a5,0x1c001
1c008972:	da078023          	sb	zero,-608(a5) # 1c000da0 <stack>
1c008976:	8082                	ret

1c008978 <__rt_init>:
1c008978:	1141                	addi	sp,sp,-16
1c00897a:	c606                	sw	ra,12(sp)
1c00897c:	c422                	sw	s0,8(sp)
1c00897e:	2ef1                	jal	1c008d5a <__rt_bridge_set_available>
1c008980:	1c0017b7          	lui	a5,0x1c001
1c008984:	2c87a783          	lw	a5,712(a5) # 1c0012c8 <__rt_platform>
1c008988:	0237b263          	p.bneimm	a5,3,1c0089ac <__rt_init+0x34>
1c00898c:	7d005073          	csrwi	0x7d0,0
1c008990:	1c0007b7          	lui	a5,0x1c000
1c008994:	5a078793          	addi	a5,a5,1440 # 1c0005a0 <stack_start>
1c008998:	7d179073          	csrw	0x7d1,a5
1c00899c:	1c0017b7          	lui	a5,0x1c001
1c0089a0:	da078793          	addi	a5,a5,-608 # 1c000da0 <stack>
1c0089a4:	7d279073          	csrw	0x7d2,a5
1c0089a8:	7d00d073          	csrwi	0x7d0,1
1c0089ac:	2a85                	jal	1c008b1c <__rt_irq_init>
1c0089ae:	1a1067b7          	lui	a5,0x1a106
1c0089b2:	577d                	li	a4,-1
1c0089b4:	00478693          	addi	a3,a5,4 # 1a106004 <__rt_udma_callback_data+0x1a105d0c>
1c0089b8:	c298                	sw	a4,0(a3)
1c0089ba:	00878693          	addi	a3,a5,8
1c0089be:	c298                	sw	a4,0(a3)
1c0089c0:	00c78693          	addi	a3,a5,12
1c0089c4:	c298                	sw	a4,0(a3)
1c0089c6:	01078693          	addi	a3,a5,16
1c0089ca:	c298                	sw	a4,0(a3)
1c0089cc:	01478693          	addi	a3,a5,20
1c0089d0:	c298                	sw	a4,0(a3)
1c0089d2:	01878693          	addi	a3,a5,24
1c0089d6:	c298                	sw	a4,0(a3)
1c0089d8:	01c78693          	addi	a3,a5,28
1c0089dc:	c298                	sw	a4,0(a3)
1c0089de:	02078793          	addi	a5,a5,32
1c0089e2:	1c0085b7          	lui	a1,0x1c008
1c0089e6:	23a58593          	addi	a1,a1,570 # 1c00823a <__rt_fc_socevents_handler>
1c0089ea:	4569                	li	a0,26
1c0089ec:	c398                	sw	a4,0(a5)
1c0089ee:	2851                	jal	1c008a82 <rt_irq_set_handler>
1c0089f0:	1a10a7b7          	lui	a5,0x1a10a
1c0089f4:	04000737          	lui	a4,0x4000
1c0089f8:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__rt_udma_callback_data+0x1a10950c>
1c0089fc:	1c000437          	lui	s0,0x1c000
1c008a00:	189000ef          	jal	ra,1c009388 <__rt_freq_init>
1c008a04:	32840413          	addi	s0,s0,808 # 1c000328 <ctor_list+0x4>
1c008a08:	2275                	jal	1c008bb4 <__rt_utils_init>
1c008a0a:	3b29                	jal	1c008724 <__rt_allocs_init>
1c008a0c:	2519                	jal	1c009012 <__rt_event_sched_init>
1c008a0e:	1f7000ef          	jal	ra,1c009404 <__rt_padframe_init>
1c008a12:	0044278b          	p.lw	a5,4(s0!)
1c008a16:	e795                	bnez	a5,1c008a42 <__rt_init+0xca>
1c008a18:	300467f3          	csrrsi	a5,mstatus,8
1c008a1c:	4501                	li	a0,0
1c008a1e:	229d                	jal	1c008b84 <__rt_cbsys_exec>
1c008a20:	c11d                	beqz	a0,1c008a46 <__rt_init+0xce>
1c008a22:	f1402673          	csrr	a2,mhartid
1c008a26:	1c000537          	lui	a0,0x1c000
1c008a2a:	40565593          	srai	a1,a2,0x5
1c008a2e:	f265b5b3          	p.bclr	a1,a1,25,6
1c008a32:	f4563633          	p.bclr	a2,a2,26,5
1c008a36:	44450513          	addi	a0,a0,1092 # 1c000444 <__DTOR_END__+0xec>
1c008a3a:	036010ef          	jal	ra,1c009a70 <printf>
1c008a3e:	79f000ef          	jal	ra,1c0099dc <abort>
1c008a42:	9782                	jalr	a5
1c008a44:	b7f9                	j	1c008a12 <__rt_init+0x9a>
1c008a46:	40b2                	lw	ra,12(sp)
1c008a48:	4422                	lw	s0,8(sp)
1c008a4a:	0141                	addi	sp,sp,16
1c008a4c:	8082                	ret

1c008a4e <__rt_deinit>:
1c008a4e:	1c0017b7          	lui	a5,0x1c001
1c008a52:	2c87a783          	lw	a5,712(a5) # 1c0012c8 <__rt_platform>
1c008a56:	1141                	addi	sp,sp,-16
1c008a58:	c606                	sw	ra,12(sp)
1c008a5a:	c422                	sw	s0,8(sp)
1c008a5c:	0037b463          	p.bneimm	a5,3,1c008a64 <__rt_deinit+0x16>
1c008a60:	7d005073          	csrwi	0x7d0,0
1c008a64:	4505                	li	a0,1
1c008a66:	1c000437          	lui	s0,0x1c000
1c008a6a:	2a29                	jal	1c008b84 <__rt_cbsys_exec>
1c008a6c:	35440413          	addi	s0,s0,852 # 1c000354 <dtor_list+0x4>
1c008a70:	0044278b          	p.lw	a5,4(s0!)
1c008a74:	e789                	bnez	a5,1c008a7e <__rt_deinit+0x30>
1c008a76:	40b2                	lw	ra,12(sp)
1c008a78:	4422                	lw	s0,8(sp)
1c008a7a:	0141                	addi	sp,sp,16
1c008a7c:	8082                	ret
1c008a7e:	9782                	jalr	a5
1c008a80:	bfc5                	j	1c008a70 <__rt_deinit+0x22>

1c008a82 <rt_irq_set_handler>:
1c008a82:	f14027f3          	csrr	a5,mhartid
1c008a86:	46fd                	li	a3,31
1c008a88:	ca5797b3          	p.extractu	a5,a5,5,5
1c008a8c:	4701                	li	a4,0
1c008a8e:	00d79663          	bne	a5,a3,1c008a9a <rt_irq_set_handler+0x18>
1c008a92:	30502773          	csrr	a4,mtvec
1c008a96:	c0073733          	p.bclr	a4,a4,0,0
1c008a9a:	050a                	slli	a0,a0,0x2
1c008a9c:	8d89                	sub	a1,a1,a0
1c008a9e:	8d99                	sub	a1,a1,a4
1c008aa0:	c14586b3          	p.extract	a3,a1,0,20
1c008aa4:	06f00793          	li	a5,111
1c008aa8:	c1f6a7b3          	p.insert	a5,a3,0,31
1c008aac:	d21586b3          	p.extract	a3,a1,9,1
1c008ab0:	d356a7b3          	p.insert	a5,a3,9,21
1c008ab4:	c0b586b3          	p.extract	a3,a1,0,11
1c008ab8:	c146a7b3          	p.insert	a5,a3,0,20
1c008abc:	cec585b3          	p.extract	a1,a1,7,12
1c008ac0:	cec5a7b3          	p.insert	a5,a1,7,12
1c008ac4:	00f56723          	p.sw	a5,a4(a0)
1c008ac8:	8082                	ret

1c008aca <illegal_insn_handler_c>:
1c008aca:	8082                	ret

1c008acc <__rt_handle_illegal_instr>:
1c008acc:	1141                	addi	sp,sp,-16
1c008ace:	c606                	sw	ra,12(sp)
1c008ad0:	c422                	sw	s0,8(sp)
1c008ad2:	341026f3          	csrr	a3,mepc
1c008ad6:	1c0017b7          	lui	a5,0x1c001
1c008ada:	da87a703          	lw	a4,-600(a5) # 1c000da8 <__rt_debug_config>
1c008ade:	843e                	mv	s0,a5
1c008ae0:	fc173733          	p.bclr	a4,a4,30,1
1c008ae4:	c305                	beqz	a4,1c008b04 <__rt_handle_illegal_instr+0x38>
1c008ae6:	4298                	lw	a4,0(a3)
1c008ae8:	f1402673          	csrr	a2,mhartid
1c008aec:	1c000537          	lui	a0,0x1c000
1c008af0:	40565593          	srai	a1,a2,0x5
1c008af4:	f265b5b3          	p.bclr	a1,a1,25,6
1c008af8:	f4563633          	p.bclr	a2,a2,26,5
1c008afc:	49c50513          	addi	a0,a0,1180 # 1c00049c <__DTOR_END__+0x144>
1c008b00:	771000ef          	jal	ra,1c009a70 <printf>
1c008b04:	da842783          	lw	a5,-600(s0)
1c008b08:	c01797b3          	p.extractu	a5,a5,0,1
1c008b0c:	c399                	beqz	a5,1c008b12 <__rt_handle_illegal_instr+0x46>
1c008b0e:	6cf000ef          	jal	ra,1c0099dc <abort>
1c008b12:	4422                	lw	s0,8(sp)
1c008b14:	40b2                	lw	ra,12(sp)
1c008b16:	0141                	addi	sp,sp,16
1c008b18:	fb3ff06f          	j	1c008aca <illegal_insn_handler_c>

1c008b1c <__rt_irq_init>:
1c008b1c:	1a10a7b7          	lui	a5,0x1a10a
1c008b20:	577d                	li	a4,-1
1c008b22:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__rt_udma_callback_data+0x1a109510>
1c008b26:	f14027f3          	csrr	a5,mhartid
1c008b2a:	477d                	li	a4,31
1c008b2c:	ca5797b3          	p.extractu	a5,a5,5,5
1c008b30:	00e79a63          	bne	a5,a4,1c008b44 <__rt_irq_init+0x28>
1c008b34:	1c0087b7          	lui	a5,0x1c008
1c008b38:	00078793          	mv	a5,a5
1c008b3c:	c007c7b3          	p.bset	a5,a5,0,0
1c008b40:	30579073          	csrw	mtvec,a5
1c008b44:	8082                	ret

1c008b46 <__rt_cbsys_add>:
1c008b46:	1101                	addi	sp,sp,-32
1c008b48:	cc22                	sw	s0,24(sp)
1c008b4a:	ca26                	sw	s1,20(sp)
1c008b4c:	842a                	mv	s0,a0
1c008b4e:	84ae                	mv	s1,a1
1c008b50:	4501                	li	a0,0
1c008b52:	45b1                	li	a1,12
1c008b54:	c632                	sw	a2,12(sp)
1c008b56:	ce06                	sw	ra,28(sp)
1c008b58:	3671                	jal	1c0086e4 <rt_alloc>
1c008b5a:	4632                	lw	a2,12(sp)
1c008b5c:	c115                	beqz	a0,1c008b80 <__rt_cbsys_add+0x3a>
1c008b5e:	1c0017b7          	lui	a5,0x1c001
1c008b62:	040a                	slli	s0,s0,0x2
1c008b64:	dac78793          	addi	a5,a5,-596 # 1c000dac <cbsys_first>
1c008b68:	97a2                	add	a5,a5,s0
1c008b6a:	4398                	lw	a4,0(a5)
1c008b6c:	c104                	sw	s1,0(a0)
1c008b6e:	c150                	sw	a2,4(a0)
1c008b70:	c518                	sw	a4,8(a0)
1c008b72:	c388                	sw	a0,0(a5)
1c008b74:	4501                	li	a0,0
1c008b76:	40f2                	lw	ra,28(sp)
1c008b78:	4462                	lw	s0,24(sp)
1c008b7a:	44d2                	lw	s1,20(sp)
1c008b7c:	6105                	addi	sp,sp,32
1c008b7e:	8082                	ret
1c008b80:	557d                	li	a0,-1
1c008b82:	bfd5                	j	1c008b76 <__rt_cbsys_add+0x30>

1c008b84 <__rt_cbsys_exec>:
1c008b84:	1141                	addi	sp,sp,-16
1c008b86:	c422                	sw	s0,8(sp)
1c008b88:	1c001437          	lui	s0,0x1c001
1c008b8c:	050a                	slli	a0,a0,0x2
1c008b8e:	dac40413          	addi	s0,s0,-596 # 1c000dac <cbsys_first>
1c008b92:	20a47403          	p.lw	s0,a0(s0)
1c008b96:	c606                	sw	ra,12(sp)
1c008b98:	e411                	bnez	s0,1c008ba4 <__rt_cbsys_exec+0x20>
1c008b9a:	4501                	li	a0,0
1c008b9c:	40b2                	lw	ra,12(sp)
1c008b9e:	4422                	lw	s0,8(sp)
1c008ba0:	0141                	addi	sp,sp,16
1c008ba2:	8082                	ret
1c008ba4:	401c                	lw	a5,0(s0)
1c008ba6:	4048                	lw	a0,4(s0)
1c008ba8:	9782                	jalr	a5
1c008baa:	e119                	bnez	a0,1c008bb0 <__rt_cbsys_exec+0x2c>
1c008bac:	4400                	lw	s0,8(s0)
1c008bae:	b7ed                	j	1c008b98 <__rt_cbsys_exec+0x14>
1c008bb0:	557d                	li	a0,-1
1c008bb2:	b7ed                	j	1c008b9c <__rt_cbsys_exec+0x18>

1c008bb4 <__rt_utils_init>:
1c008bb4:	1c0017b7          	lui	a5,0x1c001
1c008bb8:	dac78793          	addi	a5,a5,-596 # 1c000dac <cbsys_first>
1c008bbc:	0007a023          	sw	zero,0(a5)
1c008bc0:	0007a223          	sw	zero,4(a5)
1c008bc4:	0007a423          	sw	zero,8(a5)
1c008bc8:	0007a623          	sw	zero,12(a5)
1c008bcc:	0007a823          	sw	zero,16(a5)
1c008bd0:	0007aa23          	sw	zero,20(a5)
1c008bd4:	8082                	ret

1c008bd6 <__rt_fc_lock>:
1c008bd6:	1141                	addi	sp,sp,-16
1c008bd8:	c422                	sw	s0,8(sp)
1c008bda:	c606                	sw	ra,12(sp)
1c008bdc:	c226                	sw	s1,4(sp)
1c008bde:	842a                	mv	s0,a0
1c008be0:	300474f3          	csrrci	s1,mstatus,8
1c008be4:	401c                	lw	a5,0(s0)
1c008be6:	eb91                	bnez	a5,1c008bfa <__rt_fc_lock+0x24>
1c008be8:	4785                	li	a5,1
1c008bea:	c01c                	sw	a5,0(s0)
1c008bec:	30049073          	csrw	mstatus,s1
1c008bf0:	40b2                	lw	ra,12(sp)
1c008bf2:	4422                	lw	s0,8(sp)
1c008bf4:	4492                	lw	s1,4(sp)
1c008bf6:	0141                	addi	sp,sp,16
1c008bf8:	8082                	ret
1c008bfa:	4585                	li	a1,1
1c008bfc:	e3ff7517          	auipc	a0,0xe3ff7
1c008c00:	42050513          	addi	a0,a0,1056 # 1c <__rt_sched>
1c008c04:	26b5                	jal	1c008f70 <__rt_event_execute>
1c008c06:	bff9                	j	1c008be4 <__rt_fc_lock+0xe>

1c008c08 <__rt_fc_unlock>:
1c008c08:	300477f3          	csrrci	a5,mstatus,8
1c008c0c:	00052023          	sw	zero,0(a0)
1c008c10:	30079073          	csrw	mstatus,a5
1c008c14:	8082                	ret

1c008c16 <__rt_event_enqueue>:
1c008c16:	01c02783          	lw	a5,28(zero) # 1c <__rt_sched>
1c008c1a:	00052c23          	sw	zero,24(a0)
1c008c1e:	c799                	beqz	a5,1c008c2c <__rt_event_enqueue+0x16>
1c008c20:	02002783          	lw	a5,32(zero) # 20 <__rt_sched+0x4>
1c008c24:	cf88                	sw	a0,24(a5)
1c008c26:	02a02023          	sw	a0,32(zero) # 20 <__rt_sched+0x4>
1c008c2a:	8082                	ret
1c008c2c:	00a02e23          	sw	a0,28(zero) # 1c <__rt_sched>
1c008c30:	bfdd                	j	1c008c26 <__rt_event_enqueue+0x10>

1c008c32 <__rt_bridge_check_bridge_req.part.5>:
1c008c32:	1c001737          	lui	a4,0x1c001
1c008c36:	20870793          	addi	a5,a4,520 # 1c001208 <__hal_debug_struct>
1c008c3a:	0a47a783          	lw	a5,164(a5)
1c008c3e:	20870713          	addi	a4,a4,520
1c008c42:	c789                	beqz	a5,1c008c4c <__rt_bridge_check_bridge_req.part.5+0x1a>
1c008c44:	4f94                	lw	a3,24(a5)
1c008c46:	e681                	bnez	a3,1c008c4e <__rt_bridge_check_bridge_req.part.5+0x1c>
1c008c48:	0af72623          	sw	a5,172(a4)
1c008c4c:	8082                	ret
1c008c4e:	479c                	lw	a5,8(a5)
1c008c50:	bfcd                	j	1c008c42 <__rt_bridge_check_bridge_req.part.5+0x10>

1c008c52 <__rt_bridge_wait>:
1c008c52:	f14027f3          	csrr	a5,mhartid
1c008c56:	477d                	li	a4,31
1c008c58:	ca5797b3          	p.extractu	a5,a5,5,5
1c008c5c:	02e79f63          	bne	a5,a4,1c008c9a <__rt_bridge_wait+0x48>
1c008c60:	1a10a7b7          	lui	a5,0x1a10a
1c008c64:	80c78513          	addi	a0,a5,-2036 # 1a10980c <__rt_udma_callback_data+0x1a109514>
1c008c68:	6711                	lui	a4,0x4
1c008c6a:	80478593          	addi	a1,a5,-2044
1c008c6e:	80878613          	addi	a2,a5,-2040
1c008c72:	300476f3          	csrrci	a3,mstatus,8
1c008c76:	00052803          	lw	a6,0(a0)
1c008c7a:	01181893          	slli	a7,a6,0x11
1c008c7e:	0008c963          	bltz	a7,1c008c90 <__rt_bridge_wait+0x3e>
1c008c82:	c198                	sw	a4,0(a1)
1c008c84:	10500073          	wfi
1c008c88:	c218                	sw	a4,0(a2)
1c008c8a:	30069073          	csrw	mstatus,a3
1c008c8e:	b7d5                	j	1c008c72 <__rt_bridge_wait+0x20>
1c008c90:	81478793          	addi	a5,a5,-2028
1c008c94:	c398                	sw	a4,0(a5)
1c008c96:	30069073          	csrw	mstatus,a3
1c008c9a:	8082                	ret

1c008c9c <__rt_bridge_handle_notif>:
1c008c9c:	1141                	addi	sp,sp,-16
1c008c9e:	c422                	sw	s0,8(sp)
1c008ca0:	1c001437          	lui	s0,0x1c001
1c008ca4:	20840793          	addi	a5,s0,520 # 1c001208 <__hal_debug_struct>
1c008ca8:	0a47a783          	lw	a5,164(a5)
1c008cac:	c606                	sw	ra,12(sp)
1c008cae:	c226                	sw	s1,4(sp)
1c008cb0:	c04a                	sw	s2,0(sp)
1c008cb2:	20840413          	addi	s0,s0,520
1c008cb6:	c399                	beqz	a5,1c008cbc <__rt_bridge_handle_notif+0x20>
1c008cb8:	4bd8                	lw	a4,20(a5)
1c008cba:	e30d                	bnez	a4,1c008cdc <__rt_bridge_handle_notif+0x40>
1c008cbc:	0b442783          	lw	a5,180(s0)
1c008cc0:	c789                	beqz	a5,1c008cca <__rt_bridge_handle_notif+0x2e>
1c008cc2:	43a8                	lw	a0,64(a5)
1c008cc4:	0a042a23          	sw	zero,180(s0)
1c008cc8:	37b9                	jal	1c008c16 <__rt_event_enqueue>
1c008cca:	0ac42783          	lw	a5,172(s0)
1c008cce:	eb9d                	bnez	a5,1c008d04 <__rt_bridge_handle_notif+0x68>
1c008cd0:	4422                	lw	s0,8(sp)
1c008cd2:	40b2                	lw	ra,12(sp)
1c008cd4:	4492                	lw	s1,4(sp)
1c008cd6:	4902                	lw	s2,0(sp)
1c008cd8:	0141                	addi	sp,sp,16
1c008cda:	bfa1                	j	1c008c32 <__rt_bridge_check_bridge_req.part.5>
1c008cdc:	0087a903          	lw	s2,8(a5)
1c008ce0:	4fd8                	lw	a4,28(a5)
1c008ce2:	0b242223          	sw	s2,164(s0)
1c008ce6:	cb01                	beqz	a4,1c008cf6 <__rt_bridge_handle_notif+0x5a>
1c008ce8:	0b042703          	lw	a4,176(s0)
1c008cec:	c798                	sw	a4,8(a5)
1c008cee:	0af42823          	sw	a5,176(s0)
1c008cf2:	87ca                	mv	a5,s2
1c008cf4:	b7c9                	j	1c008cb6 <__rt_bridge_handle_notif+0x1a>
1c008cf6:	43a8                	lw	a0,64(a5)
1c008cf8:	300474f3          	csrrci	s1,mstatus,8
1c008cfc:	3f29                	jal	1c008c16 <__rt_event_enqueue>
1c008cfe:	30049073          	csrw	mstatus,s1
1c008d02:	bfc5                	j	1c008cf2 <__rt_bridge_handle_notif+0x56>
1c008d04:	40b2                	lw	ra,12(sp)
1c008d06:	4422                	lw	s0,8(sp)
1c008d08:	4492                	lw	s1,4(sp)
1c008d0a:	4902                	lw	s2,0(sp)
1c008d0c:	0141                	addi	sp,sp,16
1c008d0e:	8082                	ret

1c008d10 <__rt_bridge_check_connection>:
1c008d10:	1c0016b7          	lui	a3,0x1c001
1c008d14:	20868693          	addi	a3,a3,520 # 1c001208 <__hal_debug_struct>
1c008d18:	469c                	lw	a5,8(a3)
1c008d1a:	ef9d                	bnez	a5,1c008d58 <__rt_bridge_check_connection+0x48>
1c008d1c:	1a1047b7          	lui	a5,0x1a104
1c008d20:	07478793          	addi	a5,a5,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008d24:	4398                	lw	a4,0(a5)
1c008d26:	8325                	srli	a4,a4,0x9
1c008d28:	f8373733          	p.bclr	a4,a4,28,3
1c008d2c:	02773663          	p.bneimm	a4,7,1c008d58 <__rt_bridge_check_connection+0x48>
1c008d30:	1141                	addi	sp,sp,-16
1c008d32:	c422                	sw	s0,8(sp)
1c008d34:	c606                	sw	ra,12(sp)
1c008d36:	4705                	li	a4,1
1c008d38:	c698                	sw	a4,8(a3)
1c008d3a:	4709                	li	a4,2
1c008d3c:	c398                	sw	a4,0(a5)
1c008d3e:	843e                	mv	s0,a5
1c008d40:	401c                	lw	a5,0(s0)
1c008d42:	83a5                	srli	a5,a5,0x9
1c008d44:	f837b7b3          	p.bclr	a5,a5,28,3
1c008d48:	0077a663          	p.beqimm	a5,7,1c008d54 <__rt_bridge_check_connection+0x44>
1c008d4c:	40b2                	lw	ra,12(sp)
1c008d4e:	4422                	lw	s0,8(sp)
1c008d50:	0141                	addi	sp,sp,16
1c008d52:	8082                	ret
1c008d54:	3dfd                	jal	1c008c52 <__rt_bridge_wait>
1c008d56:	b7ed                	j	1c008d40 <__rt_bridge_check_connection+0x30>
1c008d58:	8082                	ret

1c008d5a <__rt_bridge_set_available>:
1c008d5a:	1c0017b7          	lui	a5,0x1c001
1c008d5e:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008d62:	4798                	lw	a4,8(a5)
1c008d64:	1a1047b7          	lui	a5,0x1a104
1c008d68:	07478793          	addi	a5,a5,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008d6c:	e701                	bnez	a4,1c008d74 <__rt_bridge_set_available+0x1a>
1c008d6e:	4721                	li	a4,8
1c008d70:	c398                	sw	a4,0(a5)
1c008d72:	8082                	ret
1c008d74:	4709                	li	a4,2
1c008d76:	bfed                	j	1c008d70 <__rt_bridge_set_available+0x16>

1c008d78 <__rt_bridge_send_notif>:
1c008d78:	1141                	addi	sp,sp,-16
1c008d7a:	c606                	sw	ra,12(sp)
1c008d7c:	3f51                	jal	1c008d10 <__rt_bridge_check_connection>
1c008d7e:	1c0017b7          	lui	a5,0x1c001
1c008d82:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008d86:	479c                	lw	a5,8(a5)
1c008d88:	c789                	beqz	a5,1c008d92 <__rt_bridge_send_notif+0x1a>
1c008d8a:	1a1047b7          	lui	a5,0x1a104
1c008d8e:	4719                	li	a4,6
1c008d90:	dbf8                	sw	a4,116(a5)
1c008d92:	40b2                	lw	ra,12(sp)
1c008d94:	0141                	addi	sp,sp,16
1c008d96:	8082                	ret

1c008d98 <__rt_bridge_clear_notif>:
1c008d98:	1141                	addi	sp,sp,-16
1c008d9a:	c606                	sw	ra,12(sp)
1c008d9c:	3f95                	jal	1c008d10 <__rt_bridge_check_connection>
1c008d9e:	1c0017b7          	lui	a5,0x1c001
1c008da2:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008da6:	479c                	lw	a5,8(a5)
1c008da8:	c781                	beqz	a5,1c008db0 <__rt_bridge_clear_notif+0x18>
1c008daa:	40b2                	lw	ra,12(sp)
1c008dac:	0141                	addi	sp,sp,16
1c008dae:	b775                	j	1c008d5a <__rt_bridge_set_available>
1c008db0:	40b2                	lw	ra,12(sp)
1c008db2:	0141                	addi	sp,sp,16
1c008db4:	8082                	ret

1c008db6 <__rt_bridge_printf_flush>:
1c008db6:	1141                	addi	sp,sp,-16
1c008db8:	c422                	sw	s0,8(sp)
1c008dba:	c606                	sw	ra,12(sp)
1c008dbc:	1c001437          	lui	s0,0x1c001
1c008dc0:	3f81                	jal	1c008d10 <__rt_bridge_check_connection>
1c008dc2:	20840793          	addi	a5,s0,520 # 1c001208 <__hal_debug_struct>
1c008dc6:	479c                	lw	a5,8(a5)
1c008dc8:	c385                	beqz	a5,1c008de8 <__rt_bridge_printf_flush+0x32>
1c008dca:	20840413          	addi	s0,s0,520
1c008dce:	485c                	lw	a5,20(s0)
1c008dd0:	e399                	bnez	a5,1c008dd6 <__rt_bridge_printf_flush+0x20>
1c008dd2:	4c1c                	lw	a5,24(s0)
1c008dd4:	cb91                	beqz	a5,1c008de8 <__rt_bridge_printf_flush+0x32>
1c008dd6:	374d                	jal	1c008d78 <__rt_bridge_send_notif>
1c008dd8:	485c                	lw	a5,20(s0)
1c008dda:	e789                	bnez	a5,1c008de4 <__rt_bridge_printf_flush+0x2e>
1c008ddc:	4422                	lw	s0,8(sp)
1c008dde:	40b2                	lw	ra,12(sp)
1c008de0:	0141                	addi	sp,sp,16
1c008de2:	bf5d                	j	1c008d98 <__rt_bridge_clear_notif>
1c008de4:	35bd                	jal	1c008c52 <__rt_bridge_wait>
1c008de6:	bfcd                	j	1c008dd8 <__rt_bridge_printf_flush+0x22>
1c008de8:	40b2                	lw	ra,12(sp)
1c008dea:	4422                	lw	s0,8(sp)
1c008dec:	0141                	addi	sp,sp,16
1c008dee:	8082                	ret

1c008df0 <__rt_bridge_req_shutdown>:
1c008df0:	1141                	addi	sp,sp,-16
1c008df2:	c606                	sw	ra,12(sp)
1c008df4:	c422                	sw	s0,8(sp)
1c008df6:	3f29                	jal	1c008d10 <__rt_bridge_check_connection>
1c008df8:	1c0017b7          	lui	a5,0x1c001
1c008dfc:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008e00:	479c                	lw	a5,8(a5)
1c008e02:	c7a1                	beqz	a5,1c008e4a <__rt_bridge_req_shutdown+0x5a>
1c008e04:	1a104437          	lui	s0,0x1a104
1c008e08:	377d                	jal	1c008db6 <__rt_bridge_printf_flush>
1c008e0a:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008e0e:	401c                	lw	a5,0(s0)
1c008e10:	83a5                	srli	a5,a5,0x9
1c008e12:	f837b7b3          	p.bclr	a5,a5,28,3
1c008e16:	0277ae63          	p.beqimm	a5,7,1c008e52 <__rt_bridge_req_shutdown+0x62>
1c008e1a:	4791                	li	a5,4
1c008e1c:	c01c                	sw	a5,0(s0)
1c008e1e:	1a104437          	lui	s0,0x1a104
1c008e22:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008e26:	401c                	lw	a5,0(s0)
1c008e28:	83a5                	srli	a5,a5,0x9
1c008e2a:	f837b7b3          	p.bclr	a5,a5,28,3
1c008e2e:	0277b463          	p.bneimm	a5,7,1c008e56 <__rt_bridge_req_shutdown+0x66>
1c008e32:	00042023          	sw	zero,0(s0)
1c008e36:	1a104437          	lui	s0,0x1a104
1c008e3a:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008e3e:	401c                	lw	a5,0(s0)
1c008e40:	83a5                	srli	a5,a5,0x9
1c008e42:	f837b7b3          	p.bclr	a5,a5,28,3
1c008e46:	0077aa63          	p.beqimm	a5,7,1c008e5a <__rt_bridge_req_shutdown+0x6a>
1c008e4a:	40b2                	lw	ra,12(sp)
1c008e4c:	4422                	lw	s0,8(sp)
1c008e4e:	0141                	addi	sp,sp,16
1c008e50:	8082                	ret
1c008e52:	3501                	jal	1c008c52 <__rt_bridge_wait>
1c008e54:	bf6d                	j	1c008e0e <__rt_bridge_req_shutdown+0x1e>
1c008e56:	3bf5                	jal	1c008c52 <__rt_bridge_wait>
1c008e58:	b7f9                	j	1c008e26 <__rt_bridge_req_shutdown+0x36>
1c008e5a:	3be5                	jal	1c008c52 <__rt_bridge_wait>
1c008e5c:	b7cd                	j	1c008e3e <__rt_bridge_req_shutdown+0x4e>

1c008e5e <__rt_bridge_init>:
1c008e5e:	1c0017b7          	lui	a5,0x1c001
1c008e62:	1a10a737          	lui	a4,0x1a10a
1c008e66:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008e6a:	81070713          	addi	a4,a4,-2032 # 1a109810 <__rt_udma_callback_data+0x1a109518>
1c008e6e:	0ae7ac23          	sw	a4,184(a5)
1c008e72:	4741                	li	a4,16
1c008e74:	0a07a223          	sw	zero,164(a5)
1c008e78:	0a07a623          	sw	zero,172(a5)
1c008e7c:	0a07aa23          	sw	zero,180(a5)
1c008e80:	0ae7ae23          	sw	a4,188(a5)
1c008e84:	00400793          	li	a5,4
1c008e88:	0007a823          	sw	zero,16(a5)
1c008e8c:	0007a023          	sw	zero,0(a5)
1c008e90:	8082                	ret

1c008e92 <__rt_event_init>:
1c008e92:	02052023          	sw	zero,32(a0)
1c008e96:	02052223          	sw	zero,36(a0)
1c008e9a:	02052823          	sw	zero,48(a0)
1c008e9e:	00052023          	sw	zero,0(a0)
1c008ea2:	8082                	ret

1c008ea4 <__rt_wait_event_prepare_blocking>:
1c008ea4:	01800793          	li	a5,24
1c008ea8:	4388                	lw	a0,0(a5)
1c008eaa:	4d18                	lw	a4,24(a0)
1c008eac:	02052223          	sw	zero,36(a0)
1c008eb0:	c398                	sw	a4,0(a5)
1c008eb2:	4785                	li	a5,1
1c008eb4:	d11c                	sw	a5,32(a0)
1c008eb6:	00052023          	sw	zero,0(a0)
1c008eba:	8082                	ret

1c008ebc <rt_event_alloc>:
1c008ebc:	1141                	addi	sp,sp,-16
1c008ebe:	c422                	sw	s0,8(sp)
1c008ec0:	c606                	sw	ra,12(sp)
1c008ec2:	c226                	sw	s1,4(sp)
1c008ec4:	842e                	mv	s0,a1
1c008ec6:	300474f3          	csrrci	s1,mstatus,8
1c008eca:	f14027f3          	csrr	a5,mhartid
1c008ece:	8795                	srai	a5,a5,0x5
1c008ed0:	f267b7b3          	p.bclr	a5,a5,25,6
1c008ed4:	477d                	li	a4,31
1c008ed6:	00378513          	addi	a0,a5,3
1c008eda:	00e79363          	bne	a5,a4,1c008ee0 <rt_event_alloc+0x24>
1c008ede:	4501                	li	a0,0
1c008ee0:	08c00593          	li	a1,140
1c008ee4:	02b405b3          	mul	a1,s0,a1
1c008ee8:	ffcff0ef          	jal	ra,1c0086e4 <rt_alloc>
1c008eec:	87aa                	mv	a5,a0
1c008eee:	557d                	li	a0,-1
1c008ef0:	cf91                	beqz	a5,1c008f0c <rt_event_alloc+0x50>
1c008ef2:	01802683          	lw	a3,24(zero) # 18 <__rt_first_free>
1c008ef6:	4581                	li	a1,0
1c008ef8:	4601                	li	a2,0
1c008efa:	01800713          	li	a4,24
1c008efe:	00864c63          	blt	a2,s0,1c008f16 <rt_event_alloc+0x5a>
1c008f02:	c191                	beqz	a1,1c008f06 <rt_event_alloc+0x4a>
1c008f04:	c314                	sw	a3,0(a4)
1c008f06:	30049073          	csrw	mstatus,s1
1c008f0a:	4501                	li	a0,0
1c008f0c:	40b2                	lw	ra,12(sp)
1c008f0e:	4422                	lw	s0,8(sp)
1c008f10:	4492                	lw	s1,4(sp)
1c008f12:	0141                	addi	sp,sp,16
1c008f14:	8082                	ret
1c008f16:	cf94                	sw	a3,24(a5)
1c008f18:	0207a023          	sw	zero,32(a5)
1c008f1c:	0207a223          	sw	zero,36(a5)
1c008f20:	0207a823          	sw	zero,48(a5)
1c008f24:	0007a023          	sw	zero,0(a5)
1c008f28:	86be                	mv	a3,a5
1c008f2a:	0605                	addi	a2,a2,1
1c008f2c:	4585                	li	a1,1
1c008f2e:	08c78793          	addi	a5,a5,140
1c008f32:	b7f1                	j	1c008efe <rt_event_alloc+0x42>

1c008f34 <rt_event_get>:
1c008f34:	30047773          	csrrci	a4,mstatus,8
1c008f38:	01800793          	li	a5,24
1c008f3c:	4388                	lw	a0,0(a5)
1c008f3e:	c509                	beqz	a0,1c008f48 <rt_event_get+0x14>
1c008f40:	4d14                	lw	a3,24(a0)
1c008f42:	c150                	sw	a2,4(a0)
1c008f44:	c394                	sw	a3,0(a5)
1c008f46:	c10c                	sw	a1,0(a0)
1c008f48:	30071073          	csrw	mstatus,a4
1c008f4c:	8082                	ret

1c008f4e <rt_event_get_blocking>:
1c008f4e:	30047773          	csrrci	a4,mstatus,8
1c008f52:	01800793          	li	a5,24
1c008f56:	4388                	lw	a0,0(a5)
1c008f58:	c909                	beqz	a0,1c008f6a <rt_event_get_blocking+0x1c>
1c008f5a:	4d14                	lw	a3,24(a0)
1c008f5c:	00052223          	sw	zero,4(a0)
1c008f60:	c394                	sw	a3,0(a5)
1c008f62:	4785                	li	a5,1
1c008f64:	00052023          	sw	zero,0(a0)
1c008f68:	d11c                	sw	a5,32(a0)
1c008f6a:	30071073          	csrw	mstatus,a4
1c008f6e:	8082                	ret

1c008f70 <__rt_event_execute>:
1c008f70:	1141                	addi	sp,sp,-16
1c008f72:	c422                	sw	s0,8(sp)
1c008f74:	01800793          	li	a5,24
1c008f78:	43dc                	lw	a5,4(a5)
1c008f7a:	c606                	sw	ra,12(sp)
1c008f7c:	c226                	sw	s1,4(sp)
1c008f7e:	01800413          	li	s0,24
1c008f82:	eb91                	bnez	a5,1c008f96 <__rt_event_execute+0x26>
1c008f84:	c1a9                	beqz	a1,1c008fc6 <__rt_event_execute+0x56>
1c008f86:	10500073          	wfi
1c008f8a:	300467f3          	csrrsi	a5,mstatus,8
1c008f8e:	300477f3          	csrrci	a5,mstatus,8
1c008f92:	405c                	lw	a5,4(s0)
1c008f94:	cb8d                	beqz	a5,1c008fc6 <__rt_event_execute+0x56>
1c008f96:	4485                	li	s1,1
1c008f98:	4f98                	lw	a4,24(a5)
1c008f9a:	53d4                	lw	a3,36(a5)
1c008f9c:	00978823          	sb	s1,16(a5)
1c008fa0:	c058                	sw	a4,4(s0)
1c008fa2:	43c8                	lw	a0,4(a5)
1c008fa4:	4398                	lw	a4,0(a5)
1c008fa6:	e691                	bnez	a3,1c008fb2 <__rt_event_execute+0x42>
1c008fa8:	5394                	lw	a3,32(a5)
1c008faa:	e681                	bnez	a3,1c008fb2 <__rt_event_execute+0x42>
1c008fac:	4014                	lw	a3,0(s0)
1c008fae:	c01c                	sw	a5,0(s0)
1c008fb0:	cf94                	sw	a3,24(a5)
1c008fb2:	0207a023          	sw	zero,32(a5)
1c008fb6:	c711                	beqz	a4,1c008fc2 <__rt_event_execute+0x52>
1c008fb8:	300467f3          	csrrsi	a5,mstatus,8
1c008fbc:	9702                	jalr	a4
1c008fbe:	300477f3          	csrrci	a5,mstatus,8
1c008fc2:	405c                	lw	a5,4(s0)
1c008fc4:	fbf1                	bnez	a5,1c008f98 <__rt_event_execute+0x28>
1c008fc6:	40b2                	lw	ra,12(sp)
1c008fc8:	4422                	lw	s0,8(sp)
1c008fca:	4492                	lw	s1,4(sp)
1c008fcc:	0141                	addi	sp,sp,16
1c008fce:	8082                	ret

1c008fd0 <__rt_wait_event>:
1c008fd0:	1141                	addi	sp,sp,-16
1c008fd2:	c422                	sw	s0,8(sp)
1c008fd4:	c606                	sw	ra,12(sp)
1c008fd6:	842a                	mv	s0,a0
1c008fd8:	501c                	lw	a5,32(s0)
1c008fda:	ef81                	bnez	a5,1c008ff2 <__rt_wait_event+0x22>
1c008fdc:	581c                	lw	a5,48(s0)
1c008fde:	eb91                	bnez	a5,1c008ff2 <__rt_wait_event+0x22>
1c008fe0:	01800793          	li	a5,24
1c008fe4:	4398                	lw	a4,0(a5)
1c008fe6:	40b2                	lw	ra,12(sp)
1c008fe8:	c380                	sw	s0,0(a5)
1c008fea:	cc18                	sw	a4,24(s0)
1c008fec:	4422                	lw	s0,8(sp)
1c008fee:	0141                	addi	sp,sp,16
1c008ff0:	8082                	ret
1c008ff2:	4585                	li	a1,1
1c008ff4:	4501                	li	a0,0
1c008ff6:	3fad                	jal	1c008f70 <__rt_event_execute>
1c008ff8:	b7c5                	j	1c008fd8 <__rt_wait_event+0x8>

1c008ffa <rt_event_wait>:
1c008ffa:	1141                	addi	sp,sp,-16
1c008ffc:	c606                	sw	ra,12(sp)
1c008ffe:	c422                	sw	s0,8(sp)
1c009000:	30047473          	csrrci	s0,mstatus,8
1c009004:	37f1                	jal	1c008fd0 <__rt_wait_event>
1c009006:	30041073          	csrw	mstatus,s0
1c00900a:	40b2                	lw	ra,12(sp)
1c00900c:	4422                	lw	s0,8(sp)
1c00900e:	0141                	addi	sp,sp,16
1c009010:	8082                	ret

1c009012 <__rt_event_sched_init>:
1c009012:	01800513          	li	a0,24
1c009016:	00052023          	sw	zero,0(a0)
1c00901a:	00052223          	sw	zero,4(a0)
1c00901e:	4585                	li	a1,1
1c009020:	0511                	addi	a0,a0,4
1c009022:	bd69                	j	1c008ebc <rt_event_alloc>

1c009024 <__rt_time_poweroff>:
1c009024:	1a10b7b7          	lui	a5,0x1a10b
1c009028:	0791                	addi	a5,a5,4
1c00902a:	0087a783          	lw	a5,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c00902e:	1c001737          	lui	a4,0x1c001
1c009032:	38f72423          	sw	a5,904(a4) # 1c001388 <timer_count>
1c009036:	4501                	li	a0,0
1c009038:	8082                	ret

1c00903a <__rt_time_poweron>:
1c00903a:	1c0017b7          	lui	a5,0x1c001
1c00903e:	3887a703          	lw	a4,904(a5) # 1c001388 <timer_count>
1c009042:	1a10b7b7          	lui	a5,0x1a10b
1c009046:	0791                	addi	a5,a5,4
1c009048:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c00904c:	4501                	li	a0,0
1c00904e:	8082                	ret

1c009050 <rt_event_push_delayed>:
1c009050:	30047373          	csrrci	t1,mstatus,8
1c009054:	1c001637          	lui	a2,0x1c001
1c009058:	3ac62703          	lw	a4,940(a2) # 1c0013ac <first_delayed>
1c00905c:	1a10b7b7          	lui	a5,0x1a10b
1c009060:	0791                	addi	a5,a5,4
1c009062:	0087a783          	lw	a5,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c009066:	46f9                	li	a3,30
1c009068:	0405e5b3          	p.max	a1,a1,zero
1c00906c:	02d5c5b3          	div	a1,a1,a3
1c009070:	800006b7          	lui	a3,0x80000
1c009074:	fff6c693          	not	a3,a3
1c009078:	00d7f833          	and	a6,a5,a3
1c00907c:	0585                	addi	a1,a1,1
1c00907e:	97ae                	add	a5,a5,a1
1c009080:	d95c                	sw	a5,52(a0)
1c009082:	982e                	add	a6,a6,a1
1c009084:	4781                	li	a5,0
1c009086:	c719                	beqz	a4,1c009094 <rt_event_push_delayed+0x44>
1c009088:	03472883          	lw	a7,52(a4)
1c00908c:	00d8f8b3          	and	a7,a7,a3
1c009090:	0108e863          	bltu	a7,a6,1c0090a0 <rt_event_push_delayed+0x50>
1c009094:	cb89                	beqz	a5,1c0090a6 <rt_event_push_delayed+0x56>
1c009096:	cf88                	sw	a0,24(a5)
1c009098:	cd18                	sw	a4,24(a0)
1c00909a:	30031073          	csrw	mstatus,t1
1c00909e:	8082                	ret
1c0090a0:	87ba                	mv	a5,a4
1c0090a2:	4f18                	lw	a4,24(a4)
1c0090a4:	b7cd                	j	1c009086 <rt_event_push_delayed+0x36>
1c0090a6:	1a10b7b7          	lui	a5,0x1a10b
1c0090aa:	0791                	addi	a5,a5,4
1c0090ac:	3aa62623          	sw	a0,940(a2)
1c0090b0:	cd18                	sw	a4,24(a0)
1c0090b2:	0087a703          	lw	a4,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c0090b6:	95ba                	add	a1,a1,a4
1c0090b8:	00b7a823          	sw	a1,16(a5)
1c0090bc:	08500713          	li	a4,133
1c0090c0:	00e7a023          	sw	a4,0(a5)
1c0090c4:	bfd9                	j	1c00909a <rt_event_push_delayed+0x4a>

1c0090c6 <rt_time_wait_us>:
1c0090c6:	1101                	addi	sp,sp,-32
1c0090c8:	85aa                	mv	a1,a0
1c0090ca:	4501                	li	a0,0
1c0090cc:	ce06                	sw	ra,28(sp)
1c0090ce:	cc22                	sw	s0,24(sp)
1c0090d0:	c62e                	sw	a1,12(sp)
1c0090d2:	3db5                	jal	1c008f4e <rt_event_get_blocking>
1c0090d4:	45b2                	lw	a1,12(sp)
1c0090d6:	842a                	mv	s0,a0
1c0090d8:	3fa5                	jal	1c009050 <rt_event_push_delayed>
1c0090da:	8522                	mv	a0,s0
1c0090dc:	4462                	lw	s0,24(sp)
1c0090de:	40f2                	lw	ra,28(sp)
1c0090e0:	6105                	addi	sp,sp,32
1c0090e2:	bf21                	j	1c008ffa <rt_event_wait>

1c0090e4 <__rt_time_init>:
1c0090e4:	1c0017b7          	lui	a5,0x1c001
1c0090e8:	3a07a623          	sw	zero,940(a5) # 1c0013ac <first_delayed>
1c0090ec:	1a10b7b7          	lui	a5,0x1a10b
1c0090f0:	1141                	addi	sp,sp,-16
1c0090f2:	08300713          	li	a4,131
1c0090f6:	0791                	addi	a5,a5,4
1c0090f8:	c606                	sw	ra,12(sp)
1c0090fa:	c422                	sw	s0,8(sp)
1c0090fc:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c009100:	1c0095b7          	lui	a1,0x1c009
1c009104:	16458593          	addi	a1,a1,356 # 1c009164 <__rt_timer_handler>
1c009108:	452d                	li	a0,11
1c00910a:	3aa5                	jal	1c008a82 <rt_irq_set_handler>
1c00910c:	6785                	lui	a5,0x1
1c00910e:	1a10a737          	lui	a4,0x1a10a
1c009112:	80078793          	addi	a5,a5,-2048 # 800 <__rt_udma_callback_data+0x508>
1c009116:	1c0095b7          	lui	a1,0x1c009
1c00911a:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__rt_udma_callback_data+0x1a10950c>
1c00911e:	4601                	li	a2,0
1c009120:	02458593          	addi	a1,a1,36 # 1c009024 <__rt_time_poweroff>
1c009124:	4509                	li	a0,2
1c009126:	3405                	jal	1c008b46 <__rt_cbsys_add>
1c009128:	1c0095b7          	lui	a1,0x1c009
1c00912c:	842a                	mv	s0,a0
1c00912e:	4601                	li	a2,0
1c009130:	03a58593          	addi	a1,a1,58 # 1c00903a <__rt_time_poweron>
1c009134:	450d                	li	a0,3
1c009136:	3c01                	jal	1c008b46 <__rt_cbsys_add>
1c009138:	8d41                	or	a0,a0,s0
1c00913a:	c10d                	beqz	a0,1c00915c <__rt_time_init+0x78>
1c00913c:	f1402673          	csrr	a2,mhartid
1c009140:	1c000537          	lui	a0,0x1c000
1c009144:	40565593          	srai	a1,a2,0x5
1c009148:	f265b5b3          	p.bclr	a1,a1,25,6
1c00914c:	f4563633          	p.bclr	a2,a2,26,5
1c009150:	4f850513          	addi	a0,a0,1272 # 1c0004f8 <__DTOR_END__+0x1a0>
1c009154:	11d000ef          	jal	ra,1c009a70 <printf>
1c009158:	085000ef          	jal	ra,1c0099dc <abort>
1c00915c:	40b2                	lw	ra,12(sp)
1c00915e:	4422                	lw	s0,8(sp)
1c009160:	0141                	addi	sp,sp,16
1c009162:	8082                	ret

1c009164 <__rt_timer_handler>:
1c009164:	7179                	addi	sp,sp,-48
1c009166:	ce36                	sw	a3,28(sp)
1c009168:	1c0016b7          	lui	a3,0x1c001
1c00916c:	ca3e                	sw	a5,20(sp)
1c00916e:	3ac6a783          	lw	a5,940(a3) # 1c0013ac <first_delayed>
1c009172:	cc3a                	sw	a4,24(sp)
1c009174:	1a10b737          	lui	a4,0x1a10b
1c009178:	0711                	addi	a4,a4,4
1c00917a:	d61a                	sw	t1,44(sp)
1c00917c:	d42a                	sw	a0,40(sp)
1c00917e:	d22e                	sw	a1,36(sp)
1c009180:	d032                	sw	a2,32(sp)
1c009182:	c842                	sw	a6,16(sp)
1c009184:	c646                	sw	a7,12(sp)
1c009186:	00872703          	lw	a4,8(a4) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c00918a:	01c02583          	lw	a1,28(zero) # 1c <__rt_sched>
1c00918e:	02002603          	lw	a2,32(zero) # 20 <__rt_sched+0x4>
1c009192:	800008b7          	lui	a7,0x80000
1c009196:	4501                	li	a0,0
1c009198:	4801                	li	a6,0
1c00919a:	ffe8c893          	xori	a7,a7,-2
1c00919e:	e3ad                	bnez	a5,1c009200 <__rt_timer_handler+0x9c>
1c0091a0:	00080463          	beqz	a6,1c0091a8 <__rt_timer_handler+0x44>
1c0091a4:	00b02e23          	sw	a1,28(zero) # 1c <__rt_sched>
1c0091a8:	c119                	beqz	a0,1c0091ae <__rt_timer_handler+0x4a>
1c0091aa:	02c02023          	sw	a2,32(zero) # 20 <__rt_sched+0x4>
1c0091ae:	1a10b7b7          	lui	a5,0x1a10b
1c0091b2:	08100713          	li	a4,129
1c0091b6:	0791                	addi	a5,a5,4
1c0091b8:	3a06a623          	sw	zero,940(a3)
1c0091bc:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c0091c0:	6785                	lui	a5,0x1
1c0091c2:	1a10a737          	lui	a4,0x1a10a
1c0091c6:	80078793          	addi	a5,a5,-2048 # 800 <__rt_udma_callback_data+0x508>
1c0091ca:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__rt_udma_callback_data+0x1a10951c>
1c0091ce:	5332                	lw	t1,44(sp)
1c0091d0:	5522                	lw	a0,40(sp)
1c0091d2:	5592                	lw	a1,36(sp)
1c0091d4:	5602                	lw	a2,32(sp)
1c0091d6:	46f2                	lw	a3,28(sp)
1c0091d8:	4762                	lw	a4,24(sp)
1c0091da:	47d2                	lw	a5,20(sp)
1c0091dc:	4842                	lw	a6,16(sp)
1c0091de:	48b2                	lw	a7,12(sp)
1c0091e0:	6145                	addi	sp,sp,48
1c0091e2:	30200073          	mret
1c0091e6:	0187a303          	lw	t1,24(a5)
1c0091ea:	0007ac23          	sw	zero,24(a5)
1c0091ee:	c591                	beqz	a1,1c0091fa <__rt_timer_handler+0x96>
1c0091f0:	ce1c                	sw	a5,24(a2)
1c0091f2:	863e                	mv	a2,a5
1c0091f4:	4505                	li	a0,1
1c0091f6:	879a                	mv	a5,t1
1c0091f8:	b75d                	j	1c00919e <__rt_timer_handler+0x3a>
1c0091fa:	85be                	mv	a1,a5
1c0091fc:	4805                	li	a6,1
1c0091fe:	bfd5                	j	1c0091f2 <__rt_timer_handler+0x8e>
1c009200:	0347a303          	lw	t1,52(a5)
1c009204:	40670333          	sub	t1,a4,t1
1c009208:	fc68ffe3          	bleu	t1,a7,1c0091e6 <__rt_timer_handler+0x82>
1c00920c:	00080463          	beqz	a6,1c009214 <__rt_timer_handler+0xb0>
1c009210:	00b02e23          	sw	a1,28(zero) # 1c <__rt_sched>
1c009214:	c119                	beqz	a0,1c00921a <__rt_timer_handler+0xb6>
1c009216:	02c02023          	sw	a2,32(zero) # 20 <__rt_sched+0x4>
1c00921a:	3af6a623          	sw	a5,940(a3)
1c00921e:	1a10b6b7          	lui	a3,0x1a10b
1c009222:	0691                	addi	a3,a3,4
1c009224:	0086a603          	lw	a2,8(a3) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c009228:	5bdc                	lw	a5,52(a5)
1c00922a:	40e78733          	sub	a4,a5,a4
1c00922e:	9732                	add	a4,a4,a2
1c009230:	00e6a823          	sw	a4,16(a3)
1c009234:	08500793          	li	a5,133
1c009238:	00f6a023          	sw	a5,0(a3)
1c00923c:	bf49                	j	1c0091ce <__rt_timer_handler+0x6a>

1c00923e <rt_periph_copy>:
1c00923e:	1101                	addi	sp,sp,-32
1c009240:	cc22                	sw	s0,24(sp)
1c009242:	ca26                	sw	s1,20(sp)
1c009244:	ce06                	sw	ra,28(sp)
1c009246:	c84a                	sw	s2,16(sp)
1c009248:	842a                	mv	s0,a0
1c00924a:	84ae                	mv	s1,a1
1c00924c:	30047973          	csrrci	s2,mstatus,8
1c009250:	853e                	mv	a0,a5
1c009252:	eb91                	bnez	a5,1c009266 <rt_periph_copy+0x28>
1c009254:	c632                	sw	a2,12(sp)
1c009256:	c436                	sw	a3,8(sp)
1c009258:	c23a                	sw	a4,4(sp)
1c00925a:	c03e                	sw	a5,0(sp)
1c00925c:	31a1                	jal	1c008ea4 <__rt_wait_event_prepare_blocking>
1c00925e:	4782                	lw	a5,0(sp)
1c009260:	4712                	lw	a4,4(sp)
1c009262:	46a2                	lw	a3,8(sp)
1c009264:	4632                	lw	a2,12(sp)
1c009266:	e419                	bnez	s0,1c009274 <rt_periph_copy+0x36>
1c009268:	03450413          	addi	s0,a0,52
1c00926c:	04052023          	sw	zero,64(a0)
1c009270:	04052823          	sw	zero,80(a0)
1c009274:	444c                	lw	a1,12(s0)
1c009276:	c054                	sw	a3,4(s0)
1c009278:	cc08                	sw	a0,24(s0)
1c00927a:	f645b5b3          	p.bclr	a1,a1,27,4
1c00927e:	4811                	li	a6,4
1c009280:	06b86263          	bltu	a6,a1,1c0092e4 <rt_periph_copy+0xa6>
1c009284:	03000593          	li	a1,48
1c009288:	00549313          	slli	t1,s1,0x5
1c00928c:	959a                	add	a1,a1,t1
1c00928e:	0005a803          	lw	a6,0(a1)
1c009292:	00042a23          	sw	zero,20(s0)
1c009296:	03000893          	li	a7,48
1c00929a:	04081f63          	bnez	a6,1c0092f8 <rt_periph_copy+0xba>
1c00929e:	c180                	sw	s0,0(a1)
1c0092a0:	006885b3          	add	a1,a7,t1
1c0092a4:	0085ae03          	lw	t3,8(a1)
1c0092a8:	c1c0                	sw	s0,4(a1)
1c0092aa:	c0474733          	p.bset	a4,a4,0,4
1c0092ae:	040e1863          	bnez	t3,1c0092fe <rt_periph_copy+0xc0>
1c0092b2:	4014d813          	srai	a6,s1,0x1
1c0092b6:	1a1025b7          	lui	a1,0x1a102
1c0092ba:	08058593          	addi	a1,a1,128 # 1a102080 <__rt_udma_callback_data+0x1a101d88>
1c0092be:	081e                	slli	a6,a6,0x7
1c0092c0:	982e                	add	a6,a6,a1
1c0092c2:	00449593          	slli	a1,s1,0x4
1c0092c6:	89c1                	andi	a1,a1,16
1c0092c8:	95c2                	add	a1,a1,a6
1c0092ca:	00858e93          	addi	t4,a1,8
1c0092ce:	000ea803          	lw	a6,0(t4)
1c0092d2:	02087813          	andi	a6,a6,32
1c0092d6:	02081463          	bnez	a6,1c0092fe <rt_periph_copy+0xc0>
1c0092da:	00c5a22b          	p.sw	a2,4(a1!)
1c0092de:	c194                	sw	a3,0(a1)
1c0092e0:	00eea023          	sw	a4,0(t4)
1c0092e4:	e391                	bnez	a5,1c0092e8 <rt_periph_copy+0xaa>
1c0092e6:	31ed                	jal	1c008fd0 <__rt_wait_event>
1c0092e8:	30091073          	csrw	mstatus,s2
1c0092ec:	40f2                	lw	ra,28(sp)
1c0092ee:	4462                	lw	s0,24(sp)
1c0092f0:	44d2                	lw	s1,20(sp)
1c0092f2:	4942                	lw	s2,16(sp)
1c0092f4:	6105                	addi	sp,sp,32
1c0092f6:	8082                	ret
1c0092f8:	41cc                	lw	a1,4(a1)
1c0092fa:	c9c0                	sw	s0,20(a1)
1c0092fc:	b755                	j	1c0092a0 <rt_periph_copy+0x62>
1c0092fe:	00042823          	sw	zero,16(s0)
1c009302:	c010                	sw	a2,0(s0)
1c009304:	c054                	sw	a3,4(s0)
1c009306:	c418                	sw	a4,8(s0)
1c009308:	fc0e1ee3          	bnez	t3,1c0092e4 <rt_periph_copy+0xa6>
1c00930c:	989a                	add	a7,a7,t1
1c00930e:	0088a423          	sw	s0,8(a7) # 80000008 <pulp__FC+0x80000009>
1c009312:	bfc9                	j	1c0092e4 <rt_periph_copy+0xa6>

1c009314 <__rt_periph_init>:
1c009314:	03000693          	li	a3,48
1c009318:	1c008637          	lui	a2,0x1c008
1c00931c:	2a068693          	addi	a3,a3,672
1c009320:	03000713          	li	a4,48
1c009324:	15a60613          	addi	a2,a2,346 # 1c00815a <udma_event_handler>
1c009328:	00a250fb          	lp.setupi	x1,10,1c009330 <__rt_periph_init+0x1c>
1c00932c:	00c6a22b          	p.sw	a2,4(a3!)
1c009330:	0001                	nop
1c009332:	28072023          	sw	zero,640(a4)
1c009336:	28072223          	sw	zero,644(a4)
1c00933a:	28072423          	sw	zero,648(a4)
1c00933e:	28072623          	sw	zero,652(a4)
1c009342:	28072823          	sw	zero,656(a4)
1c009346:	28072a23          	sw	zero,660(a4)
1c00934a:	28072c23          	sw	zero,664(a4)
1c00934e:	1a102837          	lui	a6,0x1a102
1c009352:	28072e23          	sw	zero,668(a4)
1c009356:	03000793          	li	a5,48
1c00935a:	4681                	li	a3,0
1c00935c:	08080813          	addi	a6,a6,128 # 1a102080 <__rt_udma_callback_data+0x1a101d88>
1c009360:	0148d0fb          	lp.setupi	x1,20,1c009382 <__rt_periph_init+0x6e>
1c009364:	4016d713          	srai	a4,a3,0x1
1c009368:	00469513          	slli	a0,a3,0x4
1c00936c:	071e                	slli	a4,a4,0x7
1c00936e:	9742                	add	a4,a4,a6
1c009370:	8941                	andi	a0,a0,16
1c009372:	972a                	add	a4,a4,a0
1c009374:	0007a023          	sw	zero,0(a5)
1c009378:	0007a423          	sw	zero,8(a5)
1c00937c:	c7d8                	sw	a4,12(a5)
1c00937e:	cfd0                	sw	a2,28(a5)
1c009380:	0685                	addi	a3,a3,1
1c009382:	02078793          	addi	a5,a5,32
1c009386:	8082                	ret

1c009388 <__rt_freq_init>:
1c009388:	1141                	addi	sp,sp,-16
1c00938a:	c422                	sw	s0,8(sp)
1c00938c:	c226                	sw	s1,4(sp)
1c00938e:	c606                	sw	ra,12(sp)
1c009390:	227d                	jal	1c00953e <__rt_flls_constructor>
1c009392:	1c0017b7          	lui	a5,0x1c001
1c009396:	2c87a783          	lw	a5,712(a5) # 1c0012c8 <__rt_platform>
1c00939a:	1c001437          	lui	s0,0x1c001
1c00939e:	3b040493          	addi	s1,s0,944 # 1c0013b0 <__rt_freq_domains>
1c0093a2:	0017ae63          	p.beqimm	a5,1,1c0093be <__rt_freq_init+0x36>
1c0093a6:	4501                	li	a0,0
1c0093a8:	28cd                	jal	1c00949a <__rt_fll_init>
1c0093aa:	3aa42823          	sw	a0,944(s0)
1c0093ae:	4505                	li	a0,1
1c0093b0:	20ed                	jal	1c00949a <__rt_fll_init>
1c0093b2:	c0c8                	sw	a0,4(s1)
1c0093b4:	40b2                	lw	ra,12(sp)
1c0093b6:	4422                	lw	s0,8(sp)
1c0093b8:	4492                	lw	s1,4(sp)
1c0093ba:	0141                	addi	sp,sp,16
1c0093bc:	8082                	ret
1c0093be:	1c0017b7          	lui	a5,0x1c001
1c0093c2:	2d87a783          	lw	a5,728(a5) # 1c0012d8 <__rt_fpga_fc_frequency>
1c0093c6:	3af42823          	sw	a5,944(s0)
1c0093ca:	1c0017b7          	lui	a5,0x1c001
1c0093ce:	2dc7a783          	lw	a5,732(a5) # 1c0012dc <__rt_fpga_periph_frequency>
1c0093d2:	c0dc                	sw	a5,4(s1)
1c0093d4:	b7c5                	j	1c0093b4 <__rt_freq_init+0x2c>

1c0093d6 <rt_padframe_set>:
1c0093d6:	300476f3          	csrrci	a3,mstatus,8
1c0093da:	4158                	lw	a4,4(a0)
1c0093dc:	1a1047b7          	lui	a5,0x1a104
1c0093e0:	01078613          	addi	a2,a5,16 # 1a104010 <__rt_udma_callback_data+0x1a103d18>
1c0093e4:	430c                	lw	a1,0(a4)
1c0093e6:	c20c                	sw	a1,0(a2)
1c0093e8:	434c                	lw	a1,4(a4)
1c0093ea:	01478613          	addi	a2,a5,20
1c0093ee:	c20c                	sw	a1,0(a2)
1c0093f0:	470c                	lw	a1,8(a4)
1c0093f2:	01878613          	addi	a2,a5,24
1c0093f6:	07f1                	addi	a5,a5,28
1c0093f8:	c20c                	sw	a1,0(a2)
1c0093fa:	4758                	lw	a4,12(a4)
1c0093fc:	c398                	sw	a4,0(a5)
1c0093fe:	30069073          	csrw	mstatus,a3
1c009402:	8082                	ret

1c009404 <__rt_padframe_init>:
1c009404:	1c001537          	lui	a0,0x1c001
1c009408:	2cc50513          	addi	a0,a0,716 # 1c0012cc <__rt_padframe_profiles>
1c00940c:	b7e9                	j	1c0093d6 <rt_padframe_set>

1c00940e <__rt_ov7670_init>:
1c00940e:	1c0107b7          	lui	a5,0x1c010
1c009412:	20078023          	sb	zero,512(a5) # 1c010200 <__ov7670Inited>
1c009416:	8082                	ret

1c009418 <__rt_i2c_init>:
1c009418:	1c0107b7          	lui	a5,0x1c010
1c00941c:	26078023          	sb	zero,608(a5) # 1c010260 <__rt_i2c+0x4>
1c009420:	8082                	ret

1c009422 <__rt_fll_set_freq>:
1c009422:	1101                	addi	sp,sp,-32
1c009424:	cc22                	sw	s0,24(sp)
1c009426:	ce06                	sw	ra,28(sp)
1c009428:	842a                	mv	s0,a0
1c00942a:	e501                	bnez	a0,1c009432 <__rt_fll_set_freq+0x10>
1c00942c:	c62e                	sw	a1,12(sp)
1c00942e:	32c9                	jal	1c008df0 <__rt_bridge_req_shutdown>
1c009430:	45b2                	lw	a1,12(sp)
1c009432:	10059733          	p.fl1	a4,a1
1c009436:	47f5                	li	a5,29
1c009438:	4505                	li	a0,1
1c00943a:	82e7b7db          	p.subun	a5,a5,a4,1
1c00943e:	04f567b3          	p.max	a5,a0,a5
1c009442:	fff78713          	addi	a4,a5,-1
1c009446:	00f595b3          	sll	a1,a1,a5
1c00944a:	00e51533          	sll	a0,a0,a4
1c00944e:	1c0016b7          	lui	a3,0x1c001
1c009452:	dc05b733          	p.bclr	a4,a1,14,0
1c009456:	c0f7255b          	p.addunr	a0,a4,a5
1c00945a:	3b868693          	addi	a3,a3,952 # 1c0013b8 <__rt_fll_freq>
1c00945e:	00241713          	slli	a4,s0,0x2
1c009462:	00a6e723          	p.sw	a0,a4(a3)
1c009466:	1c001737          	lui	a4,0x1c001
1c00946a:	38c70713          	addi	a4,a4,908 # 1c00138c <__rt_fll_is_on>
1c00946e:	9722                	add	a4,a4,s0
1c009470:	00074703          	lbu	a4,0(a4)
1c009474:	cf19                	beqz	a4,1c009492 <__rt_fll_set_freq+0x70>
1c009476:	0412                	slli	s0,s0,0x4
1c009478:	0411                	addi	s0,s0,4
1c00947a:	1a1006b7          	lui	a3,0x1a100
1c00947e:	2086f703          	p.lw	a4,s0(a3)
1c009482:	81bd                	srli	a1,a1,0xf
1c009484:	de05a733          	p.insert	a4,a1,15,0
1c009488:	0785                	addi	a5,a5,1
1c00948a:	c7a7a733          	p.insert	a4,a5,3,26
1c00948e:	00e6e423          	p.sw	a4,s0(a3)
1c009492:	40f2                	lw	ra,28(sp)
1c009494:	4462                	lw	s0,24(sp)
1c009496:	6105                	addi	sp,sp,32
1c009498:	8082                	ret

1c00949a <__rt_fll_init>:
1c00949a:	1141                	addi	sp,sp,-16
1c00949c:	00451613          	slli	a2,a0,0x4
1c0094a0:	c226                	sw	s1,4(sp)
1c0094a2:	00460813          	addi	a6,a2,4
1c0094a6:	84aa                	mv	s1,a0
1c0094a8:	1a1006b7          	lui	a3,0x1a100
1c0094ac:	c606                	sw	ra,12(sp)
1c0094ae:	c422                	sw	s0,8(sp)
1c0094b0:	2106f703          	p.lw	a4,a6(a3)
1c0094b4:	87ba                	mv	a5,a4
1c0094b6:	04074163          	bltz	a4,1c0094f8 <__rt_fll_init+0x5e>
1c0094ba:	00860893          	addi	a7,a2,8
1c0094be:	2116f503          	p.lw	a0,a7(a3)
1c0094c2:	4599                	li	a1,6
1c0094c4:	caa5a533          	p.insert	a0,a1,5,10
1c0094c8:	05000593          	li	a1,80
1c0094cc:	d705a533          	p.insert	a0,a1,11,16
1c0094d0:	1a1005b7          	lui	a1,0x1a100
1c0094d4:	00a5e8a3          	p.sw	a0,a7(a1)
1c0094d8:	0631                	addi	a2,a2,12
1c0094da:	20c6f683          	p.lw	a3,a2(a3)
1c0094de:	14c00513          	li	a0,332
1c0094e2:	d30526b3          	p.insert	a3,a0,9,16
1c0094e6:	00d5e623          	p.sw	a3,a2(a1)
1c0094ea:	4685                	li	a3,1
1c0094ec:	c1e6a7b3          	p.insert	a5,a3,0,30
1c0094f0:	c1f6a7b3          	p.insert	a5,a3,0,31
1c0094f4:	00f5e823          	p.sw	a5,a6(a1)
1c0094f8:	1c001637          	lui	a2,0x1c001
1c0094fc:	00249693          	slli	a3,s1,0x2
1c009500:	3b860613          	addi	a2,a2,952 # 1c0013b8 <__rt_fll_freq>
1c009504:	96b2                	add	a3,a3,a2
1c009506:	4280                	lw	s0,0(a3)
1c009508:	c00d                	beqz	s0,1c00952a <__rt_fll_init+0x90>
1c00950a:	85a2                	mv	a1,s0
1c00950c:	8526                	mv	a0,s1
1c00950e:	3f11                	jal	1c009422 <__rt_fll_set_freq>
1c009510:	1c0017b7          	lui	a5,0x1c001
1c009514:	38c78793          	addi	a5,a5,908 # 1c00138c <__rt_fll_is_on>
1c009518:	4705                	li	a4,1
1c00951a:	00e7c4a3          	p.sb	a4,s1(a5)
1c00951e:	8522                	mv	a0,s0
1c009520:	40b2                	lw	ra,12(sp)
1c009522:	4422                	lw	s0,8(sp)
1c009524:	4492                	lw	s1,4(sp)
1c009526:	0141                	addi	sp,sp,16
1c009528:	8082                	ret
1c00952a:	10075733          	p.exthz	a4,a4
1c00952e:	c7a797b3          	p.extractu	a5,a5,3,26
1c009532:	073e                	slli	a4,a4,0xf
1c009534:	17fd                	addi	a5,a5,-1
1c009536:	00f75433          	srl	s0,a4,a5
1c00953a:	c280                	sw	s0,0(a3)
1c00953c:	bfd1                	j	1c009510 <__rt_fll_init+0x76>

1c00953e <__rt_flls_constructor>:
1c00953e:	1c0017b7          	lui	a5,0x1c001
1c009542:	3a07ac23          	sw	zero,952(a5) # 1c0013b8 <__rt_fll_freq>
1c009546:	3b878793          	addi	a5,a5,952
1c00954a:	0007a223          	sw	zero,4(a5)
1c00954e:	1c0017b7          	lui	a5,0x1c001
1c009552:	38079623          	sh	zero,908(a5) # 1c00138c <__rt_fll_is_on>
1c009556:	8082                	ret

1c009558 <rt_is_fc>:
1c009558:	f1402573          	csrr	a0,mhartid
1c00955c:	8515                	srai	a0,a0,0x5
1c00955e:	f2653533          	p.bclr	a0,a0,25,6
1c009562:	1505                	addi	a0,a0,-31
1c009564:	00153513          	seqz	a0,a0
1c009568:	8082                	ret

1c00956a <__rt_io_end_of_flush>:
1c00956a:	1c0017b7          	lui	a5,0x1c001
1c00956e:	3807aa23          	sw	zero,916(a5) # 1c001394 <__rt_io_pending_flush>
1c009572:	00052c23          	sw	zero,24(a0)
1c009576:	8082                	ret

1c009578 <__rt_io_unlock>:
1c009578:	1c0017b7          	lui	a5,0x1c001
1c00957c:	2187a783          	lw	a5,536(a5) # 1c001218 <__hal_debug_struct+0x10>
1c009580:	cf81                	beqz	a5,1c009598 <__rt_io_unlock+0x20>
1c009582:	1c0017b7          	lui	a5,0x1c001
1c009586:	39c7a783          	lw	a5,924(a5) # 1c00139c <_rt_io_uart>
1c00958a:	e799                	bnez	a5,1c009598 <__rt_io_unlock+0x20>
1c00958c:	1c0017b7          	lui	a5,0x1c001
1c009590:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c009594:	0227b163          	p.bneimm	a5,2,1c0095b6 <__rt_io_unlock+0x3e>
1c009598:	1141                	addi	sp,sp,-16
1c00959a:	c606                	sw	ra,12(sp)
1c00959c:	3f75                	jal	1c009558 <rt_is_fc>
1c00959e:	c909                	beqz	a0,1c0095b0 <__rt_io_unlock+0x38>
1c0095a0:	40b2                	lw	ra,12(sp)
1c0095a2:	1c001537          	lui	a0,0x1c001
1c0095a6:	dc450513          	addi	a0,a0,-572 # 1c000dc4 <__rt_io_fc_lock>
1c0095aa:	0141                	addi	sp,sp,16
1c0095ac:	e5cff06f          	j	1c008c08 <__rt_fc_unlock>
1c0095b0:	40b2                	lw	ra,12(sp)
1c0095b2:	0141                	addi	sp,sp,16
1c0095b4:	8082                	ret
1c0095b6:	8082                	ret

1c0095b8 <__rt_io_lock>:
1c0095b8:	1c0017b7          	lui	a5,0x1c001
1c0095bc:	2187a783          	lw	a5,536(a5) # 1c001218 <__hal_debug_struct+0x10>
1c0095c0:	cf81                	beqz	a5,1c0095d8 <__rt_io_lock+0x20>
1c0095c2:	1c0017b7          	lui	a5,0x1c001
1c0095c6:	39c7a783          	lw	a5,924(a5) # 1c00139c <_rt_io_uart>
1c0095ca:	e799                	bnez	a5,1c0095d8 <__rt_io_lock+0x20>
1c0095cc:	1c0017b7          	lui	a5,0x1c001
1c0095d0:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c0095d4:	0227b163          	p.bneimm	a5,2,1c0095f6 <__rt_io_lock+0x3e>
1c0095d8:	1141                	addi	sp,sp,-16
1c0095da:	c606                	sw	ra,12(sp)
1c0095dc:	3fb5                	jal	1c009558 <rt_is_fc>
1c0095de:	c909                	beqz	a0,1c0095f0 <__rt_io_lock+0x38>
1c0095e0:	40b2                	lw	ra,12(sp)
1c0095e2:	1c001537          	lui	a0,0x1c001
1c0095e6:	dc450513          	addi	a0,a0,-572 # 1c000dc4 <__rt_io_fc_lock>
1c0095ea:	0141                	addi	sp,sp,16
1c0095ec:	deaff06f          	j	1c008bd6 <__rt_fc_lock>
1c0095f0:	40b2                	lw	ra,12(sp)
1c0095f2:	0141                	addi	sp,sp,16
1c0095f4:	8082                	ret
1c0095f6:	8082                	ret

1c0095f8 <__rt_io_start>:
1c0095f8:	1101                	addi	sp,sp,-32
1c0095fa:	0028                	addi	a0,sp,8
1c0095fc:	ce06                	sw	ra,28(sp)
1c0095fe:	cc22                	sw	s0,24(sp)
1c009600:	68d000ef          	jal	ra,1c00a48c <rt_uart_conf_init>
1c009604:	4585                	li	a1,1
1c009606:	4501                	li	a0,0
1c009608:	8b5ff0ef          	jal	ra,1c008ebc <rt_event_alloc>
1c00960c:	547d                	li	s0,-1
1c00960e:	ed15                	bnez	a0,1c00964a <__rt_io_start+0x52>
1c009610:	1c0017b7          	lui	a5,0x1c001
1c009614:	2d47a783          	lw	a5,724(a5) # 1c0012d4 <__rt_iodev_uart_baudrate>
1c009618:	842a                	mv	s0,a0
1c00961a:	1c001537          	lui	a0,0x1c001
1c00961e:	e3ff7597          	auipc	a1,0xe3ff7
1c009622:	9fe58593          	addi	a1,a1,-1538 # 1c <__rt_sched>
1c009626:	2e050513          	addi	a0,a0,736 # 1c0012e0 <_edata>
1c00962a:	c43e                	sw	a5,8(sp)
1c00962c:	867ff0ef          	jal	ra,1c008e92 <__rt_event_init>
1c009630:	1c0017b7          	lui	a5,0x1c001
1c009634:	3847a503          	lw	a0,900(a5) # 1c001384 <__rt_iodev_uart_channel>
1c009638:	4681                	li	a3,0
1c00963a:	4601                	li	a2,0
1c00963c:	002c                	addi	a1,sp,8
1c00963e:	65f000ef          	jal	ra,1c00a49c <__rt_uart_open>
1c009642:	1c0017b7          	lui	a5,0x1c001
1c009646:	38a7ae23          	sw	a0,924(a5) # 1c00139c <_rt_io_uart>
1c00964a:	8522                	mv	a0,s0
1c00964c:	40f2                	lw	ra,28(sp)
1c00964e:	4462                	lw	s0,24(sp)
1c009650:	6105                	addi	sp,sp,32
1c009652:	8082                	ret

1c009654 <rt_event_execute.isra.0.constprop.6>:
1c009654:	1141                	addi	sp,sp,-16
1c009656:	c606                	sw	ra,12(sp)
1c009658:	c422                	sw	s0,8(sp)
1c00965a:	30047473          	csrrci	s0,mstatus,8
1c00965e:	4585                	li	a1,1
1c009660:	e3ff7517          	auipc	a0,0xe3ff7
1c009664:	9bc50513          	addi	a0,a0,-1604 # 1c <__rt_sched>
1c009668:	909ff0ef          	jal	ra,1c008f70 <__rt_event_execute>
1c00966c:	30041073          	csrw	mstatus,s0
1c009670:	40b2                	lw	ra,12(sp)
1c009672:	4422                	lw	s0,8(sp)
1c009674:	0141                	addi	sp,sp,16
1c009676:	8082                	ret

1c009678 <__rt_io_uart_wait_pending>:
1c009678:	1141                	addi	sp,sp,-16
1c00967a:	c422                	sw	s0,8(sp)
1c00967c:	c606                	sw	ra,12(sp)
1c00967e:	c226                	sw	s1,4(sp)
1c009680:	1c001437          	lui	s0,0x1c001
1c009684:	39442783          	lw	a5,916(s0) # 1c001394 <__rt_io_pending_flush>
1c009688:	e39d                	bnez	a5,1c0096ae <__rt_io_uart_wait_pending+0x36>
1c00968a:	1c001437          	lui	s0,0x1c001
1c00968e:	39040413          	addi	s0,s0,912 # 1c001390 <__rt_io_event_current>
1c009692:	4004                	lw	s1,0(s0)
1c009694:	c881                	beqz	s1,1c0096a4 <__rt_io_uart_wait_pending+0x2c>
1c009696:	35c9                	jal	1c009558 <rt_is_fc>
1c009698:	c511                	beqz	a0,1c0096a4 <__rt_io_uart_wait_pending+0x2c>
1c00969a:	8526                	mv	a0,s1
1c00969c:	95fff0ef          	jal	ra,1c008ffa <rt_event_wait>
1c0096a0:	00042023          	sw	zero,0(s0)
1c0096a4:	40b2                	lw	ra,12(sp)
1c0096a6:	4422                	lw	s0,8(sp)
1c0096a8:	4492                	lw	s1,4(sp)
1c0096aa:	0141                	addi	sp,sp,16
1c0096ac:	8082                	ret
1c0096ae:	35e9                	jal	1c009578 <__rt_io_unlock>
1c0096b0:	3755                	jal	1c009654 <rt_event_execute.isra.0.constprop.6>
1c0096b2:	3719                	jal	1c0095b8 <__rt_io_lock>
1c0096b4:	bfc1                	j	1c009684 <__rt_io_uart_wait_pending+0xc>

1c0096b6 <__rt_io_stop>:
1c0096b6:	1141                	addi	sp,sp,-16
1c0096b8:	c422                	sw	s0,8(sp)
1c0096ba:	1c001437          	lui	s0,0x1c001
1c0096be:	c606                	sw	ra,12(sp)
1c0096c0:	39c40413          	addi	s0,s0,924 # 1c00139c <_rt_io_uart>
1c0096c4:	3f55                	jal	1c009678 <__rt_io_uart_wait_pending>
1c0096c6:	4008                	lw	a0,0(s0)
1c0096c8:	4581                	li	a1,0
1c0096ca:	655000ef          	jal	ra,1c00a51e <rt_uart_close>
1c0096ce:	40b2                	lw	ra,12(sp)
1c0096d0:	00042023          	sw	zero,0(s0)
1c0096d4:	4422                	lw	s0,8(sp)
1c0096d6:	4501                	li	a0,0
1c0096d8:	0141                	addi	sp,sp,16
1c0096da:	8082                	ret

1c0096dc <__rt_io_uart_flush.constprop.5>:
1c0096dc:	1101                	addi	sp,sp,-32
1c0096de:	ca26                	sw	s1,20(sp)
1c0096e0:	ce06                	sw	ra,28(sp)
1c0096e2:	cc22                	sw	s0,24(sp)
1c0096e4:	c84a                	sw	s2,16(sp)
1c0096e6:	c64e                	sw	s3,12(sp)
1c0096e8:	c452                	sw	s4,8(sp)
1c0096ea:	1c0014b7          	lui	s1,0x1c001
1c0096ee:	3944a783          	lw	a5,916(s1) # 1c001394 <__rt_io_pending_flush>
1c0096f2:	39448413          	addi	s0,s1,916
1c0096f6:	e3a5                	bnez	a5,1c009756 <__rt_io_uart_flush.constprop.5+0x7a>
1c0096f8:	1c0019b7          	lui	s3,0x1c001
1c0096fc:	20898493          	addi	s1,s3,520 # 1c001208 <__hal_debug_struct>
1c009700:	0184a903          	lw	s2,24(s1)
1c009704:	04090f63          	beqz	s2,1c009762 <__rt_io_uart_flush.constprop.5+0x86>
1c009708:	3d81                	jal	1c009558 <rt_is_fc>
1c00970a:	cd21                	beqz	a0,1c009762 <__rt_io_uart_flush.constprop.5+0x86>
1c00970c:	4785                	li	a5,1
1c00970e:	c01c                	sw	a5,0(s0)
1c009710:	1c0017b7          	lui	a5,0x1c001
1c009714:	39c7aa03          	lw	s4,924(a5) # 1c00139c <_rt_io_uart>
1c009718:	1c0095b7          	lui	a1,0x1c009
1c00971c:	20898613          	addi	a2,s3,520
1c009720:	56a58593          	addi	a1,a1,1386 # 1c00956a <__rt_io_end_of_flush>
1c009724:	4501                	li	a0,0
1c009726:	80fff0ef          	jal	ra,1c008f34 <rt_event_get>
1c00972a:	004a2583          	lw	a1,4(s4) # 1004 <__rt_udma_callback_data+0xd0c>
1c00972e:	87aa                	mv	a5,a0
1c009730:	4701                	li	a4,0
1c009732:	0586                	slli	a1,a1,0x1
1c009734:	86ca                	mv	a3,s2
1c009736:	01c48613          	addi	a2,s1,28
1c00973a:	0585                	addi	a1,a1,1
1c00973c:	4501                	li	a0,0
1c00973e:	3601                	jal	1c00923e <rt_periph_copy>
1c009740:	3d25                	jal	1c009578 <__rt_io_unlock>
1c009742:	401c                	lw	a5,0(s0)
1c009744:	ef89                	bnez	a5,1c00975e <__rt_io_uart_flush.constprop.5+0x82>
1c009746:	4462                	lw	s0,24(sp)
1c009748:	40f2                	lw	ra,28(sp)
1c00974a:	44d2                	lw	s1,20(sp)
1c00974c:	4942                	lw	s2,16(sp)
1c00974e:	49b2                	lw	s3,12(sp)
1c009750:	4a22                	lw	s4,8(sp)
1c009752:	6105                	addi	sp,sp,32
1c009754:	b595                	j	1c0095b8 <__rt_io_lock>
1c009756:	350d                	jal	1c009578 <__rt_io_unlock>
1c009758:	3df5                	jal	1c009654 <rt_event_execute.isra.0.constprop.6>
1c00975a:	3db9                	jal	1c0095b8 <__rt_io_lock>
1c00975c:	bf49                	j	1c0096ee <__rt_io_uart_flush.constprop.5+0x12>
1c00975e:	3ddd                	jal	1c009654 <rt_event_execute.isra.0.constprop.6>
1c009760:	b7cd                	j	1c009742 <__rt_io_uart_flush.constprop.5+0x66>
1c009762:	40f2                	lw	ra,28(sp)
1c009764:	4462                	lw	s0,24(sp)
1c009766:	44d2                	lw	s1,20(sp)
1c009768:	4942                	lw	s2,16(sp)
1c00976a:	49b2                	lw	s3,12(sp)
1c00976c:	4a22                	lw	s4,8(sp)
1c00976e:	6105                	addi	sp,sp,32
1c009770:	8082                	ret

1c009772 <memcpy>:
1c009772:	00a5e733          	or	a4,a1,a0
1c009776:	fa273733          	p.bclr	a4,a4,29,2
1c00977a:	87aa                	mv	a5,a0
1c00977c:	c709                	beqz	a4,1c009786 <memcpy+0x14>
1c00977e:	962e                	add	a2,a2,a1
1c009780:	00c59f63          	bne	a1,a2,1c00979e <memcpy+0x2c>
1c009784:	8082                	ret
1c009786:	fa263733          	p.bclr	a4,a2,29,2
1c00978a:	fb75                	bnez	a4,1c00977e <memcpy+0xc>
1c00978c:	962e                	add	a2,a2,a1
1c00978e:	00c59363          	bne	a1,a2,1c009794 <memcpy+0x22>
1c009792:	8082                	ret
1c009794:	0045a70b          	p.lw	a4,4(a1!)
1c009798:	00e7a22b          	p.sw	a4,4(a5!)
1c00979c:	bfcd                	j	1c00978e <memcpy+0x1c>
1c00979e:	0015c70b          	p.lbu	a4,1(a1!)
1c0097a2:	00e780ab          	p.sb	a4,1(a5!)
1c0097a6:	bfe9                	j	1c009780 <memcpy+0xe>

1c0097a8 <memmove>:
1c0097a8:	40b507b3          	sub	a5,a0,a1
1c0097ac:	00c7e763          	bltu	a5,a2,1c0097ba <memmove+0x12>
1c0097b0:	962a                	add	a2,a2,a0
1c0097b2:	87aa                	mv	a5,a0
1c0097b4:	00c79f63          	bne	a5,a2,1c0097d2 <memmove+0x2a>
1c0097b8:	8082                	ret
1c0097ba:	167d                	addi	a2,a2,-1
1c0097bc:	00c507b3          	add	a5,a0,a2
1c0097c0:	95b2                	add	a1,a1,a2
1c0097c2:	0605                	addi	a2,a2,1
1c0097c4:	004640fb          	lp.setup	x1,a2,1c0097cc <memmove+0x24>
1c0097c8:	fff5c70b          	p.lbu	a4,-1(a1!)
1c0097cc:	fee78fab          	p.sb	a4,-1(a5!)
1c0097d0:	8082                	ret
1c0097d2:	0015c70b          	p.lbu	a4,1(a1!)
1c0097d6:	00e780ab          	p.sb	a4,1(a5!)
1c0097da:	bfe9                	j	1c0097b4 <memmove+0xc>

1c0097dc <strchr>:
1c0097dc:	0ff5f593          	andi	a1,a1,255
1c0097e0:	00054703          	lbu	a4,0(a0)
1c0097e4:	87aa                	mv	a5,a0
1c0097e6:	0505                	addi	a0,a0,1
1c0097e8:	00b70563          	beq	a4,a1,1c0097f2 <strchr+0x16>
1c0097ec:	fb75                	bnez	a4,1c0097e0 <strchr+0x4>
1c0097ee:	c191                	beqz	a1,1c0097f2 <strchr+0x16>
1c0097f0:	4781                	li	a5,0
1c0097f2:	853e                	mv	a0,a5
1c0097f4:	8082                	ret

1c0097f6 <__rt_putc_debug_bridge>:
1c0097f6:	1141                	addi	sp,sp,-16
1c0097f8:	c422                	sw	s0,8(sp)
1c0097fa:	1c001437          	lui	s0,0x1c001
1c0097fe:	c226                	sw	s1,4(sp)
1c009800:	c606                	sw	ra,12(sp)
1c009802:	84aa                	mv	s1,a0
1c009804:	20840413          	addi	s0,s0,520 # 1c001208 <__hal_debug_struct>
1c009808:	485c                	lw	a5,20(s0)
1c00980a:	c791                	beqz	a5,1c009816 <__rt_putc_debug_bridge+0x20>
1c00980c:	06400513          	li	a0,100
1c009810:	8b7ff0ef          	jal	ra,1c0090c6 <rt_time_wait_us>
1c009814:	bfd5                	j	1c009808 <__rt_putc_debug_bridge+0x12>
1c009816:	4c1c                	lw	a5,24(s0)
1c009818:	00178713          	addi	a4,a5,1
1c00981c:	97a2                	add	a5,a5,s0
1c00981e:	00978e23          	sb	s1,28(a5)
1c009822:	cc18                	sw	a4,24(s0)
1c009824:	4c14                	lw	a3,24(s0)
1c009826:	08000793          	li	a5,128
1c00982a:	00f68463          	beq	a3,a5,1c009832 <__rt_putc_debug_bridge+0x3c>
1c00982e:	00a4b663          	p.bneimm	s1,10,1c00983a <__rt_putc_debug_bridge+0x44>
1c009832:	c701                	beqz	a4,1c00983a <__rt_putc_debug_bridge+0x44>
1c009834:	c858                	sw	a4,20(s0)
1c009836:	00042c23          	sw	zero,24(s0)
1c00983a:	4c1c                	lw	a5,24(s0)
1c00983c:	e799                	bnez	a5,1c00984a <__rt_putc_debug_bridge+0x54>
1c00983e:	4422                	lw	s0,8(sp)
1c009840:	40b2                	lw	ra,12(sp)
1c009842:	4492                	lw	s1,4(sp)
1c009844:	0141                	addi	sp,sp,16
1c009846:	d70ff06f          	j	1c008db6 <__rt_bridge_printf_flush>
1c00984a:	40b2                	lw	ra,12(sp)
1c00984c:	4422                	lw	s0,8(sp)
1c00984e:	4492                	lw	s1,4(sp)
1c009850:	0141                	addi	sp,sp,16
1c009852:	8082                	ret

1c009854 <__rt_putc_uart>:
1c009854:	1101                	addi	sp,sp,-32
1c009856:	c62a                	sw	a0,12(sp)
1c009858:	ce06                	sw	ra,28(sp)
1c00985a:	3d39                	jal	1c009678 <__rt_io_uart_wait_pending>
1c00985c:	1c0017b7          	lui	a5,0x1c001
1c009860:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c009864:	4f94                	lw	a3,24(a5)
1c009866:	4532                	lw	a0,12(sp)
1c009868:	00168713          	addi	a4,a3,1 # 1a100001 <__rt_udma_callback_data+0x1a0ffd09>
1c00986c:	cf98                	sw	a4,24(a5)
1c00986e:	97b6                	add	a5,a5,a3
1c009870:	00a78e23          	sb	a0,28(a5)
1c009874:	08000793          	li	a5,128
1c009878:	00f70463          	beq	a4,a5,1c009880 <__rt_putc_uart+0x2c>
1c00987c:	00a53563          	p.bneimm	a0,10,1c009886 <__rt_putc_uart+0x32>
1c009880:	40f2                	lw	ra,28(sp)
1c009882:	6105                	addi	sp,sp,32
1c009884:	bda1                	j	1c0096dc <__rt_io_uart_flush.constprop.5>
1c009886:	40f2                	lw	ra,28(sp)
1c009888:	6105                	addi	sp,sp,32
1c00988a:	8082                	ret

1c00988c <tfp_putc.isra.3>:
1c00988c:	1c0017b7          	lui	a5,0x1c001
1c009890:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c009894:	1141                	addi	sp,sp,-16
1c009896:	c422                	sw	s0,8(sp)
1c009898:	c606                	sw	ra,12(sp)
1c00989a:	842a                	mv	s0,a0
1c00989c:	0427b663          	p.bneimm	a5,2,1c0098e8 <tfp_putc.isra.3+0x5c>
1c0098a0:	3965                	jal	1c009558 <rt_is_fc>
1c0098a2:	c149                	beqz	a0,1c009924 <tfp_putc.isra.3+0x98>
1c0098a4:	1c0017b7          	lui	a5,0x1c001
1c0098a8:	39878613          	addi	a2,a5,920 # 1c001398 <__rt_putc_host_buffer_index>
1c0098ac:	4214                	lw	a3,0(a2)
1c0098ae:	1c010537          	lui	a0,0x1c010
1c0098b2:	39878793          	addi	a5,a5,920
1c0098b6:	00168713          	addi	a4,a3,1
1c0098ba:	c218                	sw	a4,0(a2)
1c0098bc:	26c50613          	addi	a2,a0,620 # 1c01026c <__rt_putc_host_buffer>
1c0098c0:	008646a3          	p.sb	s0,a3(a2)
1c0098c4:	07f00613          	li	a2,127
1c0098c8:	26c50693          	addi	a3,a0,620
1c0098cc:	00c70463          	beq	a4,a2,1c0098d4 <tfp_putc.isra.3+0x48>
1c0098d0:	04a43a63          	p.bneimm	s0,10,1c009924 <tfp_putc.isra.3+0x98>
1c0098d4:	0006c723          	p.sb	zero,a4(a3)
1c0098d8:	4422                	lw	s0,8(sp)
1c0098da:	40b2                	lw	ra,12(sp)
1c0098dc:	0007a023          	sw	zero,0(a5)
1c0098e0:	26c50513          	addi	a0,a0,620
1c0098e4:	0141                	addi	sp,sp,16
1c0098e6:	aabd                	j	1c009a64 <semihost_write0>
1c0098e8:	1c0017b7          	lui	a5,0x1c001
1c0098ec:	39c7a783          	lw	a5,924(a5) # 1c00139c <_rt_io_uart>
1c0098f0:	c789                	beqz	a5,1c0098fa <tfp_putc.isra.3+0x6e>
1c0098f2:	4422                	lw	s0,8(sp)
1c0098f4:	40b2                	lw	ra,12(sp)
1c0098f6:	0141                	addi	sp,sp,16
1c0098f8:	bfb1                	j	1c009854 <__rt_putc_uart>
1c0098fa:	1c0017b7          	lui	a5,0x1c001
1c0098fe:	2187a783          	lw	a5,536(a5) # 1c001218 <__hal_debug_struct+0x10>
1c009902:	c78d                	beqz	a5,1c00992c <tfp_putc.isra.3+0xa0>
1c009904:	6609                	lui	a2,0x2
1c009906:	f14027f3          	csrr	a5,mhartid
1c00990a:	f8060613          	addi	a2,a2,-128 # 1f80 <__rt_udma_callback_data+0x1c88>
1c00990e:	00379713          	slli	a4,a5,0x3
1c009912:	078a                	slli	a5,a5,0x2
1c009914:	ee873733          	p.bclr	a4,a4,23,8
1c009918:	8ff1                	and	a5,a5,a2
1c00991a:	97ba                	add	a5,a5,a4
1c00991c:	1a10f737          	lui	a4,0x1a10f
1c009920:	00a767a3          	p.sw	a0,a5(a4)
1c009924:	40b2                	lw	ra,12(sp)
1c009926:	4422                	lw	s0,8(sp)
1c009928:	0141                	addi	sp,sp,16
1c00992a:	8082                	ret
1c00992c:	4422                	lw	s0,8(sp)
1c00992e:	40b2                	lw	ra,12(sp)
1c009930:	0141                	addi	sp,sp,16
1c009932:	b5d1                	j	1c0097f6 <__rt_putc_debug_bridge>

1c009934 <fputc_locked>:
1c009934:	1141                	addi	sp,sp,-16
1c009936:	c422                	sw	s0,8(sp)
1c009938:	842a                	mv	s0,a0
1c00993a:	0ff57513          	andi	a0,a0,255
1c00993e:	c606                	sw	ra,12(sp)
1c009940:	37b1                	jal	1c00988c <tfp_putc.isra.3>
1c009942:	8522                	mv	a0,s0
1c009944:	40b2                	lw	ra,12(sp)
1c009946:	4422                	lw	s0,8(sp)
1c009948:	0141                	addi	sp,sp,16
1c00994a:	8082                	ret

1c00994c <_prf_locked>:
1c00994c:	1101                	addi	sp,sp,-32
1c00994e:	ce06                	sw	ra,28(sp)
1c009950:	c02a                	sw	a0,0(sp)
1c009952:	c62e                	sw	a1,12(sp)
1c009954:	c432                	sw	a2,8(sp)
1c009956:	c236                	sw	a3,4(sp)
1c009958:	3185                	jal	1c0095b8 <__rt_io_lock>
1c00995a:	4692                	lw	a3,4(sp)
1c00995c:	4622                	lw	a2,8(sp)
1c00995e:	45b2                	lw	a1,12(sp)
1c009960:	4502                	lw	a0,0(sp)
1c009962:	2425                	jal	1c009b8a <_prf>
1c009964:	c02a                	sw	a0,0(sp)
1c009966:	3909                	jal	1c009578 <__rt_io_unlock>
1c009968:	40f2                	lw	ra,28(sp)
1c00996a:	4502                	lw	a0,0(sp)
1c00996c:	6105                	addi	sp,sp,32
1c00996e:	8082                	ret

1c009970 <exit>:
1c009970:	1141                	addi	sp,sp,-16
1c009972:	c422                	sw	s0,8(sp)
1c009974:	1a104437          	lui	s0,0x1a104
1c009978:	c04a                	sw	s2,0(sp)
1c00997a:	0a040793          	addi	a5,s0,160 # 1a1040a0 <__rt_udma_callback_data+0x1a103da8>
1c00997e:	c606                	sw	ra,12(sp)
1c009980:	c226                	sw	s1,4(sp)
1c009982:	c1f54933          	p.bset	s2,a0,0,31
1c009986:	0127a023          	sw	s2,0(a5)
1c00998a:	1c0017b7          	lui	a5,0x1c001
1c00998e:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c009992:	0027be63          	p.bneimm	a5,2,1c0099ae <exit+0x3e>
1c009996:	c519                	beqz	a0,1c0099a4 <exit+0x34>
1c009998:	00020537          	lui	a0,0x20
1c00999c:	02350513          	addi	a0,a0,35 # 20023 <__rt_udma_callback_data+0x1fd2b>
1c0099a0:	20e9                	jal	1c009a6a <semihost_exit>
1c0099a2:	a001                	j	1c0099a2 <exit+0x32>
1c0099a4:	00020537          	lui	a0,0x20
1c0099a8:	02650513          	addi	a0,a0,38 # 20026 <__rt_udma_callback_data+0x1fd2e>
1c0099ac:	bfd5                	j	1c0099a0 <exit+0x30>
1c0099ae:	1c0014b7          	lui	s1,0x1c001
1c0099b2:	20848493          	addi	s1,s1,520 # 1c001208 <__hal_debug_struct>
1c0099b6:	c00ff0ef          	jal	ra,1c008db6 <__rt_bridge_printf_flush>
1c0099ba:	0124a623          	sw	s2,12(s1)
1c0099be:	bbaff0ef          	jal	ra,1c008d78 <__rt_bridge_send_notif>
1c0099c2:	449c                	lw	a5,8(s1)
1c0099c4:	dff9                	beqz	a5,1c0099a2 <exit+0x32>
1c0099c6:	07440413          	addi	s0,s0,116
1c0099ca:	401c                	lw	a5,0(s0)
1c0099cc:	83a5                	srli	a5,a5,0x9
1c0099ce:	f837b7b3          	p.bclr	a5,a5,28,3
1c0099d2:	fe77bce3          	p.bneimm	a5,7,1c0099ca <exit+0x5a>
1c0099d6:	bc2ff0ef          	jal	ra,1c008d98 <__rt_bridge_clear_notif>
1c0099da:	b7e1                	j	1c0099a2 <exit+0x32>

1c0099dc <abort>:
1c0099dc:	1141                	addi	sp,sp,-16
1c0099de:	557d                	li	a0,-1
1c0099e0:	c606                	sw	ra,12(sp)
1c0099e2:	3779                	jal	1c009970 <exit>

1c0099e4 <__rt_io_init>:
1c0099e4:	1c0017b7          	lui	a5,0x1c001
1c0099e8:	3807ac23          	sw	zero,920(a5) # 1c001398 <__rt_putc_host_buffer_index>
1c0099ec:	1c0017b7          	lui	a5,0x1c001
1c0099f0:	dc478793          	addi	a5,a5,-572 # 1c000dc4 <__rt_io_fc_lock>
1c0099f4:	0007a223          	sw	zero,4(a5)
1c0099f8:	0007a023          	sw	zero,0(a5)
1c0099fc:	0007a623          	sw	zero,12(a5)
1c009a00:	1c0017b7          	lui	a5,0x1c001
1c009a04:	3807ae23          	sw	zero,924(a5) # 1c00139c <_rt_io_uart>
1c009a08:	1c0017b7          	lui	a5,0x1c001
1c009a0c:	3807a823          	sw	zero,912(a5) # 1c001390 <__rt_io_event_current>
1c009a10:	1c0017b7          	lui	a5,0x1c001
1c009a14:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c009a18:	0217be63          	p.bneimm	a5,1,1c009a54 <__rt_io_init+0x70>
1c009a1c:	1c0095b7          	lui	a1,0x1c009
1c009a20:	1141                	addi	sp,sp,-16
1c009a22:	4601                	li	a2,0
1c009a24:	5f858593          	addi	a1,a1,1528 # 1c0095f8 <__rt_io_start>
1c009a28:	4501                	li	a0,0
1c009a2a:	c606                	sw	ra,12(sp)
1c009a2c:	91aff0ef          	jal	ra,1c008b46 <__rt_cbsys_add>
1c009a30:	1c0095b7          	lui	a1,0x1c009
1c009a34:	6b658593          	addi	a1,a1,1718 # 1c0096b6 <__rt_io_stop>
1c009a38:	4601                	li	a2,0
1c009a3a:	4505                	li	a0,1
1c009a3c:	90aff0ef          	jal	ra,1c008b46 <__rt_cbsys_add>
1c009a40:	40b2                	lw	ra,12(sp)
1c009a42:	1c0017b7          	lui	a5,0x1c001
1c009a46:	3807aa23          	sw	zero,916(a5) # 1c001394 <__rt_io_pending_flush>
1c009a4a:	4585                	li	a1,1
1c009a4c:	4501                	li	a0,0
1c009a4e:	0141                	addi	sp,sp,16
1c009a50:	c6cff06f          	j	1c008ebc <rt_event_alloc>
1c009a54:	8082                	ret

1c009a56 <__internal_semihost>:
1c009a56:	01f01013          	slli	zero,zero,0x1f
1c009a5a:	00100073          	ebreak
1c009a5e:	40705013          	srai	zero,zero,0x7
1c009a62:	8082                	ret

1c009a64 <semihost_write0>:
1c009a64:	85aa                	mv	a1,a0
1c009a66:	4511                	li	a0,4
1c009a68:	b7fd                	j	1c009a56 <__internal_semihost>

1c009a6a <semihost_exit>:
1c009a6a:	85aa                	mv	a1,a0
1c009a6c:	4561                	li	a0,24
1c009a6e:	b7e5                	j	1c009a56 <__internal_semihost>

1c009a70 <printf>:
1c009a70:	7139                	addi	sp,sp,-64
1c009a72:	d432                	sw	a2,40(sp)
1c009a74:	862a                	mv	a2,a0
1c009a76:	1c00a537          	lui	a0,0x1c00a
1c009a7a:	d22e                	sw	a1,36(sp)
1c009a7c:	d636                	sw	a3,44(sp)
1c009a7e:	4589                	li	a1,2
1c009a80:	1054                	addi	a3,sp,36
1c009a82:	93450513          	addi	a0,a0,-1740 # 1c009934 <fputc_locked>
1c009a86:	ce06                	sw	ra,28(sp)
1c009a88:	d83a                	sw	a4,48(sp)
1c009a8a:	da3e                	sw	a5,52(sp)
1c009a8c:	dc42                	sw	a6,56(sp)
1c009a8e:	de46                	sw	a7,60(sp)
1c009a90:	c636                	sw	a3,12(sp)
1c009a92:	3d6d                	jal	1c00994c <_prf_locked>
1c009a94:	40f2                	lw	ra,28(sp)
1c009a96:	6121                	addi	sp,sp,64
1c009a98:	8082                	ret

1c009a9a <_to_x>:
1c009a9a:	872a                	mv	a4,a0
1c009a9c:	87aa                	mv	a5,a0
1c009a9e:	4325                	li	t1,9
1c009aa0:	02c5f8b3          	remu	a7,a1,a2
1c009aa4:	02700513          	li	a0,39
1c009aa8:	02c5d5b3          	divu	a1,a1,a2
1c009aac:	0ff8f813          	andi	a6,a7,255
1c009ab0:	01136363          	bltu	t1,a7,1c009ab6 <_to_x+0x1c>
1c009ab4:	4501                	li	a0,0
1c009ab6:	03080813          	addi	a6,a6,48
1c009aba:	9542                	add	a0,a0,a6
1c009abc:	00a780ab          	p.sb	a0,1(a5!)
1c009ac0:	f1e5                	bnez	a1,1c009aa0 <_to_x+0x6>
1c009ac2:	03000613          	li	a2,48
1c009ac6:	40e78533          	sub	a0,a5,a4
1c009aca:	00d54763          	blt	a0,a3,1c009ad8 <_to_x+0x3e>
1c009ace:	fe078fab          	p.sb	zero,-1(a5!)
1c009ad2:	00f76663          	bltu	a4,a5,1c009ade <_to_x+0x44>
1c009ad6:	8082                	ret
1c009ad8:	00c780ab          	p.sb	a2,1(a5!)
1c009adc:	b7ed                	j	1c009ac6 <_to_x+0x2c>
1c009ade:	00074603          	lbu	a2,0(a4) # 1a10f000 <__rt_udma_callback_data+0x1a10ed08>
1c009ae2:	0007c683          	lbu	a3,0(a5)
1c009ae6:	fec78fab          	p.sb	a2,-1(a5!)
1c009aea:	00d700ab          	p.sb	a3,1(a4!)
1c009aee:	b7d5                	j	1c009ad2 <_to_x+0x38>

1c009af0 <_rlrshift>:
1c009af0:	411c                	lw	a5,0(a0)
1c009af2:	4154                	lw	a3,4(a0)
1c009af4:	fc17b733          	p.bclr	a4,a5,30,1
1c009af8:	01f69613          	slli	a2,a3,0x1f
1c009afc:	8385                	srli	a5,a5,0x1
1c009afe:	8fd1                	or	a5,a5,a2
1c009b00:	97ba                	add	a5,a5,a4
1c009b02:	8285                	srli	a3,a3,0x1
1c009b04:	00e7b733          	sltu	a4,a5,a4
1c009b08:	9736                	add	a4,a4,a3
1c009b0a:	c11c                	sw	a5,0(a0)
1c009b0c:	c158                	sw	a4,4(a0)
1c009b0e:	8082                	ret

1c009b10 <_ldiv5>:
1c009b10:	4118                	lw	a4,0(a0)
1c009b12:	4154                	lw	a3,4(a0)
1c009b14:	4615                	li	a2,5
1c009b16:	00270793          	addi	a5,a4,2
1c009b1a:	00e7b733          	sltu	a4,a5,a4
1c009b1e:	9736                	add	a4,a4,a3
1c009b20:	02c755b3          	divu	a1,a4,a2
1c009b24:	42b61733          	p.msu	a4,a2,a1
1c009b28:	01d71693          	slli	a3,a4,0x1d
1c009b2c:	0037d713          	srli	a4,a5,0x3
1c009b30:	8f55                	or	a4,a4,a3
1c009b32:	02c75733          	divu	a4,a4,a2
1c009b36:	01d75693          	srli	a3,a4,0x1d
1c009b3a:	070e                	slli	a4,a4,0x3
1c009b3c:	42e617b3          	p.msu	a5,a2,a4
1c009b40:	95b6                	add	a1,a1,a3
1c009b42:	02c7d7b3          	divu	a5,a5,a2
1c009b46:	973e                	add	a4,a4,a5
1c009b48:	00f737b3          	sltu	a5,a4,a5
1c009b4c:	97ae                	add	a5,a5,a1
1c009b4e:	c118                	sw	a4,0(a0)
1c009b50:	c15c                	sw	a5,4(a0)
1c009b52:	8082                	ret

1c009b54 <_get_digit>:
1c009b54:	419c                	lw	a5,0(a1)
1c009b56:	03000713          	li	a4,48
1c009b5a:	02f05563          	blez	a5,1c009b84 <_get_digit+0x30>
1c009b5e:	17fd                	addi	a5,a5,-1
1c009b60:	c19c                	sw	a5,0(a1)
1c009b62:	411c                	lw	a5,0(a0)
1c009b64:	4729                	li	a4,10
1c009b66:	4150                	lw	a2,4(a0)
1c009b68:	02f706b3          	mul	a3,a4,a5
1c009b6c:	02f737b3          	mulhu	a5,a4,a5
1c009b70:	c114                	sw	a3,0(a0)
1c009b72:	42c707b3          	p.mac	a5,a4,a2
1c009b76:	01c7d713          	srli	a4,a5,0x1c
1c009b7a:	c7c7b7b3          	p.bclr	a5,a5,3,28
1c009b7e:	03070713          	addi	a4,a4,48
1c009b82:	c15c                	sw	a5,4(a0)
1c009b84:	0ff77513          	andi	a0,a4,255
1c009b88:	8082                	ret

1c009b8a <_prf>:
1c009b8a:	714d                	addi	sp,sp,-336
1c009b8c:	14912223          	sw	s1,324(sp)
1c009b90:	15212023          	sw	s2,320(sp)
1c009b94:	13812423          	sw	s8,296(sp)
1c009b98:	14112623          	sw	ra,332(sp)
1c009b9c:	14812423          	sw	s0,328(sp)
1c009ba0:	13312e23          	sw	s3,316(sp)
1c009ba4:	13412c23          	sw	s4,312(sp)
1c009ba8:	13512a23          	sw	s5,308(sp)
1c009bac:	13612823          	sw	s6,304(sp)
1c009bb0:	13712623          	sw	s7,300(sp)
1c009bb4:	13912223          	sw	s9,292(sp)
1c009bb8:	13a12023          	sw	s10,288(sp)
1c009bbc:	11b12e23          	sw	s11,284(sp)
1c009bc0:	cc2a                	sw	a0,24(sp)
1c009bc2:	ce2e                	sw	a1,28(sp)
1c009bc4:	84b2                	mv	s1,a2
1c009bc6:	8c36                	mv	s8,a3
1c009bc8:	4901                	li	s2,0
1c009bca:	0004c503          	lbu	a0,0(s1)
1c009bce:	00148b93          	addi	s7,s1,1
1c009bd2:	c919                	beqz	a0,1c009be8 <_prf+0x5e>
1c009bd4:	02500793          	li	a5,37
1c009bd8:	14f50563          	beq	a0,a5,1c009d22 <_prf+0x198>
1c009bdc:	45f2                	lw	a1,28(sp)
1c009bde:	4762                	lw	a4,24(sp)
1c009be0:	9702                	jalr	a4
1c009be2:	05f53063          	p.bneimm	a0,-1,1c009c22 <_prf+0x98>
1c009be6:	597d                	li	s2,-1
1c009be8:	14c12083          	lw	ra,332(sp)
1c009bec:	14812403          	lw	s0,328(sp)
1c009bf0:	854a                	mv	a0,s2
1c009bf2:	14412483          	lw	s1,324(sp)
1c009bf6:	14012903          	lw	s2,320(sp)
1c009bfa:	13c12983          	lw	s3,316(sp)
1c009bfe:	13812a03          	lw	s4,312(sp)
1c009c02:	13412a83          	lw	s5,308(sp)
1c009c06:	13012b03          	lw	s6,304(sp)
1c009c0a:	12c12b83          	lw	s7,300(sp)
1c009c0e:	12812c03          	lw	s8,296(sp)
1c009c12:	12412c83          	lw	s9,292(sp)
1c009c16:	12012d03          	lw	s10,288(sp)
1c009c1a:	11c12d83          	lw	s11,284(sp)
1c009c1e:	6171                	addi	sp,sp,336
1c009c20:	8082                	ret
1c009c22:	0905                	addi	s2,s2,1
1c009c24:	8a62                	mv	s4,s8
1c009c26:	84de                	mv	s1,s7
1c009c28:	8c52                	mv	s8,s4
1c009c2a:	b745                	j	1c009bca <_prf+0x40>
1c009c2c:	0f3a8263          	beq	s5,s3,1c009d10 <_prf+0x186>
1c009c30:	0d59e563          	bltu	s3,s5,1c009cfa <_prf+0x170>
1c009c34:	fa0a8ae3          	beqz	s5,1c009be8 <_prf+0x5e>
1c009c38:	0dba8a63          	beq	s5,s11,1c009d0c <_prf+0x182>
1c009c3c:	8ba6                	mv	s7,s1
1c009c3e:	000bca83          	lbu	s5,0(s7)
1c009c42:	1c0007b7          	lui	a5,0x1c000
1c009c46:	54078513          	addi	a0,a5,1344 # 1c000540 <__DTOR_END__+0x1e8>
1c009c4a:	85d6                	mv	a1,s5
1c009c4c:	001b8493          	addi	s1,s7,1
1c009c50:	3671                	jal	1c0097dc <strchr>
1c009c52:	fd69                	bnez	a0,1c009c2c <_prf+0xa2>
1c009c54:	02a00693          	li	a3,42
1c009c58:	0eda9763          	bne	s5,a3,1c009d46 <_prf+0x1bc>
1c009c5c:	000c2983          	lw	s3,0(s8)
1c009c60:	004c0693          	addi	a3,s8,4
1c009c64:	0009d663          	bgez	s3,1c009c70 <_prf+0xe6>
1c009c68:	4705                	li	a4,1
1c009c6a:	413009b3          	neg	s3,s3
1c009c6e:	ca3a                	sw	a4,20(sp)
1c009c70:	0004ca83          	lbu	s5,0(s1)
1c009c74:	8c36                	mv	s8,a3
1c009c76:	002b8493          	addi	s1,s7,2
1c009c7a:	0c800713          	li	a4,200
1c009c7e:	02e00693          	li	a3,46
1c009c82:	04e9d9b3          	p.minu	s3,s3,a4
1c009c86:	5d7d                	li	s10,-1
1c009c88:	02da9463          	bne	s5,a3,1c009cb0 <_prf+0x126>
1c009c8c:	0004c703          	lbu	a4,0(s1)
1c009c90:	02a00793          	li	a5,42
1c009c94:	0ef71c63          	bne	a4,a5,1c009d8c <_prf+0x202>
1c009c98:	000c2d03          	lw	s10,0(s8)
1c009c9c:	0485                	addi	s1,s1,1
1c009c9e:	0c11                	addi	s8,s8,4
1c009ca0:	0c800793          	li	a5,200
1c009ca4:	01a7d363          	ble	s10,a5,1c009caa <_prf+0x120>
1c009ca8:	5d7d                	li	s10,-1
1c009caa:	0004ca83          	lbu	s5,0(s1)
1c009cae:	0485                	addi	s1,s1,1
1c009cb0:	1c0007b7          	lui	a5,0x1c000
1c009cb4:	85d6                	mv	a1,s5
1c009cb6:	54878513          	addi	a0,a5,1352 # 1c000548 <__DTOR_END__+0x1f0>
1c009cba:	360d                	jal	1c0097dc <strchr>
1c009cbc:	c501                	beqz	a0,1c009cc4 <_prf+0x13a>
1c009cbe:	0004ca83          	lbu	s5,0(s1)
1c009cc2:	0485                	addi	s1,s1,1
1c009cc4:	06700693          	li	a3,103
1c009cc8:	1356c563          	blt	a3,s5,1c009df2 <_prf+0x268>
1c009ccc:	06500693          	li	a3,101
1c009cd0:	20dad063          	ble	a3,s5,1c009ed0 <_prf+0x346>
1c009cd4:	04700693          	li	a3,71
1c009cd8:	0b56ce63          	blt	a3,s5,1c009d94 <_prf+0x20a>
1c009cdc:	04500693          	li	a3,69
1c009ce0:	1edad863          	ble	a3,s5,1c009ed0 <_prf+0x346>
1c009ce4:	f00a82e3          	beqz	s5,1c009be8 <_prf+0x5e>
1c009ce8:	02500713          	li	a4,37
1c009cec:	64ea8a63          	beq	s5,a4,1c00a340 <_prf+0x7b6>
1c009cf0:	0c800713          	li	a4,200
1c009cf4:	65575e63          	ble	s5,a4,1c00a350 <_prf+0x7c6>
1c009cf8:	b5fd                	j	1c009be6 <_prf+0x5c>
1c009cfa:	034a8163          	beq	s5,s4,1c009d1c <_prf+0x192>
1c009cfe:	016a8b63          	beq	s5,s6,1c009d14 <_prf+0x18a>
1c009d02:	f3aa9de3          	bne	s5,s10,1c009c3c <_prf+0xb2>
1c009d06:	4785                	li	a5,1
1c009d08:	c83e                	sw	a5,16(sp)
1c009d0a:	bf0d                	j	1c009c3c <_prf+0xb2>
1c009d0c:	4405                	li	s0,1
1c009d0e:	b73d                	j	1c009c3c <_prf+0xb2>
1c009d10:	4c85                	li	s9,1
1c009d12:	b72d                	j	1c009c3c <_prf+0xb2>
1c009d14:	03000713          	li	a4,48
1c009d18:	c63a                	sw	a4,12(sp)
1c009d1a:	b70d                	j	1c009c3c <_prf+0xb2>
1c009d1c:	4785                	li	a5,1
1c009d1e:	ca3e                	sw	a5,20(sp)
1c009d20:	bf31                	j	1c009c3c <_prf+0xb2>
1c009d22:	02000713          	li	a4,32
1c009d26:	c63a                	sw	a4,12(sp)
1c009d28:	4401                	li	s0,0
1c009d2a:	c802                	sw	zero,16(sp)
1c009d2c:	ca02                	sw	zero,20(sp)
1c009d2e:	4c81                	li	s9,0
1c009d30:	02300993          	li	s3,35
1c009d34:	02d00a13          	li	s4,45
1c009d38:	03000b13          	li	s6,48
1c009d3c:	02b00d13          	li	s10,43
1c009d40:	02000d93          	li	s11,32
1c009d44:	bded                	j	1c009c3e <_prf+0xb4>
1c009d46:	fd0a8693          	addi	a3,s5,-48
1c009d4a:	4625                	li	a2,9
1c009d4c:	4981                	li	s3,0
1c009d4e:	f2d666e3          	bltu	a2,a3,1c009c7a <_prf+0xf0>
1c009d52:	46a5                	li	a3,9
1c009d54:	45a9                	li	a1,10
1c009d56:	84de                	mv	s1,s7
1c009d58:	0014c70b          	p.lbu	a4,1(s1!)
1c009d5c:	fd070613          	addi	a2,a4,-48
1c009d60:	8aba                	mv	s5,a4
1c009d62:	f0c6ece3          	bltu	a3,a2,1c009c7a <_prf+0xf0>
1c009d66:	42b98733          	p.mac	a4,s3,a1
1c009d6a:	8ba6                	mv	s7,s1
1c009d6c:	fd070993          	addi	s3,a4,-48
1c009d70:	b7dd                	j	1c009d56 <_prf+0x1cc>
1c009d72:	42ad07b3          	p.mac	a5,s10,a0
1c009d76:	84b6                	mv	s1,a3
1c009d78:	fd078d13          	addi	s10,a5,-48
1c009d7c:	86a6                	mv	a3,s1
1c009d7e:	0016c78b          	p.lbu	a5,1(a3!)
1c009d82:	fd078593          	addi	a1,a5,-48
1c009d86:	feb676e3          	bleu	a1,a2,1c009d72 <_prf+0x1e8>
1c009d8a:	bf19                	j	1c009ca0 <_prf+0x116>
1c009d8c:	4d01                	li	s10,0
1c009d8e:	4625                	li	a2,9
1c009d90:	4529                	li	a0,10
1c009d92:	b7ed                	j	1c009d7c <_prf+0x1f2>
1c009d94:	06300693          	li	a3,99
1c009d98:	0cda8e63          	beq	s5,a3,1c009e74 <_prf+0x2ea>
1c009d9c:	0756cb63          	blt	a3,s5,1c009e12 <_prf+0x288>
1c009da0:	05800693          	li	a3,88
1c009da4:	f4da96e3          	bne	s5,a3,1c009cf0 <_prf+0x166>
1c009da8:	04410b93          	addi	s7,sp,68
1c009dac:	004c0a13          	addi	s4,s8,4
1c009db0:	000c2583          	lw	a1,0(s8)
1c009db4:	845e                	mv	s0,s7
1c009db6:	000c8963          	beqz	s9,1c009dc8 <_prf+0x23e>
1c009dba:	76e1                	lui	a3,0xffff8
1c009dbc:	8306c693          	xori	a3,a3,-2000
1c009dc0:	04d11223          	sh	a3,68(sp)
1c009dc4:	04610413          	addi	s0,sp,70
1c009dc8:	86ea                	mv	a3,s10
1c009dca:	4641                	li	a2,16
1c009dcc:	8522                	mv	a0,s0
1c009dce:	31f1                	jal	1c009a9a <_to_x>
1c009dd0:	05800693          	li	a3,88
1c009dd4:	00da9863          	bne	s5,a3,1c009de4 <_prf+0x25a>
1c009dd8:	86de                	mv	a3,s7
1c009dda:	45e5                	li	a1,25
1c009ddc:	0016c78b          	p.lbu	a5,1(a3!) # ffff8001 <pulp__FC+0xffff8002>
1c009de0:	54079663          	bnez	a5,1c00a32c <_prf+0x7a2>
1c009de4:	41740433          	sub	s0,s0,s7
1c009de8:	9522                	add	a0,a0,s0
1c009dea:	01903433          	snez	s0,s9
1c009dee:	0406                	slli	s0,s0,0x1
1c009df0:	a0e9                	j	1c009eba <_prf+0x330>
1c009df2:	07000693          	li	a3,112
1c009df6:	4eda8463          	beq	s5,a3,1c00a2de <_prf+0x754>
1c009dfa:	0556c163          	blt	a3,s5,1c009e3c <_prf+0x2b2>
1c009dfe:	06e00693          	li	a3,110
1c009e02:	46da8163          	beq	s5,a3,1c00a264 <_prf+0x6da>
1c009e06:	4756c663          	blt	a3,s5,1c00a272 <_prf+0x6e8>
1c009e0a:	06900693          	li	a3,105
1c009e0e:	eeda91e3          	bne	s5,a3,1c009cf0 <_prf+0x166>
1c009e12:	000c2a83          	lw	s5,0(s8)
1c009e16:	004c0a13          	addi	s4,s8,4
1c009e1a:	04410b13          	addi	s6,sp,68
1c009e1e:	060ad663          	bgez	s5,1c009e8a <_prf+0x300>
1c009e22:	02d00693          	li	a3,45
1c009e26:	04d10223          	sb	a3,68(sp)
1c009e2a:	80000737          	lui	a4,0x80000
1c009e2e:	415005b3          	neg	a1,s5
1c009e32:	06ea9663          	bne	s5,a4,1c009e9e <_prf+0x314>
1c009e36:	800005b7          	lui	a1,0x80000
1c009e3a:	a095                	j	1c009e9e <_prf+0x314>
1c009e3c:	07500693          	li	a3,117
1c009e40:	4cda8c63          	beq	s5,a3,1c00a318 <_prf+0x78e>
1c009e44:	07800693          	li	a3,120
1c009e48:	f6da80e3          	beq	s5,a3,1c009da8 <_prf+0x21e>
1c009e4c:	07300693          	li	a3,115
1c009e50:	eada90e3          	bne	s5,a3,1c009cf0 <_prf+0x166>
1c009e54:	000c2583          	lw	a1,0(s8)
1c009e58:	004c0a13          	addi	s4,s8,4
1c009e5c:	4c81                	li	s9,0
1c009e5e:	86ae                	mv	a3,a1
1c009e60:	0c8350fb          	lp.setupi	x1,200,1c009e6c <_prf+0x2e2>
1c009e64:	0016c60b          	p.lbu	a2,1(a3!)
1c009e68:	48060d63          	beqz	a2,1c00a302 <_prf+0x778>
1c009e6c:	0c85                	addi	s9,s9,1
1c009e6e:	480d5c63          	bgez	s10,1c00a306 <_prf+0x77c>
1c009e72:	a971                	j	1c00a30e <_prf+0x784>
1c009e74:	000c2783          	lw	a5,0(s8)
1c009e78:	004c0a13          	addi	s4,s8,4
1c009e7c:	040102a3          	sb	zero,69(sp)
1c009e80:	04f10223          	sb	a5,68(sp)
1c009e84:	4c85                	li	s9,1
1c009e86:	4401                	li	s0,0
1c009e88:	a901                	j	1c00a298 <_prf+0x70e>
1c009e8a:	47c2                	lw	a5,16(sp)
1c009e8c:	02b00693          	li	a3,43
1c009e90:	e781                	bnez	a5,1c009e98 <_prf+0x30e>
1c009e92:	c815                	beqz	s0,1c009ec6 <_prf+0x33c>
1c009e94:	02000693          	li	a3,32
1c009e98:	04d10223          	sb	a3,68(sp)
1c009e9c:	85d6                	mv	a1,s5
1c009e9e:	04510c13          	addi	s8,sp,69
1c009ea2:	86ea                	mv	a3,s10
1c009ea4:	4629                	li	a2,10
1c009ea6:	8562                	mv	a0,s8
1c009ea8:	3ecd                	jal	1c009a9a <_to_x>
1c009eaa:	4742                	lw	a4,16(sp)
1c009eac:	9562                	add	a0,a0,s8
1c009eae:	41650533          	sub	a0,a0,s6
1c009eb2:	ef09                	bnez	a4,1c009ecc <_prf+0x342>
1c009eb4:	e019                	bnez	s0,1c009eba <_prf+0x330>
1c009eb6:	01fad413          	srli	s0,s5,0x1f
1c009eba:	0bfd2363          	p.beqimm	s10,-1,1c009f60 <_prf+0x3d6>
1c009ebe:	02000713          	li	a4,32
1c009ec2:	c63a                	sw	a4,12(sp)
1c009ec4:	a871                	j	1c009f60 <_prf+0x3d6>
1c009ec6:	85d6                	mv	a1,s5
1c009ec8:	8c5a                	mv	s8,s6
1c009eca:	bfe1                	j	1c009ea2 <_prf+0x318>
1c009ecc:	4442                	lw	s0,16(sp)
1c009ece:	b7f5                	j	1c009eba <_prf+0x330>
1c009ed0:	0c1d                	addi	s8,s8,7
1c009ed2:	c40c3c33          	p.bclr	s8,s8,2,0
1c009ed6:	000c2883          	lw	a7,0(s8)
1c009eda:	004c2303          	lw	t1,4(s8)
1c009ede:	800007b7          	lui	a5,0x80000
1c009ee2:	0158d593          	srli	a1,a7,0x15
1c009ee6:	00b31693          	slli	a3,t1,0xb
1c009eea:	8ecd                	or	a3,a3,a1
1c009eec:	fff7c793          	not	a5,a5
1c009ef0:	01435613          	srli	a2,t1,0x14
1c009ef4:	08ae                	slli	a7,a7,0xb
1c009ef6:	8efd                	and	a3,a3,a5
1c009ef8:	e8b63633          	p.bclr	a2,a2,20,11
1c009efc:	d846                	sw	a7,48(sp)
1c009efe:	da36                	sw	a3,52(sp)
1c009f00:	7ff00593          	li	a1,2047
1c009f04:	008c0a13          	addi	s4,s8,8
1c009f08:	08b61d63          	bne	a2,a1,1c009fa2 <_prf+0x418>
1c009f0c:	00d0                	addi	a2,sp,68
1c009f0e:	8732                	mv	a4,a2
1c009f10:	00035863          	bgez	t1,1c009f20 <_prf+0x396>
1c009f14:	02d00713          	li	a4,45
1c009f18:	04e10223          	sb	a4,68(sp)
1c009f1c:	04510713          	addi	a4,sp,69
1c009f20:	00d8e6b3          	or	a3,a7,a3
1c009f24:	fbfa8793          	addi	a5,s5,-65
1c009f28:	00370513          	addi	a0,a4,3 # 80000003 <pulp__FC+0x80000004>
1c009f2c:	eaa1                	bnez	a3,1c009f7c <_prf+0x3f2>
1c009f2e:	46e5                	li	a3,25
1c009f30:	02f6ee63          	bltu	a3,a5,1c009f6c <_prf+0x3e2>
1c009f34:	6795                	lui	a5,0x5
1c009f36:	e4978793          	addi	a5,a5,-439 # 4e49 <__rt_udma_callback_data+0x4b51>
1c009f3a:	00f71023          	sh	a5,0(a4)
1c009f3e:	04600793          	li	a5,70
1c009f42:	00f70123          	sb	a5,2(a4)
1c009f46:	000701a3          	sb	zero,3(a4)
1c009f4a:	8d11                	sub	a0,a0,a2
1c009f4c:	47c2                	lw	a5,16(sp)
1c009f4e:	44079f63          	bnez	a5,1c00a3ac <_prf+0x822>
1c009f52:	e419                	bnez	s0,1c009f60 <_prf+0x3d6>
1c009f54:	04414403          	lbu	s0,68(sp)
1c009f58:	fd340413          	addi	s0,s0,-45
1c009f5c:	00143413          	seqz	s0,s0
1c009f60:	0c800793          	li	a5,200
1c009f64:	c8a7c1e3          	blt	a5,a0,1c009be6 <_prf+0x5c>
1c009f68:	8caa                	mv	s9,a0
1c009f6a:	a63d                	j	1c00a298 <_prf+0x70e>
1c009f6c:	679d                	lui	a5,0x7
1c009f6e:	e6978793          	addi	a5,a5,-407 # 6e69 <__rt_udma_callback_data+0x6b71>
1c009f72:	00f71023          	sh	a5,0(a4)
1c009f76:	06600793          	li	a5,102
1c009f7a:	b7e1                	j	1c009f42 <_prf+0x3b8>
1c009f7c:	46e5                	li	a3,25
1c009f7e:	00f6ea63          	bltu	a3,a5,1c009f92 <_prf+0x408>
1c009f82:	6791                	lui	a5,0x4
1c009f84:	14e78793          	addi	a5,a5,334 # 414e <__rt_udma_callback_data+0x3e56>
1c009f88:	00f71023          	sh	a5,0(a4)
1c009f8c:	04e00793          	li	a5,78
1c009f90:	bf4d                	j	1c009f42 <_prf+0x3b8>
1c009f92:	6799                	lui	a5,0x6
1c009f94:	16e78793          	addi	a5,a5,366 # 616e <__rt_udma_callback_data+0x5e76>
1c009f98:	00f71023          	sh	a5,0(a4)
1c009f9c:	06e00793          	li	a5,110
1c009fa0:	b74d                	j	1c009f42 <_prf+0x3b8>
1c009fa2:	04600593          	li	a1,70
1c009fa6:	00ba9463          	bne	s5,a1,1c009fae <_prf+0x424>
1c009faa:	06600a93          	li	s5,102
1c009fae:	011665b3          	or	a1,a2,a7
1c009fb2:	8dd5                	or	a1,a1,a3
1c009fb4:	c5d1                	beqz	a1,1c00a040 <_prf+0x4b6>
1c009fb6:	80000737          	lui	a4,0x80000
1c009fba:	8ed9                	or	a3,a3,a4
1c009fbc:	da36                	sw	a3,52(sp)
1c009fbe:	d846                	sw	a7,48(sp)
1c009fc0:	c0260c13          	addi	s8,a2,-1022
1c009fc4:	02d00693          	li	a3,45
1c009fc8:	00034b63          	bltz	t1,1c009fde <_prf+0x454>
1c009fcc:	47c2                	lw	a5,16(sp)
1c009fce:	02b00693          	li	a3,43
1c009fd2:	e791                	bnez	a5,1c009fde <_prf+0x454>
1c009fd4:	04410b13          	addi	s6,sp,68
1c009fd8:	c419                	beqz	s0,1c009fe6 <_prf+0x45c>
1c009fda:	02000693          	li	a3,32
1c009fde:	04d10223          	sb	a3,68(sp)
1c009fe2:	04510b13          	addi	s6,sp,69
1c009fe6:	4b81                	li	s7,0
1c009fe8:	55f9                	li	a1,-2
1c009fea:	04bc4f63          	blt	s8,a1,1c00a048 <_prf+0x4be>
1c009fee:	0b804563          	bgtz	s8,1c00a098 <_prf+0x50e>
1c009ff2:	1808                	addi	a0,sp,48
1c009ff4:	0c05                	addi	s8,s8,1
1c009ff6:	3ced                	jal	1c009af0 <_rlrshift>
1c009ff8:	fe4c3de3          	p.bneimm	s8,4,1c009ff2 <_prf+0x468>
1c009ffc:	000d5363          	bgez	s10,1c00a002 <_prf+0x478>
1c00a000:	4d19                	li	s10,6
1c00a002:	c05ab5b3          	p.bclr	a1,s5,0,5
1c00a006:	04700513          	li	a0,71
1c00a00a:	0ca59363          	bne	a1,a0,1c00a0d0 <_prf+0x546>
1c00a00e:	4c01                	li	s8,0
1c00a010:	000c9463          	bnez	s9,1c00a018 <_prf+0x48e>
1c00a014:	01a03c33          	snez	s8,s10
1c00a018:	55f5                	li	a1,-3
1c00a01a:	00bbc663          	blt	s7,a1,1c00a026 <_prf+0x49c>
1c00a01e:	001d0593          	addi	a1,s10,1
1c00a022:	0b75dc63          	ble	s7,a1,1c00a0da <_prf+0x550>
1c00a026:	06700593          	li	a1,103
1c00a02a:	14ba8763          	beq	s5,a1,1c00a178 <_prf+0x5ee>
1c00a02e:	04500a93          	li	s5,69
1c00a032:	001d0593          	addi	a1,s10,1
1c00a036:	4541                	li	a0,16
1c00a038:	d62a                	sw	a0,44(sp)
1c00a03a:	04a5cdb3          	p.min	s11,a1,a0
1c00a03e:	a07d                	j	1c00a0ec <_prf+0x562>
1c00a040:	4c01                	li	s8,0
1c00a042:	b769                	j	1c009fcc <_prf+0x442>
1c00a044:	1808                	addi	a0,sp,48
1c00a046:	346d                	jal	1c009af0 <_rlrshift>
1c00a048:	5352                	lw	t1,52(sp)
1c00a04a:	33333737          	lui	a4,0x33333
1c00a04e:	33270713          	addi	a4,a4,818 # 33333332 <__l2_shared_end+0x17323046>
1c00a052:	58c2                	lw	a7,48(sp)
1c00a054:	0c05                	addi	s8,s8,1
1c00a056:	fe6767e3          	bltu	a4,t1,1c00a044 <_prf+0x4ba>
1c00a05a:	4515                	li	a0,5
1c00a05c:	031535b3          	mulhu	a1,a0,a7
1c00a060:	1bfd                	addi	s7,s7,-1
1c00a062:	031508b3          	mul	a7,a0,a7
1c00a066:	426505b3          	p.mac	a1,a0,t1
1c00a06a:	d846                	sw	a7,48(sp)
1c00a06c:	4501                	li	a0,0
1c00a06e:	da2e                	sw	a1,52(sp)
1c00a070:	800007b7          	lui	a5,0x80000
1c00a074:	fff7c793          	not	a5,a5
1c00a078:	00b7f663          	bleu	a1,a5,1c00a084 <_prf+0x4fa>
1c00a07c:	d535                	beqz	a0,1c009fe8 <_prf+0x45e>
1c00a07e:	d846                	sw	a7,48(sp)
1c00a080:	da2e                	sw	a1,52(sp)
1c00a082:	b79d                	j	1c009fe8 <_prf+0x45e>
1c00a084:	01f8d313          	srli	t1,a7,0x1f
1c00a088:	00159513          	slli	a0,a1,0x1
1c00a08c:	00a365b3          	or	a1,t1,a0
1c00a090:	0886                	slli	a7,a7,0x1
1c00a092:	1c7d                	addi	s8,s8,-1
1c00a094:	4505                	li	a0,1
1c00a096:	bfe9                	j	1c00a070 <_prf+0x4e6>
1c00a098:	1808                	addi	a0,sp,48
1c00a09a:	a77ff0ef          	jal	ra,1c009b10 <_ldiv5>
1c00a09e:	58c2                	lw	a7,48(sp)
1c00a0a0:	55d2                	lw	a1,52(sp)
1c00a0a2:	1c7d                	addi	s8,s8,-1
1c00a0a4:	0b85                	addi	s7,s7,1
1c00a0a6:	4501                	li	a0,0
1c00a0a8:	80000737          	lui	a4,0x80000
1c00a0ac:	fff74713          	not	a4,a4
1c00a0b0:	00b77663          	bleu	a1,a4,1c00a0bc <_prf+0x532>
1c00a0b4:	dd0d                	beqz	a0,1c009fee <_prf+0x464>
1c00a0b6:	d846                	sw	a7,48(sp)
1c00a0b8:	da2e                	sw	a1,52(sp)
1c00a0ba:	bf15                	j	1c009fee <_prf+0x464>
1c00a0bc:	01f8d313          	srli	t1,a7,0x1f
1c00a0c0:	00159513          	slli	a0,a1,0x1
1c00a0c4:	00a365b3          	or	a1,t1,a0
1c00a0c8:	0886                	slli	a7,a7,0x1
1c00a0ca:	1c7d                	addi	s8,s8,-1
1c00a0cc:	4505                	li	a0,1
1c00a0ce:	bfe9                	j	1c00a0a8 <_prf+0x51e>
1c00a0d0:	06600593          	li	a1,102
1c00a0d4:	4c01                	li	s8,0
1c00a0d6:	f4ba9ee3          	bne	s5,a1,1c00a032 <_prf+0x4a8>
1c00a0da:	01ab85b3          	add	a1,s7,s10
1c00a0de:	06600a93          	li	s5,102
1c00a0e2:	f405dae3          	bgez	a1,1c00a036 <_prf+0x4ac>
1c00a0e6:	45c1                	li	a1,16
1c00a0e8:	d62e                	sw	a1,44(sp)
1c00a0ea:	4d81                	li	s11,0
1c00a0ec:	4301                	li	t1,0
1c00a0ee:	080003b7          	lui	t2,0x8000
1c00a0f2:	dc1a                	sw	t1,56(sp)
1c00a0f4:	de1e                	sw	t2,60(sp)
1c00a0f6:	1dfd                	addi	s11,s11,-1
1c00a0f8:	09fdb363          	p.bneimm	s11,-1,1c00a17e <_prf+0x5f4>
1c00a0fc:	55c2                	lw	a1,48(sp)
1c00a0fe:	5562                	lw	a0,56(sp)
1c00a100:	58d2                	lw	a7,52(sp)
1c00a102:	5372                	lw	t1,60(sp)
1c00a104:	952e                	add	a0,a0,a1
1c00a106:	00b535b3          	sltu	a1,a0,a1
1c00a10a:	989a                	add	a7,a7,t1
1c00a10c:	95c6                	add	a1,a1,a7
1c00a10e:	da2e                	sw	a1,52(sp)
1c00a110:	d82a                	sw	a0,48(sp)
1c00a112:	f605b5b3          	p.bclr	a1,a1,27,0
1c00a116:	c981                	beqz	a1,1c00a126 <_prf+0x59c>
1c00a118:	1808                	addi	a0,sp,48
1c00a11a:	9f7ff0ef          	jal	ra,1c009b10 <_ldiv5>
1c00a11e:	1808                	addi	a0,sp,48
1c00a120:	9d1ff0ef          	jal	ra,1c009af0 <_rlrshift>
1c00a124:	0b85                	addi	s7,s7,1
1c00a126:	06600593          	li	a1,102
1c00a12a:	001b0d93          	addi	s11,s6,1
1c00a12e:	08ba9463          	bne	s5,a1,1c00a1b6 <_prf+0x62c>
1c00a132:	05705d63          	blez	s7,1c00a18c <_prf+0x602>
1c00a136:	017b0db3          	add	s11,s6,s7
1c00a13a:	106c                	addi	a1,sp,44
1c00a13c:	1808                	addi	a0,sp,48
1c00a13e:	a17ff0ef          	jal	ra,1c009b54 <_get_digit>
1c00a142:	00ab00ab          	p.sb	a0,1(s6!)
1c00a146:	ffbb1ae3          	bne	s6,s11,1c00a13a <_prf+0x5b0>
1c00a14a:	4b81                	li	s7,0
1c00a14c:	000c9463          	bnez	s9,1c00a154 <_prf+0x5ca>
1c00a150:	020d0163          	beqz	s10,1c00a172 <_prf+0x5e8>
1c00a154:	001d8b13          	addi	s6,s11,1
1c00a158:	02e00613          	li	a2,46
1c00a15c:	00cd8023          	sb	a2,0(s11)
1c00a160:	8cea                	mv	s9,s10
1c00a162:	8dda                	mv	s11,s6
1c00a164:	03000893          	li	a7,48
1c00a168:	1cfd                	addi	s9,s9,-1
1c00a16a:	03fcb663          	p.bneimm	s9,-1,1c00a196 <_prf+0x60c>
1c00a16e:	01ab0db3          	add	s11,s6,s10
1c00a172:	060c1c63          	bnez	s8,1c00a1ea <_prf+0x660>
1c00a176:	a8c1                	j	1c00a246 <_prf+0x6bc>
1c00a178:	06500a93          	li	s5,101
1c00a17c:	bd5d                	j	1c00a032 <_prf+0x4a8>
1c00a17e:	1828                	addi	a0,sp,56
1c00a180:	991ff0ef          	jal	ra,1c009b10 <_ldiv5>
1c00a184:	1828                	addi	a0,sp,56
1c00a186:	96bff0ef          	jal	ra,1c009af0 <_rlrshift>
1c00a18a:	b7b5                	j	1c00a0f6 <_prf+0x56c>
1c00a18c:	03000593          	li	a1,48
1c00a190:	00bb0023          	sb	a1,0(s6)
1c00a194:	bf65                	j	1c00a14c <_prf+0x5c2>
1c00a196:	0d85                	addi	s11,s11,1
1c00a198:	000b8663          	beqz	s7,1c00a1a4 <_prf+0x61a>
1c00a19c:	ff1d8fa3          	sb	a7,-1(s11)
1c00a1a0:	0b85                	addi	s7,s7,1
1c00a1a2:	b7d9                	j	1c00a168 <_prf+0x5de>
1c00a1a4:	106c                	addi	a1,sp,44
1c00a1a6:	1808                	addi	a0,sp,48
1c00a1a8:	c446                	sw	a7,8(sp)
1c00a1aa:	9abff0ef          	jal	ra,1c009b54 <_get_digit>
1c00a1ae:	fead8fa3          	sb	a0,-1(s11)
1c00a1b2:	48a2                	lw	a7,8(sp)
1c00a1b4:	bf55                	j	1c00a168 <_prf+0x5de>
1c00a1b6:	106c                	addi	a1,sp,44
1c00a1b8:	1808                	addi	a0,sp,48
1c00a1ba:	99bff0ef          	jal	ra,1c009b54 <_get_digit>
1c00a1be:	00ab0023          	sb	a0,0(s6)
1c00a1c2:	03000593          	li	a1,48
1c00a1c6:	00b50363          	beq	a0,a1,1c00a1cc <_prf+0x642>
1c00a1ca:	1bfd                	addi	s7,s7,-1
1c00a1cc:	000c9463          	bnez	s9,1c00a1d4 <_prf+0x64a>
1c00a1d0:	000d0b63          	beqz	s10,1c00a1e6 <_prf+0x65c>
1c00a1d4:	002b0d93          	addi	s11,s6,2
1c00a1d8:	02e00593          	li	a1,46
1c00a1dc:	00bb00a3          	sb	a1,1(s6)
1c00a1e0:	9d6e                	add	s10,s10,s11
1c00a1e2:	07bd1863          	bne	s10,s11,1c00a252 <_prf+0x6c8>
1c00a1e6:	000c0f63          	beqz	s8,1c00a204 <_prf+0x67a>
1c00a1ea:	03000593          	li	a1,48
1c00a1ee:	fffd8713          	addi	a4,s11,-1
1c00a1f2:	00074603          	lbu	a2,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00a1f6:	06b60563          	beq	a2,a1,1c00a260 <_prf+0x6d6>
1c00a1fa:	02e00593          	li	a1,46
1c00a1fe:	00b61363          	bne	a2,a1,1c00a204 <_prf+0x67a>
1c00a202:	8dba                	mv	s11,a4
1c00a204:	c05ab733          	p.bclr	a4,s5,0,5
1c00a208:	04500613          	li	a2,69
1c00a20c:	02c71d63          	bne	a4,a2,1c00a246 <_prf+0x6bc>
1c00a210:	87d6                	mv	a5,s5
1c00a212:	00fd8023          	sb	a5,0(s11)
1c00a216:	02b00793          	li	a5,43
1c00a21a:	000bd663          	bgez	s7,1c00a226 <_prf+0x69c>
1c00a21e:	41700bb3          	neg	s7,s7
1c00a222:	02d00793          	li	a5,45
1c00a226:	00fd80a3          	sb	a5,1(s11)
1c00a22a:	47a9                	li	a5,10
1c00a22c:	02fbc733          	div	a4,s7,a5
1c00a230:	0d91                	addi	s11,s11,4
1c00a232:	02fbe6b3          	rem	a3,s7,a5
1c00a236:	03070713          	addi	a4,a4,48
1c00a23a:	feed8f23          	sb	a4,-2(s11)
1c00a23e:	03068693          	addi	a3,a3,48
1c00a242:	fedd8fa3          	sb	a3,-1(s11)
1c00a246:	00c8                	addi	a0,sp,68
1c00a248:	000d8023          	sb	zero,0(s11)
1c00a24c:	40ad8533          	sub	a0,s11,a0
1c00a250:	b9f5                	j	1c009f4c <_prf+0x3c2>
1c00a252:	106c                	addi	a1,sp,44
1c00a254:	1808                	addi	a0,sp,48
1c00a256:	8ffff0ef          	jal	ra,1c009b54 <_get_digit>
1c00a25a:	00ad80ab          	p.sb	a0,1(s11!)
1c00a25e:	b751                	j	1c00a1e2 <_prf+0x658>
1c00a260:	8dba                	mv	s11,a4
1c00a262:	b771                	j	1c00a1ee <_prf+0x664>
1c00a264:	000c2783          	lw	a5,0(s8)
1c00a268:	004c0a13          	addi	s4,s8,4
1c00a26c:	0127a023          	sw	s2,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00a270:	ba65                	j	1c009c28 <_prf+0x9e>
1c00a272:	004c0a13          	addi	s4,s8,4
1c00a276:	000c2583          	lw	a1,0(s8)
1c00a27a:	00dc                	addi	a5,sp,68
1c00a27c:	040c8263          	beqz	s9,1c00a2c0 <_prf+0x736>
1c00a280:	03000693          	li	a3,48
1c00a284:	04d10223          	sb	a3,68(sp)
1c00a288:	04510513          	addi	a0,sp,69
1c00a28c:	e99d                	bnez	a1,1c00a2c2 <_prf+0x738>
1c00a28e:	040102a3          	sb	zero,69(sp)
1c00a292:	4401                	li	s0,0
1c00a294:	0dfd3063          	p.bneimm	s10,-1,1c00a354 <_prf+0x7ca>
1c00a298:	04410b93          	addi	s7,sp,68
1c00a29c:	0d3cc063          	blt	s9,s3,1c00a35c <_prf+0x7d2>
1c00a2a0:	89e6                	mv	s3,s9
1c00a2a2:	41790433          	sub	s0,s2,s7
1c00a2a6:	01740933          	add	s2,s0,s7
1c00a2aa:	96098fe3          	beqz	s3,1c009c28 <_prf+0x9e>
1c00a2ae:	45f2                	lw	a1,28(sp)
1c00a2b0:	001bc50b          	p.lbu	a0,1(s7!)
1c00a2b4:	47e2                	lw	a5,24(sp)
1c00a2b6:	9782                	jalr	a5
1c00a2b8:	93f527e3          	p.beqimm	a0,-1,1c009be6 <_prf+0x5c>
1c00a2bc:	19fd                	addi	s3,s3,-1
1c00a2be:	b7e5                	j	1c00a2a6 <_prf+0x71c>
1c00a2c0:	853e                	mv	a0,a5
1c00a2c2:	86ea                	mv	a3,s10
1c00a2c4:	4621                	li	a2,8
1c00a2c6:	40f50433          	sub	s0,a0,a5
1c00a2ca:	fd0ff0ef          	jal	ra,1c009a9a <_to_x>
1c00a2ce:	9522                	add	a0,a0,s0
1c00a2d0:	4401                	li	s0,0
1c00a2d2:	c9fd27e3          	p.beqimm	s10,-1,1c009f60 <_prf+0x3d6>
1c00a2d6:	02000793          	li	a5,32
1c00a2da:	c63e                	sw	a5,12(sp)
1c00a2dc:	b151                	j	1c009f60 <_prf+0x3d6>
1c00a2de:	000c2583          	lw	a1,0(s8)
1c00a2e2:	77e1                	lui	a5,0xffff8
1c00a2e4:	8307c793          	xori	a5,a5,-2000
1c00a2e8:	46a1                	li	a3,8
1c00a2ea:	4641                	li	a2,16
1c00a2ec:	04610513          	addi	a0,sp,70
1c00a2f0:	04f11223          	sh	a5,68(sp)
1c00a2f4:	fa6ff0ef          	jal	ra,1c009a9a <_to_x>
1c00a2f8:	004c0a13          	addi	s4,s8,4
1c00a2fc:	0509                	addi	a0,a0,2
1c00a2fe:	4401                	li	s0,0
1c00a300:	be6d                	j	1c009eba <_prf+0x330>
1c00a302:	000d4463          	bltz	s10,1c00a30a <_prf+0x780>
1c00a306:	05acccb3          	p.min	s9,s9,s10
1c00a30a:	900c8fe3          	beqz	s9,1c009c28 <_prf+0x9e>
1c00a30e:	8666                	mv	a2,s9
1c00a310:	00c8                	addi	a0,sp,68
1c00a312:	c60ff0ef          	jal	ra,1c009772 <memcpy>
1c00a316:	be85                	j	1c009e86 <_prf+0x2fc>
1c00a318:	000c2583          	lw	a1,0(s8)
1c00a31c:	86ea                	mv	a3,s10
1c00a31e:	4629                	li	a2,10
1c00a320:	00c8                	addi	a0,sp,68
1c00a322:	004c0a13          	addi	s4,s8,4
1c00a326:	f74ff0ef          	jal	ra,1c009a9a <_to_x>
1c00a32a:	b75d                	j	1c00a2d0 <_prf+0x746>
1c00a32c:	f9f78613          	addi	a2,a5,-97 # ffff7f9f <pulp__FC+0xffff7fa0>
1c00a330:	0ff67613          	andi	a2,a2,255
1c00a334:	aac5e4e3          	bltu	a1,a2,1c009ddc <_prf+0x252>
1c00a338:	1781                	addi	a5,a5,-32
1c00a33a:	fef68fa3          	sb	a5,-1(a3)
1c00a33e:	bc79                	j	1c009ddc <_prf+0x252>
1c00a340:	45f2                	lw	a1,28(sp)
1c00a342:	4762                	lw	a4,24(sp)
1c00a344:	02500513          	li	a0,37
1c00a348:	9702                	jalr	a4
1c00a34a:	89f52ee3          	p.beqimm	a0,-1,1c009be6 <_prf+0x5c>
1c00a34e:	0905                	addi	s2,s2,1
1c00a350:	8a62                	mv	s4,s8
1c00a352:	b8d9                	j	1c009c28 <_prf+0x9e>
1c00a354:	02000793          	li	a5,32
1c00a358:	c63e                	sw	a5,12(sp)
1c00a35a:	bf3d                	j	1c00a298 <_prf+0x70e>
1c00a35c:	4752                	lw	a4,20(sp)
1c00a35e:	cf01                	beqz	a4,1c00a376 <_prf+0x7ec>
1c00a360:	019b8833          	add	a6,s7,s9
1c00a364:	02000713          	li	a4,32
1c00a368:	417807b3          	sub	a5,a6,s7
1c00a36c:	f337dbe3          	ble	s3,a5,1c00a2a2 <_prf+0x718>
1c00a370:	00e800ab          	p.sb	a4,1(a6!)
1c00a374:	bfd5                	j	1c00a368 <_prf+0x7de>
1c00a376:	41998c33          	sub	s8,s3,s9
1c00a37a:	001c8613          	addi	a2,s9,1
1c00a37e:	85de                	mv	a1,s7
1c00a380:	018b8533          	add	a0,s7,s8
1c00a384:	c24ff0ef          	jal	ra,1c0097a8 <memmove>
1c00a388:	4732                	lw	a4,12(sp)
1c00a38a:	02000793          	li	a5,32
1c00a38e:	00f70363          	beq	a4,a5,1c00a394 <_prf+0x80a>
1c00a392:	ca22                	sw	s0,20(sp)
1c00a394:	47d2                	lw	a5,20(sp)
1c00a396:	9c3e                	add	s8,s8,a5
1c00a398:	00fb8ab3          	add	s5,s7,a5
1c00a39c:	417a87b3          	sub	a5,s5,s7
1c00a3a0:	f187d1e3          	ble	s8,a5,1c00a2a2 <_prf+0x718>
1c00a3a4:	4732                	lw	a4,12(sp)
1c00a3a6:	00ea80ab          	p.sb	a4,1(s5!)
1c00a3aa:	bfcd                	j	1c00a39c <_prf+0x812>
1c00a3ac:	4442                	lw	s0,16(sp)
1c00a3ae:	be4d                	j	1c009f60 <_prf+0x3d6>

1c00a3b0 <__rt_uart_wait_tx_done.isra.3>:
1c00a3b0:	1a102737          	lui	a4,0x1a102
1c00a3b4:	09870713          	addi	a4,a4,152 # 1a102098 <__rt_udma_callback_data+0x1a101da0>
1c00a3b8:	431c                	lw	a5,0(a4)
1c00a3ba:	8bc1                	andi	a5,a5,16
1c00a3bc:	eb95                	bnez	a5,1c00a3f0 <__rt_uart_wait_tx_done.isra.3+0x40>
1c00a3be:	1a102737          	lui	a4,0x1a102
1c00a3c2:	0a070713          	addi	a4,a4,160 # 1a1020a0 <__rt_udma_callback_data+0x1a101da8>
1c00a3c6:	431c                	lw	a5,0(a4)
1c00a3c8:	fc17b7b3          	p.bclr	a5,a5,30,1
1c00a3cc:	ffed                	bnez	a5,1c00a3c6 <__rt_uart_wait_tx_done.isra.3+0x16>
1c00a3ce:	1a10a7b7          	lui	a5,0x1a10a
1c00a3d2:	81478593          	addi	a1,a5,-2028 # 1a109814 <__rt_udma_callback_data+0x1a10951c>
1c00a3d6:	80478613          	addi	a2,a5,-2044
1c00a3da:	6691                	lui	a3,0x4
1c00a3dc:	80878793          	addi	a5,a5,-2040
1c00a3e0:	032350fb          	lp.setupi	x1,50,1c00a3ec <__rt_uart_wait_tx_done.isra.3+0x3c>
1c00a3e4:	c194                	sw	a3,0(a1)
1c00a3e6:	c214                	sw	a3,0(a2)
1c00a3e8:	10500073          	wfi
1c00a3ec:	c394                	sw	a3,0(a5)
1c00a3ee:	8082                	ret
1c00a3f0:	10500073          	wfi
1c00a3f4:	b7d1                	j	1c00a3b8 <__rt_uart_wait_tx_done.isra.3+0x8>

1c00a3f6 <__rt_uart_setfreq_before>:
1c00a3f6:	1c0017b7          	lui	a5,0x1c001
1c00a3fa:	36c7a783          	lw	a5,876(a5) # 1c00136c <__rt_uart>
1c00a3fe:	cf99                	beqz	a5,1c00a41c <__rt_uart_setfreq_before+0x26>
1c00a400:	1141                	addi	sp,sp,-16
1c00a402:	c606                	sw	ra,12(sp)
1c00a404:	3775                	jal	1c00a3b0 <__rt_uart_wait_tx_done.isra.3>
1c00a406:	40b2                	lw	ra,12(sp)
1c00a408:	005007b7          	lui	a5,0x500
1c00a40c:	1a102737          	lui	a4,0x1a102
1c00a410:	0799                	addi	a5,a5,6
1c00a412:	0af72223          	sw	a5,164(a4) # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a416:	4501                	li	a0,0
1c00a418:	0141                	addi	sp,sp,16
1c00a41a:	8082                	ret
1c00a41c:	4501                	li	a0,0
1c00a41e:	8082                	ret

1c00a420 <__rt_uart_setup.isra.4>:
1c00a420:	1c001737          	lui	a4,0x1c001
1c00a424:	3b472703          	lw	a4,948(a4) # 1c0013b4 <__rt_freq_domains+0x4>
1c00a428:	00155793          	srli	a5,a0,0x1
1c00a42c:	97ba                	add	a5,a5,a4
1c00a42e:	02a7d7b3          	divu	a5,a5,a0
1c00a432:	1a102737          	lui	a4,0x1a102
1c00a436:	17fd                	addi	a5,a5,-1
1c00a438:	07c2                	slli	a5,a5,0x10
1c00a43a:	3067e793          	ori	a5,a5,774
1c00a43e:	0af72223          	sw	a5,164(a4) # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a442:	8082                	ret

1c00a444 <__rt_uart_setfreq_after>:
1c00a444:	1c0017b7          	lui	a5,0x1c001
1c00a448:	36c78793          	addi	a5,a5,876 # 1c00136c <__rt_uart>
1c00a44c:	4398                	lw	a4,0(a5)
1c00a44e:	cb09                	beqz	a4,1c00a460 <__rt_uart_setfreq_after+0x1c>
1c00a450:	4788                	lw	a0,8(a5)
1c00a452:	1141                	addi	sp,sp,-16
1c00a454:	c606                	sw	ra,12(sp)
1c00a456:	37e9                	jal	1c00a420 <__rt_uart_setup.isra.4>
1c00a458:	40b2                	lw	ra,12(sp)
1c00a45a:	4501                	li	a0,0
1c00a45c:	0141                	addi	sp,sp,16
1c00a45e:	8082                	ret
1c00a460:	4501                	li	a0,0
1c00a462:	8082                	ret

1c00a464 <soc_eu_fcEventMask_setEvent>:
1c00a464:	02000793          	li	a5,32
1c00a468:	02f54733          	div	a4,a0,a5
1c00a46c:	1a1066b7          	lui	a3,0x1a106
1c00a470:	0691                	addi	a3,a3,4
1c00a472:	02f56533          	rem	a0,a0,a5
1c00a476:	070a                	slli	a4,a4,0x2
1c00a478:	9736                	add	a4,a4,a3
1c00a47a:	4314                	lw	a3,0(a4)
1c00a47c:	4785                	li	a5,1
1c00a47e:	00a797b3          	sll	a5,a5,a0
1c00a482:	fff7c793          	not	a5,a5
1c00a486:	8ff5                	and	a5,a5,a3
1c00a488:	c31c                	sw	a5,0(a4)
1c00a48a:	8082                	ret

1c00a48c <rt_uart_conf_init>:
1c00a48c:	000997b7          	lui	a5,0x99
1c00a490:	96878793          	addi	a5,a5,-1688 # 98968 <__rt_udma_callback_data+0x98670>
1c00a494:	c11c                	sw	a5,0(a0)
1c00a496:	57fd                	li	a5,-1
1c00a498:	c15c                	sw	a5,4(a0)
1c00a49a:	8082                	ret

1c00a49c <__rt_uart_open>:
1c00a49c:	1141                	addi	sp,sp,-16
1c00a49e:	c606                	sw	ra,12(sp)
1c00a4a0:	c422                	sw	s0,8(sp)
1c00a4a2:	c226                	sw	s1,4(sp)
1c00a4a4:	c04a                	sw	s2,0(sp)
1c00a4a6:	30047973          	csrrci	s2,mstatus,8
1c00a4aa:	cd85                	beqz	a1,1c00a4e2 <__rt_uart_open+0x46>
1c00a4ac:	4198                	lw	a4,0(a1)
1c00a4ae:	1c0017b7          	lui	a5,0x1c001
1c00a4b2:	36c78413          	addi	s0,a5,876 # 1c00136c <__rt_uart>
1c00a4b6:	00451613          	slli	a2,a0,0x4
1c00a4ba:	9432                	add	s0,s0,a2
1c00a4bc:	4014                	lw	a3,0(s0)
1c00a4be:	36c78793          	addi	a5,a5,876
1c00a4c2:	c68d                	beqz	a3,1c00a4ec <__rt_uart_open+0x50>
1c00a4c4:	c589                	beqz	a1,1c00a4ce <__rt_uart_open+0x32>
1c00a4c6:	418c                	lw	a1,0(a1)
1c00a4c8:	4418                	lw	a4,8(s0)
1c00a4ca:	04e59863          	bne	a1,a4,1c00a51a <__rt_uart_open+0x7e>
1c00a4ce:	0685                	addi	a3,a3,1
1c00a4d0:	00d7e623          	p.sw	a3,a2(a5)
1c00a4d4:	8522                	mv	a0,s0
1c00a4d6:	40b2                	lw	ra,12(sp)
1c00a4d8:	4422                	lw	s0,8(sp)
1c00a4da:	4492                	lw	s1,4(sp)
1c00a4dc:	4902                	lw	s2,0(sp)
1c00a4de:	0141                	addi	sp,sp,16
1c00a4e0:	8082                	ret
1c00a4e2:	00099737          	lui	a4,0x99
1c00a4e6:	96870713          	addi	a4,a4,-1688 # 98968 <__rt_udma_callback_data+0x98670>
1c00a4ea:	b7d1                	j	1c00a4ae <__rt_uart_open+0x12>
1c00a4ec:	4785                	li	a5,1
1c00a4ee:	c01c                	sw	a5,0(s0)
1c00a4f0:	c418                	sw	a4,8(s0)
1c00a4f2:	c048                	sw	a0,4(s0)
1c00a4f4:	1a102737          	lui	a4,0x1a102
1c00a4f8:	4314                	lw	a3,0(a4)
1c00a4fa:	00a797b3          	sll	a5,a5,a0
1c00a4fe:	00251493          	slli	s1,a0,0x2
1c00a502:	8fd5                	or	a5,a5,a3
1c00a504:	c31c                	sw	a5,0(a4)
1c00a506:	8526                	mv	a0,s1
1c00a508:	3fb1                	jal	1c00a464 <soc_eu_fcEventMask_setEvent>
1c00a50a:	00148513          	addi	a0,s1,1
1c00a50e:	3f99                	jal	1c00a464 <soc_eu_fcEventMask_setEvent>
1c00a510:	4408                	lw	a0,8(s0)
1c00a512:	3739                	jal	1c00a420 <__rt_uart_setup.isra.4>
1c00a514:	30091073          	csrw	mstatus,s2
1c00a518:	bf75                	j	1c00a4d4 <__rt_uart_open+0x38>
1c00a51a:	4401                	li	s0,0
1c00a51c:	bf65                	j	1c00a4d4 <__rt_uart_open+0x38>

1c00a51e <rt_uart_close>:
1c00a51e:	1141                	addi	sp,sp,-16
1c00a520:	c606                	sw	ra,12(sp)
1c00a522:	c422                	sw	s0,8(sp)
1c00a524:	c226                	sw	s1,4(sp)
1c00a526:	300474f3          	csrrci	s1,mstatus,8
1c00a52a:	411c                	lw	a5,0(a0)
1c00a52c:	17fd                	addi	a5,a5,-1
1c00a52e:	c11c                	sw	a5,0(a0)
1c00a530:	e785                	bnez	a5,1c00a558 <rt_uart_close+0x3a>
1c00a532:	842a                	mv	s0,a0
1c00a534:	3db5                	jal	1c00a3b0 <__rt_uart_wait_tx_done.isra.3>
1c00a536:	1a102737          	lui	a4,0x1a102
1c00a53a:	005007b7          	lui	a5,0x500
1c00a53e:	0a470693          	addi	a3,a4,164 # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a542:	0799                	addi	a5,a5,6
1c00a544:	c29c                	sw	a5,0(a3)
1c00a546:	4050                	lw	a2,4(s0)
1c00a548:	4314                	lw	a3,0(a4)
1c00a54a:	4785                	li	a5,1
1c00a54c:	00c797b3          	sll	a5,a5,a2
1c00a550:	fff7c793          	not	a5,a5
1c00a554:	8ff5                	and	a5,a5,a3
1c00a556:	c31c                	sw	a5,0(a4)
1c00a558:	30049073          	csrw	mstatus,s1
1c00a55c:	40b2                	lw	ra,12(sp)
1c00a55e:	4422                	lw	s0,8(sp)
1c00a560:	4492                	lw	s1,4(sp)
1c00a562:	0141                	addi	sp,sp,16
1c00a564:	8082                	ret

1c00a566 <__rt_uart_init>:
1c00a566:	1c00a5b7          	lui	a1,0x1c00a
1c00a56a:	1141                	addi	sp,sp,-16
1c00a56c:	4601                	li	a2,0
1c00a56e:	3f658593          	addi	a1,a1,1014 # 1c00a3f6 <__rt_uart_setfreq_before>
1c00a572:	4511                	li	a0,4
1c00a574:	c606                	sw	ra,12(sp)
1c00a576:	c422                	sw	s0,8(sp)
1c00a578:	dcefe0ef          	jal	ra,1c008b46 <__rt_cbsys_add>
1c00a57c:	1c00a5b7          	lui	a1,0x1c00a
1c00a580:	842a                	mv	s0,a0
1c00a582:	4601                	li	a2,0
1c00a584:	44458593          	addi	a1,a1,1092 # 1c00a444 <__rt_uart_setfreq_after>
1c00a588:	4515                	li	a0,5
1c00a58a:	dbcfe0ef          	jal	ra,1c008b46 <__rt_cbsys_add>
1c00a58e:	1c0017b7          	lui	a5,0x1c001
1c00a592:	3607a623          	sw	zero,876(a5) # 1c00136c <__rt_uart>
1c00a596:	8d41                	or	a0,a0,s0
1c00a598:	c10d                	beqz	a0,1c00a5ba <__rt_uart_init+0x54>
1c00a59a:	f1402673          	csrr	a2,mhartid
1c00a59e:	1c000537          	lui	a0,0x1c000
1c00a5a2:	40565593          	srai	a1,a2,0x5
1c00a5a6:	f265b5b3          	p.bclr	a1,a1,25,6
1c00a5aa:	f4563633          	p.bclr	a2,a2,26,5
1c00a5ae:	55050513          	addi	a0,a0,1360 # 1c000550 <__DTOR_END__+0x1f8>
1c00a5b2:	cbeff0ef          	jal	ra,1c009a70 <printf>
1c00a5b6:	c26ff0ef          	jal	ra,1c0099dc <abort>
1c00a5ba:	40b2                	lw	ra,12(sp)
1c00a5bc:	4422                	lw	s0,8(sp)
1c00a5be:	0141                	addi	sp,sp,16
1c00a5c0:	8082                	ret

1c00a5c2 <_endtext>:
	...
