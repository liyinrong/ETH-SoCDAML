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
1c0080c6:	768000ef          	jal	ra,1c00882e <__rt_init>
1c0080ca:	00000513          	li	a0,0
1c0080ce:	00000593          	li	a1,0
1c0080d2:	00000397          	auipc	t2,0x0
1c0080d6:	3bc38393          	addi	t2,t2,956 # 1c00848e <main>
1c0080da:	000380e7          	jalr	t2
1c0080de:	842a                	mv	s0,a0
1c0080e0:	025000ef          	jal	ra,1c008904 <__rt_deinit>
1c0080e4:	8522                	mv	a0,s0
1c0080e6:	740010ef          	jal	ra,1c009826 <exit>

1c0080ea <_fini>:
1c0080ea:	8082                	ret

1c0080ec <__rt_illegal_instr>:
1c0080ec:	fe112e23          	sw	ra,-4(sp)
1c0080f0:	fea12c23          	sw	a0,-8(sp)
1c0080f4:	00001517          	auipc	a0,0x1
1c0080f8:	88e50513          	addi	a0,a0,-1906 # 1c008982 <__rt_handle_illegal_instr>
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
1c0082d0:	88660613          	addi	a2,a2,-1914 # 1c008b52 <__rt_bridge_handle_notif>
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
1c00838c:	59a010ef          	jal	ra,1c009926 <printf>
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
1c0083c4:	562010ef          	jal	ra,1c009926 <printf>
1c0083c8:	1c0104b7          	lui	s1,0x1c010
1c0083cc:	10000593          	li	a1,256
1c0083d0:	00048513          	mv	a0,s1
1c0083d4:	378d                	jal	1c008336 <InitZero>
1c0083d6:	04c00593          	li	a1,76
1c0083da:	4509                	li	a0,2
1c0083dc:	2a7d                	jal	1c00859a <rt_alloc>
1c0083de:	842a                	mv	s0,a0
1c0083e0:	24ad                	jal	1c00864a <rt_perf_init>
1c0083e2:	45fd                	li	a1,31
1c0083e4:	8522                	mv	a0,s0
1c0083e6:	2c8d                	jal	1c008658 <rt_perf_conf>
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
1c00845c:	2411                	jal	1c008660 <rt_perf_save>
1c00845e:	4410                	lw	a2,8(s0)
1c008460:	404c                	lw	a1,4(s0)
1c008462:	485c                	lw	a5,20(s0)
1c008464:	4818                	lw	a4,16(s0)
1c008466:	4454                	lw	a3,12(s0)
1c008468:	1c000537          	lui	a0,0x1c000
1c00846c:	38450513          	addi	a0,a0,900 # 1c000384 <__DTOR_END__+0x2c>
1c008470:	4b6010ef          	jal	ra,1c009926 <printf>
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
1c00849e:	08c7d963          	ble	a2,a5,1c008530 <Conv5x5_Scalar+0x94>
1c0084a2:	1101                	addi	sp,sp,-32
1c0084a4:	ce22                	sw	s0,28(sp)
1c0084a6:	00168413          	addi	s0,a3,1
1c0084aa:	00169e93          	slli	t4,a3,0x1
1c0084ae:	040a                	slli	s0,s0,0x2
1c0084b0:	cc26                	sw	s1,24(sp)
1c0084b2:	ca4a                	sw	s2,20(sp)
1c0084b4:	c84e                	sw	s3,16(sp)
1c0084b6:	c652                	sw	s4,12(sp)
1c0084b8:	c456                	sw	s5,8(sp)
1c0084ba:	c25a                	sw	s6,4(sp)
1c0084bc:	8a36                	mv	s4,a3
1c0084be:	942e                	add	s0,s0,a1
1c0084c0:	84aa                	mv	s1,a0
1c0084c2:	ffe60993          	addi	s3,a2,-2
1c0084c6:	4909                	li	s2,2
1c0084c8:	4b11                	li	s6,4
1c0084ca:	ff8e8a93          	addi	s5,t4,-8
1c0084ce:	03270f13          	addi	t5,a4,50
1c0084d2:	6685                	lui	a3,0x1
1c0084d4:	054b5063          	ble	s4,s6,1c008514 <Conv5x5_Scalar+0x78>
1c0084d8:	008a83b3          	add	t2,s5,s0
1c0084dc:	82a6                	mv	t0,s1
1c0084de:	8fa2                	mv	t6,s0
1c0084e0:	85ba                	mv	a1,a4
1c0084e2:	8316                	mv	t1,t0
1c0084e4:	4601                	li	a2,0
1c0084e6:	00a58e13          	addi	t3,a1,10
1c0084ea:	851a                	mv	a0,t1
1c0084ec:	005350fb          	lp.setupi	x1,5,1c0084f8 <Conv5x5_Scalar+0x5c>
1c0084f0:	0025188b          	p.lh	a7,2(a0!)
1c0084f4:	0025980b          	p.lh	a6,2(a1!)
1c0084f8:	43088633          	p.mac	a2,a7,a6
1c0084fc:	9376                	add	t1,t1,t4
1c0084fe:	ffcf14e3          	bne	t5,t3,1c0084e6 <Conv5x5_Scalar+0x4a>
1c008502:	1ad6265b          	p.addn	a2,a2,a3,13
1c008506:	14e62633          	p.clipu	a2,a2,14
1c00850a:	00cf912b          	p.sh	a2,2(t6!)
1c00850e:	0289                	addi	t0,t0,2
1c008510:	fdf398e3          	bne	t2,t6,1c0084e0 <Conv5x5_Scalar+0x44>
1c008514:	0905                	addi	s2,s2,1
1c008516:	9476                	add	s0,s0,t4
1c008518:	94f6                	add	s1,s1,t4
1c00851a:	fb391de3          	bne	s2,s3,1c0084d4 <Conv5x5_Scalar+0x38>
1c00851e:	4472                	lw	s0,28(sp)
1c008520:	44e2                	lw	s1,24(sp)
1c008522:	4952                	lw	s2,20(sp)
1c008524:	49c2                	lw	s3,16(sp)
1c008526:	4a32                	lw	s4,12(sp)
1c008528:	4aa2                	lw	s5,8(sp)
1c00852a:	4b12                	lw	s6,4(sp)
1c00852c:	6105                	addi	sp,sp,32
1c00852e:	8082                	ret
1c008530:	8082                	ret

1c008532 <rt_user_alloc_init>:
1c008532:	00758793          	addi	a5,a1,7
1c008536:	c407b7b3          	p.bclr	a5,a5,2,0
1c00853a:	40b785b3          	sub	a1,a5,a1
1c00853e:	c11c                	sw	a5,0(a0)
1c008540:	8e0d                	sub	a2,a2,a1
1c008542:	00c05763          	blez	a2,1c008550 <rt_user_alloc_init+0x1e>
1c008546:	c4063633          	p.bclr	a2,a2,2,0
1c00854a:	c390                	sw	a2,0(a5)
1c00854c:	0007a223          	sw	zero,4(a5)
1c008550:	8082                	ret

1c008552 <rt_user_alloc>:
1c008552:	411c                	lw	a5,0(a0)
1c008554:	059d                	addi	a1,a1,7
1c008556:	c405b5b3          	p.bclr	a1,a1,2,0
1c00855a:	4701                	li	a4,0
1c00855c:	cb89                	beqz	a5,1c00856e <rt_user_alloc+0x1c>
1c00855e:	4394                	lw	a3,0(a5)
1c008560:	43d0                	lw	a2,4(a5)
1c008562:	00b6c863          	blt	a3,a1,1c008572 <rt_user_alloc+0x20>
1c008566:	00b69b63          	bne	a3,a1,1c00857c <rt_user_alloc+0x2a>
1c00856a:	c719                	beqz	a4,1c008578 <rt_user_alloc+0x26>
1c00856c:	c350                	sw	a2,4(a4)
1c00856e:	853e                	mv	a0,a5
1c008570:	8082                	ret
1c008572:	873e                	mv	a4,a5
1c008574:	87b2                	mv	a5,a2
1c008576:	b7dd                	j	1c00855c <rt_user_alloc+0xa>
1c008578:	c110                	sw	a2,0(a0)
1c00857a:	bfd5                	j	1c00856e <rt_user_alloc+0x1c>
1c00857c:	00b78833          	add	a6,a5,a1
1c008580:	40b685b3          	sub	a1,a3,a1
1c008584:	00b82023          	sw	a1,0(a6)
1c008588:	00c82223          	sw	a2,4(a6)
1c00858c:	c701                	beqz	a4,1c008594 <rt_user_alloc+0x42>
1c00858e:	01072223          	sw	a6,4(a4)
1c008592:	bff1                	j	1c00856e <rt_user_alloc+0x1c>
1c008594:	01052023          	sw	a6,0(a0)
1c008598:	bfd9                	j	1c00856e <rt_user_alloc+0x1c>

1c00859a <rt_alloc>:
1c00859a:	1101                	addi	sp,sp,-32
1c00859c:	c84a                	sw	s2,16(sp)
1c00859e:	1c001937          	lui	s2,0x1c001
1c0085a2:	cc22                	sw	s0,24(sp)
1c0085a4:	ca26                	sw	s1,20(sp)
1c0085a6:	c64e                	sw	s3,12(sp)
1c0085a8:	ce06                	sw	ra,28(sp)
1c0085aa:	842a                	mv	s0,a0
1c0085ac:	89ae                	mv	s3,a1
1c0085ae:	448d                	li	s1,3
1c0085b0:	3a090913          	addi	s2,s2,928 # 1c0013a0 <__rt_alloc_l2>
1c0085b4:	00241513          	slli	a0,s0,0x2
1c0085b8:	85ce                	mv	a1,s3
1c0085ba:	954a                	add	a0,a0,s2
1c0085bc:	3f59                	jal	1c008552 <rt_user_alloc>
1c0085be:	e519                	bnez	a0,1c0085cc <rt_alloc+0x32>
1c0085c0:	0405                	addi	s0,s0,1
1c0085c2:	00343363          	p.bneimm	s0,3,1c0085c8 <rt_alloc+0x2e>
1c0085c6:	4401                	li	s0,0
1c0085c8:	14fd                	addi	s1,s1,-1
1c0085ca:	f4ed                	bnez	s1,1c0085b4 <rt_alloc+0x1a>
1c0085cc:	40f2                	lw	ra,28(sp)
1c0085ce:	4462                	lw	s0,24(sp)
1c0085d0:	44d2                	lw	s1,20(sp)
1c0085d2:	4942                	lw	s2,16(sp)
1c0085d4:	49b2                	lw	s3,12(sp)
1c0085d6:	6105                	addi	sp,sp,32
1c0085d8:	8082                	ret

1c0085da <__rt_allocs_init>:
1c0085da:	1141                	addi	sp,sp,-16
1c0085dc:	1c0015b7          	lui	a1,0x1c001
1c0085e0:	c606                	sw	ra,12(sp)
1c0085e2:	3c058793          	addi	a5,a1,960 # 1c0013c0 <__l2_priv0_end>
1c0085e6:	1c008637          	lui	a2,0x1c008
1c0085ea:	04c7c863          	blt	a5,a2,1c00863a <__rt_allocs_init+0x60>
1c0085ee:	4581                	li	a1,0
1c0085f0:	4601                	li	a2,0
1c0085f2:	1c001537          	lui	a0,0x1c001
1c0085f6:	3a050513          	addi	a0,a0,928 # 1c0013a0 <__rt_alloc_l2>
1c0085fa:	3f25                	jal	1c008532 <rt_user_alloc_init>
1c0085fc:	1c00a5b7          	lui	a1,0x1c00a
1c008600:	47858793          	addi	a5,a1,1144 # 1c00a478 <__l2_priv1_end>
1c008604:	1c010637          	lui	a2,0x1c010
1c008608:	02c7cd63          	blt	a5,a2,1c008642 <__rt_allocs_init+0x68>
1c00860c:	4581                	li	a1,0
1c00860e:	4601                	li	a2,0
1c008610:	1c001537          	lui	a0,0x1c001
1c008614:	3a450513          	addi	a0,a0,932 # 1c0013a4 <__rt_alloc_l2+0x4>
1c008618:	3f29                	jal	1c008532 <rt_user_alloc_init>
1c00861a:	1c0105b7          	lui	a1,0x1c010
1c00861e:	40b2                	lw	ra,12(sp)
1c008620:	2ec58793          	addi	a5,a1,748 # 1c0102ec <__l2_shared_end>
1c008624:	1c080637          	lui	a2,0x1c080
1c008628:	1c001537          	lui	a0,0x1c001
1c00862c:	8e1d                	sub	a2,a2,a5
1c00862e:	2ec58593          	addi	a1,a1,748
1c008632:	3a850513          	addi	a0,a0,936 # 1c0013a8 <__rt_alloc_l2+0x8>
1c008636:	0141                	addi	sp,sp,16
1c008638:	bded                	j	1c008532 <rt_user_alloc_init>
1c00863a:	8e1d                	sub	a2,a2,a5
1c00863c:	3c058593          	addi	a1,a1,960
1c008640:	bf4d                	j	1c0085f2 <__rt_allocs_init+0x18>
1c008642:	8e1d                	sub	a2,a2,a5
1c008644:	47858593          	addi	a1,a1,1144
1c008648:	b7e1                	j	1c008610 <__rt_allocs_init+0x36>

1c00864a <rt_perf_init>:
1c00864a:	0511                	addi	a0,a0,4
1c00864c:	012250fb          	lp.setupi	x1,18,1c008654 <rt_perf_init+0xa>
1c008650:	0005222b          	p.sw	zero,4(a0!)
1c008654:	0001                	nop
1c008656:	8082                	ret

1c008658 <rt_perf_conf>:
1c008658:	c10c                	sw	a1,0(a0)
1c00865a:	cc059073          	csrw	0xcc0,a1
1c00865e:	8082                	ret

1c008660 <rt_perf_save>:
1c008660:	4110                	lw	a2,0(a0)
1c008662:	7179                	addi	sp,sp,-48
1c008664:	f14026f3          	csrr	a3,mhartid
1c008668:	8695                	srai	a3,a3,0x5
1c00866a:	d622                	sw	s0,44(sp)
1c00866c:	d426                	sw	s1,40(sp)
1c00866e:	d24a                	sw	s2,36(sp)
1c008670:	d04e                	sw	s3,32(sp)
1c008672:	ce52                	sw	s4,28(sp)
1c008674:	cc56                	sw	s5,24(sp)
1c008676:	ca5a                	sw	s6,20(sp)
1c008678:	c85e                	sw	s7,16(sp)
1c00867a:	c662                	sw	s8,12(sp)
1c00867c:	c466                	sw	s9,8(sp)
1c00867e:	4f85                	li	t6,1
1c008680:	f266b6b3          	p.bclr	a3,a3,25,6
1c008684:	42fd                	li	t0,31
1c008686:	43c5                	li	t2,17
1c008688:	4439                	li	s0,14
1c00868a:	45dd                	li	a1,23
1c00868c:	486d                	li	a6,27
1c00868e:	48f5                	li	a7,29
1c008690:	44f9                	li	s1,30
1c008692:	4365                	li	t1,25
1c008694:	4e4d                	li	t3,19
1c008696:	4ed5                	li	t4,21
1c008698:	4f41                	li	t5,16
1c00869a:	4949                	li	s2,18
1c00869c:	4999                	li	s3,6
1c00869e:	4a29                	li	s4,10
1c0086a0:	4ab1                	li	s5,12
1c0086a2:	4b21                	li	s6,8
1c0086a4:	4b89                	li	s7,2
1c0086a6:	4c11                	li	s8,4
1c0086a8:	ee09                	bnez	a2,1c0086c2 <rt_perf_save+0x62>
1c0086aa:	5432                	lw	s0,44(sp)
1c0086ac:	54a2                	lw	s1,40(sp)
1c0086ae:	5912                	lw	s2,36(sp)
1c0086b0:	5982                	lw	s3,32(sp)
1c0086b2:	4a72                	lw	s4,28(sp)
1c0086b4:	4ae2                	lw	s5,24(sp)
1c0086b6:	4b52                	lw	s6,20(sp)
1c0086b8:	4bc2                	lw	s7,16(sp)
1c0086ba:	4c32                	lw	s8,12(sp)
1c0086bc:	4ca2                	lw	s9,8(sp)
1c0086be:	6145                	addi	sp,sp,48
1c0086c0:	8082                	ret
1c0086c2:	100617b3          	p.fl1	a5,a2
1c0086c6:	00ff9733          	sll	a4,t6,a5
1c0086ca:	fff74713          	not	a4,a4
1c0086ce:	8e79                	and	a2,a2,a4
1c0086d0:	fc569ce3          	bne	a3,t0,1c0086a8 <rt_perf_save+0x48>
1c0086d4:	00779d63          	bne	a5,t2,1c0086ee <rt_perf_save+0x8e>
1c0086d8:	1a10b737          	lui	a4,0x1a10b
1c0086dc:	00872703          	lw	a4,8(a4) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c0086e0:	078a                	slli	a5,a5,0x2
1c0086e2:	97aa                	add	a5,a5,a0
1c0086e4:	0047ac83          	lw	s9,4(a5)
1c0086e8:	9766                	add	a4,a4,s9
1c0086ea:	c3d8                	sw	a4,4(a5)
1c0086ec:	bf75                	j	1c0086a8 <rt_perf_save+0x48>
1c0086ee:	0ee7a763          	p.beqimm	a5,14,1c0087dc <rt_perf_save+0x17c>
1c0086f2:	04f44863          	blt	s0,a5,1c008742 <rt_perf_save+0xe2>
1c0086f6:	0c67a163          	p.beqimm	a5,6,1c0087b8 <rt_perf_save+0x158>
1c0086fa:	02f9c263          	blt	s3,a5,1c00871e <rt_perf_save+0xbe>
1c0086fe:	0a27a463          	p.beqimm	a5,2,1c0087a6 <rt_perf_save+0x146>
1c008702:	00fbc763          	blt	s7,a5,1c008710 <rt_perf_save+0xb0>
1c008706:	cbd1                	beqz	a5,1c00879a <rt_perf_save+0x13a>
1c008708:	0817ac63          	p.beqimm	a5,1,1c0087a0 <rt_perf_save+0x140>
1c00870c:	4701                	li	a4,0
1c00870e:	bfc9                	j	1c0086e0 <rt_perf_save+0x80>
1c008710:	0a47a163          	p.beqimm	a5,4,1c0087b2 <rt_perf_save+0x152>
1c008714:	08fc5c63          	ble	a5,s8,1c0087ac <rt_perf_save+0x14c>
1c008718:	78502773          	csrr	a4,pccr5
1c00871c:	b7d1                	j	1c0086e0 <rt_perf_save+0x80>
1c00871e:	0aa7a663          	p.beqimm	a5,10,1c0087ca <rt_perf_save+0x16a>
1c008722:	00fa4963          	blt	s4,a5,1c008734 <rt_perf_save+0xd4>
1c008726:	0887af63          	p.beqimm	a5,8,1c0087c4 <rt_perf_save+0x164>
1c00872a:	08fb5a63          	ble	a5,s6,1c0087be <rt_perf_save+0x15e>
1c00872e:	78902773          	csrr	a4,pccr9
1c008732:	b77d                	j	1c0086e0 <rt_perf_save+0x80>
1c008734:	0ac7a163          	p.beqimm	a5,12,1c0087d6 <rt_perf_save+0x176>
1c008738:	08fadc63          	ble	a5,s5,1c0087d0 <rt_perf_save+0x170>
1c00873c:	78d02773          	csrr	a4,pccr13
1c008740:	b745                	j	1c0086e0 <rt_perf_save+0x80>
1c008742:	0ab78f63          	beq	a5,a1,1c008800 <rt_perf_save+0x1a0>
1c008746:	02f5c663          	blt	a1,a5,1c008772 <rt_perf_save+0x112>
1c00874a:	0bc78263          	beq	a5,t3,1c0087ee <rt_perf_save+0x18e>
1c00874e:	00fe4b63          	blt	t3,a5,1c008764 <rt_perf_save+0x104>
1c008752:	09e78b63          	beq	a5,t5,1c0087e8 <rt_perf_save+0x188>
1c008756:	09e7c663          	blt	a5,t5,1c0087e2 <rt_perf_save+0x182>
1c00875a:	fb2799e3          	bne	a5,s2,1c00870c <rt_perf_save+0xac>
1c00875e:	79202773          	csrr	a4,pccr18
1c008762:	bfbd                	j	1c0086e0 <rt_perf_save+0x80>
1c008764:	09d78b63          	beq	a5,t4,1c0087fa <rt_perf_save+0x19a>
1c008768:	08fed663          	ble	a5,t4,1c0087f4 <rt_perf_save+0x194>
1c00876c:	79602773          	csrr	a4,pccr22
1c008770:	bf85                	j	1c0086e0 <rt_perf_save+0x80>
1c008772:	0b078063          	beq	a5,a6,1c008812 <rt_perf_save+0x1b2>
1c008776:	00f84963          	blt	a6,a5,1c008788 <rt_perf_save+0x128>
1c00877a:	08678963          	beq	a5,t1,1c00880c <rt_perf_save+0x1ac>
1c00877e:	08f35463          	ble	a5,t1,1c008806 <rt_perf_save+0x1a6>
1c008782:	79a02773          	csrr	a4,pccr26
1c008786:	bfa9                	j	1c0086e0 <rt_perf_save+0x80>
1c008788:	09178b63          	beq	a5,a7,1c00881e <rt_perf_save+0x1be>
1c00878c:	0917c663          	blt	a5,a7,1c008818 <rt_perf_save+0x1b8>
1c008790:	f6979ee3          	bne	a5,s1,1c00870c <rt_perf_save+0xac>
1c008794:	79e02773          	csrr	a4,pccr30
1c008798:	b7a1                	j	1c0086e0 <rt_perf_save+0x80>
1c00879a:	78002773          	csrr	a4,pccr0
1c00879e:	b789                	j	1c0086e0 <rt_perf_save+0x80>
1c0087a0:	78102773          	csrr	a4,pccr1
1c0087a4:	bf35                	j	1c0086e0 <rt_perf_save+0x80>
1c0087a6:	78202773          	csrr	a4,pccr2
1c0087aa:	bf1d                	j	1c0086e0 <rt_perf_save+0x80>
1c0087ac:	78302773          	csrr	a4,pccr3
1c0087b0:	bf05                	j	1c0086e0 <rt_perf_save+0x80>
1c0087b2:	78402773          	csrr	a4,pccr4
1c0087b6:	b72d                	j	1c0086e0 <rt_perf_save+0x80>
1c0087b8:	78602773          	csrr	a4,pccr6
1c0087bc:	b715                	j	1c0086e0 <rt_perf_save+0x80>
1c0087be:	78702773          	csrr	a4,pccr7
1c0087c2:	bf39                	j	1c0086e0 <rt_perf_save+0x80>
1c0087c4:	78802773          	csrr	a4,pccr8
1c0087c8:	bf21                	j	1c0086e0 <rt_perf_save+0x80>
1c0087ca:	78a02773          	csrr	a4,pccr10
1c0087ce:	bf09                	j	1c0086e0 <rt_perf_save+0x80>
1c0087d0:	78b02773          	csrr	a4,pccr11
1c0087d4:	b731                	j	1c0086e0 <rt_perf_save+0x80>
1c0087d6:	78c02773          	csrr	a4,pccr12
1c0087da:	b719                	j	1c0086e0 <rt_perf_save+0x80>
1c0087dc:	78e02773          	csrr	a4,pccr14
1c0087e0:	b701                	j	1c0086e0 <rt_perf_save+0x80>
1c0087e2:	78f02773          	csrr	a4,pccr15
1c0087e6:	bded                	j	1c0086e0 <rt_perf_save+0x80>
1c0087e8:	79002773          	csrr	a4,pccr16
1c0087ec:	bdd5                	j	1c0086e0 <rt_perf_save+0x80>
1c0087ee:	79302773          	csrr	a4,pccr19
1c0087f2:	b5fd                	j	1c0086e0 <rt_perf_save+0x80>
1c0087f4:	79402773          	csrr	a4,pccr20
1c0087f8:	b5e5                	j	1c0086e0 <rt_perf_save+0x80>
1c0087fa:	79502773          	csrr	a4,pccr21
1c0087fe:	b5cd                	j	1c0086e0 <rt_perf_save+0x80>
1c008800:	79702773          	csrr	a4,pccr23
1c008804:	bdf1                	j	1c0086e0 <rt_perf_save+0x80>
1c008806:	79802773          	csrr	a4,pccr24
1c00880a:	bdd9                	j	1c0086e0 <rt_perf_save+0x80>
1c00880c:	79902773          	csrr	a4,pccr25
1c008810:	bdc1                	j	1c0086e0 <rt_perf_save+0x80>
1c008812:	79b02773          	csrr	a4,pccr27
1c008816:	b5e9                	j	1c0086e0 <rt_perf_save+0x80>
1c008818:	79c02773          	csrr	a4,pccr28
1c00881c:	b5d1                	j	1c0086e0 <rt_perf_save+0x80>
1c00881e:	79d02773          	csrr	a4,pccr29
1c008822:	bd7d                	j	1c0086e0 <rt_perf_save+0x80>

1c008824 <__rt_himax_init>:
1c008824:	1c0017b7          	lui	a5,0x1c001
1c008828:	da078023          	sb	zero,-608(a5) # 1c000da0 <stack>
1c00882c:	8082                	ret

1c00882e <__rt_init>:
1c00882e:	1141                	addi	sp,sp,-16
1c008830:	c606                	sw	ra,12(sp)
1c008832:	c422                	sw	s0,8(sp)
1c008834:	2ef1                	jal	1c008c10 <__rt_bridge_set_available>
1c008836:	1c0017b7          	lui	a5,0x1c001
1c00883a:	2c87a783          	lw	a5,712(a5) # 1c0012c8 <__rt_platform>
1c00883e:	0237b263          	p.bneimm	a5,3,1c008862 <__rt_init+0x34>
1c008842:	7d005073          	csrwi	0x7d0,0
1c008846:	1c0007b7          	lui	a5,0x1c000
1c00884a:	5a078793          	addi	a5,a5,1440 # 1c0005a0 <stack_start>
1c00884e:	7d179073          	csrw	0x7d1,a5
1c008852:	1c0017b7          	lui	a5,0x1c001
1c008856:	da078793          	addi	a5,a5,-608 # 1c000da0 <stack>
1c00885a:	7d279073          	csrw	0x7d2,a5
1c00885e:	7d00d073          	csrwi	0x7d0,1
1c008862:	2a85                	jal	1c0089d2 <__rt_irq_init>
1c008864:	1a1067b7          	lui	a5,0x1a106
1c008868:	577d                	li	a4,-1
1c00886a:	00478693          	addi	a3,a5,4 # 1a106004 <__rt_udma_callback_data+0x1a105d0c>
1c00886e:	c298                	sw	a4,0(a3)
1c008870:	00878693          	addi	a3,a5,8
1c008874:	c298                	sw	a4,0(a3)
1c008876:	00c78693          	addi	a3,a5,12
1c00887a:	c298                	sw	a4,0(a3)
1c00887c:	01078693          	addi	a3,a5,16
1c008880:	c298                	sw	a4,0(a3)
1c008882:	01478693          	addi	a3,a5,20
1c008886:	c298                	sw	a4,0(a3)
1c008888:	01878693          	addi	a3,a5,24
1c00888c:	c298                	sw	a4,0(a3)
1c00888e:	01c78693          	addi	a3,a5,28
1c008892:	c298                	sw	a4,0(a3)
1c008894:	02078793          	addi	a5,a5,32
1c008898:	1c0085b7          	lui	a1,0x1c008
1c00889c:	23a58593          	addi	a1,a1,570 # 1c00823a <__rt_fc_socevents_handler>
1c0088a0:	4569                	li	a0,26
1c0088a2:	c398                	sw	a4,0(a5)
1c0088a4:	2851                	jal	1c008938 <rt_irq_set_handler>
1c0088a6:	1a10a7b7          	lui	a5,0x1a10a
1c0088aa:	04000737          	lui	a4,0x4000
1c0088ae:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__rt_udma_callback_data+0x1a10950c>
1c0088b2:	1c000437          	lui	s0,0x1c000
1c0088b6:	189000ef          	jal	ra,1c00923e <__rt_freq_init>
1c0088ba:	32840413          	addi	s0,s0,808 # 1c000328 <ctor_list+0x4>
1c0088be:	2275                	jal	1c008a6a <__rt_utils_init>
1c0088c0:	3b29                	jal	1c0085da <__rt_allocs_init>
1c0088c2:	2519                	jal	1c008ec8 <__rt_event_sched_init>
1c0088c4:	1f7000ef          	jal	ra,1c0092ba <__rt_padframe_init>
1c0088c8:	0044278b          	p.lw	a5,4(s0!)
1c0088cc:	e795                	bnez	a5,1c0088f8 <__rt_init+0xca>
1c0088ce:	300467f3          	csrrsi	a5,mstatus,8
1c0088d2:	4501                	li	a0,0
1c0088d4:	229d                	jal	1c008a3a <__rt_cbsys_exec>
1c0088d6:	c11d                	beqz	a0,1c0088fc <__rt_init+0xce>
1c0088d8:	f1402673          	csrr	a2,mhartid
1c0088dc:	1c000537          	lui	a0,0x1c000
1c0088e0:	40565593          	srai	a1,a2,0x5
1c0088e4:	f265b5b3          	p.bclr	a1,a1,25,6
1c0088e8:	f4563633          	p.bclr	a2,a2,26,5
1c0088ec:	44450513          	addi	a0,a0,1092 # 1c000444 <__DTOR_END__+0xec>
1c0088f0:	036010ef          	jal	ra,1c009926 <printf>
1c0088f4:	79f000ef          	jal	ra,1c009892 <abort>
1c0088f8:	9782                	jalr	a5
1c0088fa:	b7f9                	j	1c0088c8 <__rt_init+0x9a>
1c0088fc:	40b2                	lw	ra,12(sp)
1c0088fe:	4422                	lw	s0,8(sp)
1c008900:	0141                	addi	sp,sp,16
1c008902:	8082                	ret

1c008904 <__rt_deinit>:
1c008904:	1c0017b7          	lui	a5,0x1c001
1c008908:	2c87a783          	lw	a5,712(a5) # 1c0012c8 <__rt_platform>
1c00890c:	1141                	addi	sp,sp,-16
1c00890e:	c606                	sw	ra,12(sp)
1c008910:	c422                	sw	s0,8(sp)
1c008912:	0037b463          	p.bneimm	a5,3,1c00891a <__rt_deinit+0x16>
1c008916:	7d005073          	csrwi	0x7d0,0
1c00891a:	4505                	li	a0,1
1c00891c:	1c000437          	lui	s0,0x1c000
1c008920:	2a29                	jal	1c008a3a <__rt_cbsys_exec>
1c008922:	35440413          	addi	s0,s0,852 # 1c000354 <dtor_list+0x4>
1c008926:	0044278b          	p.lw	a5,4(s0!)
1c00892a:	e789                	bnez	a5,1c008934 <__rt_deinit+0x30>
1c00892c:	40b2                	lw	ra,12(sp)
1c00892e:	4422                	lw	s0,8(sp)
1c008930:	0141                	addi	sp,sp,16
1c008932:	8082                	ret
1c008934:	9782                	jalr	a5
1c008936:	bfc5                	j	1c008926 <__rt_deinit+0x22>

1c008938 <rt_irq_set_handler>:
1c008938:	f14027f3          	csrr	a5,mhartid
1c00893c:	46fd                	li	a3,31
1c00893e:	ca5797b3          	p.extractu	a5,a5,5,5
1c008942:	4701                	li	a4,0
1c008944:	00d79663          	bne	a5,a3,1c008950 <rt_irq_set_handler+0x18>
1c008948:	30502773          	csrr	a4,mtvec
1c00894c:	c0073733          	p.bclr	a4,a4,0,0
1c008950:	050a                	slli	a0,a0,0x2
1c008952:	8d89                	sub	a1,a1,a0
1c008954:	8d99                	sub	a1,a1,a4
1c008956:	c14586b3          	p.extract	a3,a1,0,20
1c00895a:	06f00793          	li	a5,111
1c00895e:	c1f6a7b3          	p.insert	a5,a3,0,31
1c008962:	d21586b3          	p.extract	a3,a1,9,1
1c008966:	d356a7b3          	p.insert	a5,a3,9,21
1c00896a:	c0b586b3          	p.extract	a3,a1,0,11
1c00896e:	c146a7b3          	p.insert	a5,a3,0,20
1c008972:	cec585b3          	p.extract	a1,a1,7,12
1c008976:	cec5a7b3          	p.insert	a5,a1,7,12
1c00897a:	00f56723          	p.sw	a5,a4(a0)
1c00897e:	8082                	ret

1c008980 <illegal_insn_handler_c>:
1c008980:	8082                	ret

1c008982 <__rt_handle_illegal_instr>:
1c008982:	1141                	addi	sp,sp,-16
1c008984:	c606                	sw	ra,12(sp)
1c008986:	c422                	sw	s0,8(sp)
1c008988:	341026f3          	csrr	a3,mepc
1c00898c:	1c0017b7          	lui	a5,0x1c001
1c008990:	da87a703          	lw	a4,-600(a5) # 1c000da8 <__rt_debug_config>
1c008994:	843e                	mv	s0,a5
1c008996:	fc173733          	p.bclr	a4,a4,30,1
1c00899a:	c305                	beqz	a4,1c0089ba <__rt_handle_illegal_instr+0x38>
1c00899c:	4298                	lw	a4,0(a3)
1c00899e:	f1402673          	csrr	a2,mhartid
1c0089a2:	1c000537          	lui	a0,0x1c000
1c0089a6:	40565593          	srai	a1,a2,0x5
1c0089aa:	f265b5b3          	p.bclr	a1,a1,25,6
1c0089ae:	f4563633          	p.bclr	a2,a2,26,5
1c0089b2:	49c50513          	addi	a0,a0,1180 # 1c00049c <__DTOR_END__+0x144>
1c0089b6:	771000ef          	jal	ra,1c009926 <printf>
1c0089ba:	da842783          	lw	a5,-600(s0)
1c0089be:	c01797b3          	p.extractu	a5,a5,0,1
1c0089c2:	c399                	beqz	a5,1c0089c8 <__rt_handle_illegal_instr+0x46>
1c0089c4:	6cf000ef          	jal	ra,1c009892 <abort>
1c0089c8:	4422                	lw	s0,8(sp)
1c0089ca:	40b2                	lw	ra,12(sp)
1c0089cc:	0141                	addi	sp,sp,16
1c0089ce:	fb3ff06f          	j	1c008980 <illegal_insn_handler_c>

1c0089d2 <__rt_irq_init>:
1c0089d2:	1a10a7b7          	lui	a5,0x1a10a
1c0089d6:	577d                	li	a4,-1
1c0089d8:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__rt_udma_callback_data+0x1a109510>
1c0089dc:	f14027f3          	csrr	a5,mhartid
1c0089e0:	477d                	li	a4,31
1c0089e2:	ca5797b3          	p.extractu	a5,a5,5,5
1c0089e6:	00e79a63          	bne	a5,a4,1c0089fa <__rt_irq_init+0x28>
1c0089ea:	1c0087b7          	lui	a5,0x1c008
1c0089ee:	00078793          	mv	a5,a5
1c0089f2:	c007c7b3          	p.bset	a5,a5,0,0
1c0089f6:	30579073          	csrw	mtvec,a5
1c0089fa:	8082                	ret

1c0089fc <__rt_cbsys_add>:
1c0089fc:	1101                	addi	sp,sp,-32
1c0089fe:	cc22                	sw	s0,24(sp)
1c008a00:	ca26                	sw	s1,20(sp)
1c008a02:	842a                	mv	s0,a0
1c008a04:	84ae                	mv	s1,a1
1c008a06:	4501                	li	a0,0
1c008a08:	45b1                	li	a1,12
1c008a0a:	c632                	sw	a2,12(sp)
1c008a0c:	ce06                	sw	ra,28(sp)
1c008a0e:	3671                	jal	1c00859a <rt_alloc>
1c008a10:	4632                	lw	a2,12(sp)
1c008a12:	c115                	beqz	a0,1c008a36 <__rt_cbsys_add+0x3a>
1c008a14:	1c0017b7          	lui	a5,0x1c001
1c008a18:	040a                	slli	s0,s0,0x2
1c008a1a:	dac78793          	addi	a5,a5,-596 # 1c000dac <cbsys_first>
1c008a1e:	97a2                	add	a5,a5,s0
1c008a20:	4398                	lw	a4,0(a5)
1c008a22:	c104                	sw	s1,0(a0)
1c008a24:	c150                	sw	a2,4(a0)
1c008a26:	c518                	sw	a4,8(a0)
1c008a28:	c388                	sw	a0,0(a5)
1c008a2a:	4501                	li	a0,0
1c008a2c:	40f2                	lw	ra,28(sp)
1c008a2e:	4462                	lw	s0,24(sp)
1c008a30:	44d2                	lw	s1,20(sp)
1c008a32:	6105                	addi	sp,sp,32
1c008a34:	8082                	ret
1c008a36:	557d                	li	a0,-1
1c008a38:	bfd5                	j	1c008a2c <__rt_cbsys_add+0x30>

1c008a3a <__rt_cbsys_exec>:
1c008a3a:	1141                	addi	sp,sp,-16
1c008a3c:	c422                	sw	s0,8(sp)
1c008a3e:	1c001437          	lui	s0,0x1c001
1c008a42:	050a                	slli	a0,a0,0x2
1c008a44:	dac40413          	addi	s0,s0,-596 # 1c000dac <cbsys_first>
1c008a48:	20a47403          	p.lw	s0,a0(s0)
1c008a4c:	c606                	sw	ra,12(sp)
1c008a4e:	e411                	bnez	s0,1c008a5a <__rt_cbsys_exec+0x20>
1c008a50:	4501                	li	a0,0
1c008a52:	40b2                	lw	ra,12(sp)
1c008a54:	4422                	lw	s0,8(sp)
1c008a56:	0141                	addi	sp,sp,16
1c008a58:	8082                	ret
1c008a5a:	401c                	lw	a5,0(s0)
1c008a5c:	4048                	lw	a0,4(s0)
1c008a5e:	9782                	jalr	a5
1c008a60:	e119                	bnez	a0,1c008a66 <__rt_cbsys_exec+0x2c>
1c008a62:	4400                	lw	s0,8(s0)
1c008a64:	b7ed                	j	1c008a4e <__rt_cbsys_exec+0x14>
1c008a66:	557d                	li	a0,-1
1c008a68:	b7ed                	j	1c008a52 <__rt_cbsys_exec+0x18>

1c008a6a <__rt_utils_init>:
1c008a6a:	1c0017b7          	lui	a5,0x1c001
1c008a6e:	dac78793          	addi	a5,a5,-596 # 1c000dac <cbsys_first>
1c008a72:	0007a023          	sw	zero,0(a5)
1c008a76:	0007a223          	sw	zero,4(a5)
1c008a7a:	0007a423          	sw	zero,8(a5)
1c008a7e:	0007a623          	sw	zero,12(a5)
1c008a82:	0007a823          	sw	zero,16(a5)
1c008a86:	0007aa23          	sw	zero,20(a5)
1c008a8a:	8082                	ret

1c008a8c <__rt_fc_lock>:
1c008a8c:	1141                	addi	sp,sp,-16
1c008a8e:	c422                	sw	s0,8(sp)
1c008a90:	c606                	sw	ra,12(sp)
1c008a92:	c226                	sw	s1,4(sp)
1c008a94:	842a                	mv	s0,a0
1c008a96:	300474f3          	csrrci	s1,mstatus,8
1c008a9a:	401c                	lw	a5,0(s0)
1c008a9c:	eb91                	bnez	a5,1c008ab0 <__rt_fc_lock+0x24>
1c008a9e:	4785                	li	a5,1
1c008aa0:	c01c                	sw	a5,0(s0)
1c008aa2:	30049073          	csrw	mstatus,s1
1c008aa6:	40b2                	lw	ra,12(sp)
1c008aa8:	4422                	lw	s0,8(sp)
1c008aaa:	4492                	lw	s1,4(sp)
1c008aac:	0141                	addi	sp,sp,16
1c008aae:	8082                	ret
1c008ab0:	4585                	li	a1,1
1c008ab2:	e3ff7517          	auipc	a0,0xe3ff7
1c008ab6:	56a50513          	addi	a0,a0,1386 # 1c <__rt_sched>
1c008aba:	26b5                	jal	1c008e26 <__rt_event_execute>
1c008abc:	bff9                	j	1c008a9a <__rt_fc_lock+0xe>

1c008abe <__rt_fc_unlock>:
1c008abe:	300477f3          	csrrci	a5,mstatus,8
1c008ac2:	00052023          	sw	zero,0(a0)
1c008ac6:	30079073          	csrw	mstatus,a5
1c008aca:	8082                	ret

1c008acc <__rt_event_enqueue>:
1c008acc:	01c02783          	lw	a5,28(zero) # 1c <__rt_sched>
1c008ad0:	00052c23          	sw	zero,24(a0)
1c008ad4:	c799                	beqz	a5,1c008ae2 <__rt_event_enqueue+0x16>
1c008ad6:	02002783          	lw	a5,32(zero) # 20 <__rt_sched+0x4>
1c008ada:	cf88                	sw	a0,24(a5)
1c008adc:	02a02023          	sw	a0,32(zero) # 20 <__rt_sched+0x4>
1c008ae0:	8082                	ret
1c008ae2:	00a02e23          	sw	a0,28(zero) # 1c <__rt_sched>
1c008ae6:	bfdd                	j	1c008adc <__rt_event_enqueue+0x10>

1c008ae8 <__rt_bridge_check_bridge_req.part.5>:
1c008ae8:	1c001737          	lui	a4,0x1c001
1c008aec:	20870793          	addi	a5,a4,520 # 1c001208 <__hal_debug_struct>
1c008af0:	0a47a783          	lw	a5,164(a5)
1c008af4:	20870713          	addi	a4,a4,520
1c008af8:	c789                	beqz	a5,1c008b02 <__rt_bridge_check_bridge_req.part.5+0x1a>
1c008afa:	4f94                	lw	a3,24(a5)
1c008afc:	e681                	bnez	a3,1c008b04 <__rt_bridge_check_bridge_req.part.5+0x1c>
1c008afe:	0af72623          	sw	a5,172(a4)
1c008b02:	8082                	ret
1c008b04:	479c                	lw	a5,8(a5)
1c008b06:	bfcd                	j	1c008af8 <__rt_bridge_check_bridge_req.part.5+0x10>

1c008b08 <__rt_bridge_wait>:
1c008b08:	f14027f3          	csrr	a5,mhartid
1c008b0c:	477d                	li	a4,31
1c008b0e:	ca5797b3          	p.extractu	a5,a5,5,5
1c008b12:	02e79f63          	bne	a5,a4,1c008b50 <__rt_bridge_wait+0x48>
1c008b16:	1a10a7b7          	lui	a5,0x1a10a
1c008b1a:	80c78513          	addi	a0,a5,-2036 # 1a10980c <__rt_udma_callback_data+0x1a109514>
1c008b1e:	6711                	lui	a4,0x4
1c008b20:	80478593          	addi	a1,a5,-2044
1c008b24:	80878613          	addi	a2,a5,-2040
1c008b28:	300476f3          	csrrci	a3,mstatus,8
1c008b2c:	00052803          	lw	a6,0(a0)
1c008b30:	01181893          	slli	a7,a6,0x11
1c008b34:	0008c963          	bltz	a7,1c008b46 <__rt_bridge_wait+0x3e>
1c008b38:	c198                	sw	a4,0(a1)
1c008b3a:	10500073          	wfi
1c008b3e:	c218                	sw	a4,0(a2)
1c008b40:	30069073          	csrw	mstatus,a3
1c008b44:	b7d5                	j	1c008b28 <__rt_bridge_wait+0x20>
1c008b46:	81478793          	addi	a5,a5,-2028
1c008b4a:	c398                	sw	a4,0(a5)
1c008b4c:	30069073          	csrw	mstatus,a3
1c008b50:	8082                	ret

1c008b52 <__rt_bridge_handle_notif>:
1c008b52:	1141                	addi	sp,sp,-16
1c008b54:	c422                	sw	s0,8(sp)
1c008b56:	1c001437          	lui	s0,0x1c001
1c008b5a:	20840793          	addi	a5,s0,520 # 1c001208 <__hal_debug_struct>
1c008b5e:	0a47a783          	lw	a5,164(a5)
1c008b62:	c606                	sw	ra,12(sp)
1c008b64:	c226                	sw	s1,4(sp)
1c008b66:	c04a                	sw	s2,0(sp)
1c008b68:	20840413          	addi	s0,s0,520
1c008b6c:	c399                	beqz	a5,1c008b72 <__rt_bridge_handle_notif+0x20>
1c008b6e:	4bd8                	lw	a4,20(a5)
1c008b70:	e30d                	bnez	a4,1c008b92 <__rt_bridge_handle_notif+0x40>
1c008b72:	0b442783          	lw	a5,180(s0)
1c008b76:	c789                	beqz	a5,1c008b80 <__rt_bridge_handle_notif+0x2e>
1c008b78:	43a8                	lw	a0,64(a5)
1c008b7a:	0a042a23          	sw	zero,180(s0)
1c008b7e:	37b9                	jal	1c008acc <__rt_event_enqueue>
1c008b80:	0ac42783          	lw	a5,172(s0)
1c008b84:	eb9d                	bnez	a5,1c008bba <__rt_bridge_handle_notif+0x68>
1c008b86:	4422                	lw	s0,8(sp)
1c008b88:	40b2                	lw	ra,12(sp)
1c008b8a:	4492                	lw	s1,4(sp)
1c008b8c:	4902                	lw	s2,0(sp)
1c008b8e:	0141                	addi	sp,sp,16
1c008b90:	bfa1                	j	1c008ae8 <__rt_bridge_check_bridge_req.part.5>
1c008b92:	0087a903          	lw	s2,8(a5)
1c008b96:	4fd8                	lw	a4,28(a5)
1c008b98:	0b242223          	sw	s2,164(s0)
1c008b9c:	cb01                	beqz	a4,1c008bac <__rt_bridge_handle_notif+0x5a>
1c008b9e:	0b042703          	lw	a4,176(s0)
1c008ba2:	c798                	sw	a4,8(a5)
1c008ba4:	0af42823          	sw	a5,176(s0)
1c008ba8:	87ca                	mv	a5,s2
1c008baa:	b7c9                	j	1c008b6c <__rt_bridge_handle_notif+0x1a>
1c008bac:	43a8                	lw	a0,64(a5)
1c008bae:	300474f3          	csrrci	s1,mstatus,8
1c008bb2:	3f29                	jal	1c008acc <__rt_event_enqueue>
1c008bb4:	30049073          	csrw	mstatus,s1
1c008bb8:	bfc5                	j	1c008ba8 <__rt_bridge_handle_notif+0x56>
1c008bba:	40b2                	lw	ra,12(sp)
1c008bbc:	4422                	lw	s0,8(sp)
1c008bbe:	4492                	lw	s1,4(sp)
1c008bc0:	4902                	lw	s2,0(sp)
1c008bc2:	0141                	addi	sp,sp,16
1c008bc4:	8082                	ret

1c008bc6 <__rt_bridge_check_connection>:
1c008bc6:	1c0016b7          	lui	a3,0x1c001
1c008bca:	20868693          	addi	a3,a3,520 # 1c001208 <__hal_debug_struct>
1c008bce:	469c                	lw	a5,8(a3)
1c008bd0:	ef9d                	bnez	a5,1c008c0e <__rt_bridge_check_connection+0x48>
1c008bd2:	1a1047b7          	lui	a5,0x1a104
1c008bd6:	07478793          	addi	a5,a5,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008bda:	4398                	lw	a4,0(a5)
1c008bdc:	8325                	srli	a4,a4,0x9
1c008bde:	f8373733          	p.bclr	a4,a4,28,3
1c008be2:	02773663          	p.bneimm	a4,7,1c008c0e <__rt_bridge_check_connection+0x48>
1c008be6:	1141                	addi	sp,sp,-16
1c008be8:	c422                	sw	s0,8(sp)
1c008bea:	c606                	sw	ra,12(sp)
1c008bec:	4705                	li	a4,1
1c008bee:	c698                	sw	a4,8(a3)
1c008bf0:	4709                	li	a4,2
1c008bf2:	c398                	sw	a4,0(a5)
1c008bf4:	843e                	mv	s0,a5
1c008bf6:	401c                	lw	a5,0(s0)
1c008bf8:	83a5                	srli	a5,a5,0x9
1c008bfa:	f837b7b3          	p.bclr	a5,a5,28,3
1c008bfe:	0077a663          	p.beqimm	a5,7,1c008c0a <__rt_bridge_check_connection+0x44>
1c008c02:	40b2                	lw	ra,12(sp)
1c008c04:	4422                	lw	s0,8(sp)
1c008c06:	0141                	addi	sp,sp,16
1c008c08:	8082                	ret
1c008c0a:	3dfd                	jal	1c008b08 <__rt_bridge_wait>
1c008c0c:	b7ed                	j	1c008bf6 <__rt_bridge_check_connection+0x30>
1c008c0e:	8082                	ret

1c008c10 <__rt_bridge_set_available>:
1c008c10:	1c0017b7          	lui	a5,0x1c001
1c008c14:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008c18:	4798                	lw	a4,8(a5)
1c008c1a:	1a1047b7          	lui	a5,0x1a104
1c008c1e:	07478793          	addi	a5,a5,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008c22:	e701                	bnez	a4,1c008c2a <__rt_bridge_set_available+0x1a>
1c008c24:	4721                	li	a4,8
1c008c26:	c398                	sw	a4,0(a5)
1c008c28:	8082                	ret
1c008c2a:	4709                	li	a4,2
1c008c2c:	bfed                	j	1c008c26 <__rt_bridge_set_available+0x16>

1c008c2e <__rt_bridge_send_notif>:
1c008c2e:	1141                	addi	sp,sp,-16
1c008c30:	c606                	sw	ra,12(sp)
1c008c32:	3f51                	jal	1c008bc6 <__rt_bridge_check_connection>
1c008c34:	1c0017b7          	lui	a5,0x1c001
1c008c38:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008c3c:	479c                	lw	a5,8(a5)
1c008c3e:	c789                	beqz	a5,1c008c48 <__rt_bridge_send_notif+0x1a>
1c008c40:	1a1047b7          	lui	a5,0x1a104
1c008c44:	4719                	li	a4,6
1c008c46:	dbf8                	sw	a4,116(a5)
1c008c48:	40b2                	lw	ra,12(sp)
1c008c4a:	0141                	addi	sp,sp,16
1c008c4c:	8082                	ret

1c008c4e <__rt_bridge_clear_notif>:
1c008c4e:	1141                	addi	sp,sp,-16
1c008c50:	c606                	sw	ra,12(sp)
1c008c52:	3f95                	jal	1c008bc6 <__rt_bridge_check_connection>
1c008c54:	1c0017b7          	lui	a5,0x1c001
1c008c58:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008c5c:	479c                	lw	a5,8(a5)
1c008c5e:	c781                	beqz	a5,1c008c66 <__rt_bridge_clear_notif+0x18>
1c008c60:	40b2                	lw	ra,12(sp)
1c008c62:	0141                	addi	sp,sp,16
1c008c64:	b775                	j	1c008c10 <__rt_bridge_set_available>
1c008c66:	40b2                	lw	ra,12(sp)
1c008c68:	0141                	addi	sp,sp,16
1c008c6a:	8082                	ret

1c008c6c <__rt_bridge_printf_flush>:
1c008c6c:	1141                	addi	sp,sp,-16
1c008c6e:	c422                	sw	s0,8(sp)
1c008c70:	c606                	sw	ra,12(sp)
1c008c72:	1c001437          	lui	s0,0x1c001
1c008c76:	3f81                	jal	1c008bc6 <__rt_bridge_check_connection>
1c008c78:	20840793          	addi	a5,s0,520 # 1c001208 <__hal_debug_struct>
1c008c7c:	479c                	lw	a5,8(a5)
1c008c7e:	c385                	beqz	a5,1c008c9e <__rt_bridge_printf_flush+0x32>
1c008c80:	20840413          	addi	s0,s0,520
1c008c84:	485c                	lw	a5,20(s0)
1c008c86:	e399                	bnez	a5,1c008c8c <__rt_bridge_printf_flush+0x20>
1c008c88:	4c1c                	lw	a5,24(s0)
1c008c8a:	cb91                	beqz	a5,1c008c9e <__rt_bridge_printf_flush+0x32>
1c008c8c:	374d                	jal	1c008c2e <__rt_bridge_send_notif>
1c008c8e:	485c                	lw	a5,20(s0)
1c008c90:	e789                	bnez	a5,1c008c9a <__rt_bridge_printf_flush+0x2e>
1c008c92:	4422                	lw	s0,8(sp)
1c008c94:	40b2                	lw	ra,12(sp)
1c008c96:	0141                	addi	sp,sp,16
1c008c98:	bf5d                	j	1c008c4e <__rt_bridge_clear_notif>
1c008c9a:	35bd                	jal	1c008b08 <__rt_bridge_wait>
1c008c9c:	bfcd                	j	1c008c8e <__rt_bridge_printf_flush+0x22>
1c008c9e:	40b2                	lw	ra,12(sp)
1c008ca0:	4422                	lw	s0,8(sp)
1c008ca2:	0141                	addi	sp,sp,16
1c008ca4:	8082                	ret

1c008ca6 <__rt_bridge_req_shutdown>:
1c008ca6:	1141                	addi	sp,sp,-16
1c008ca8:	c606                	sw	ra,12(sp)
1c008caa:	c422                	sw	s0,8(sp)
1c008cac:	3f29                	jal	1c008bc6 <__rt_bridge_check_connection>
1c008cae:	1c0017b7          	lui	a5,0x1c001
1c008cb2:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008cb6:	479c                	lw	a5,8(a5)
1c008cb8:	c7a1                	beqz	a5,1c008d00 <__rt_bridge_req_shutdown+0x5a>
1c008cba:	1a104437          	lui	s0,0x1a104
1c008cbe:	377d                	jal	1c008c6c <__rt_bridge_printf_flush>
1c008cc0:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008cc4:	401c                	lw	a5,0(s0)
1c008cc6:	83a5                	srli	a5,a5,0x9
1c008cc8:	f837b7b3          	p.bclr	a5,a5,28,3
1c008ccc:	0277ae63          	p.beqimm	a5,7,1c008d08 <__rt_bridge_req_shutdown+0x62>
1c008cd0:	4791                	li	a5,4
1c008cd2:	c01c                	sw	a5,0(s0)
1c008cd4:	1a104437          	lui	s0,0x1a104
1c008cd8:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008cdc:	401c                	lw	a5,0(s0)
1c008cde:	83a5                	srli	a5,a5,0x9
1c008ce0:	f837b7b3          	p.bclr	a5,a5,28,3
1c008ce4:	0277b463          	p.bneimm	a5,7,1c008d0c <__rt_bridge_req_shutdown+0x66>
1c008ce8:	00042023          	sw	zero,0(s0)
1c008cec:	1a104437          	lui	s0,0x1a104
1c008cf0:	07440413          	addi	s0,s0,116 # 1a104074 <__rt_udma_callback_data+0x1a103d7c>
1c008cf4:	401c                	lw	a5,0(s0)
1c008cf6:	83a5                	srli	a5,a5,0x9
1c008cf8:	f837b7b3          	p.bclr	a5,a5,28,3
1c008cfc:	0077aa63          	p.beqimm	a5,7,1c008d10 <__rt_bridge_req_shutdown+0x6a>
1c008d00:	40b2                	lw	ra,12(sp)
1c008d02:	4422                	lw	s0,8(sp)
1c008d04:	0141                	addi	sp,sp,16
1c008d06:	8082                	ret
1c008d08:	3501                	jal	1c008b08 <__rt_bridge_wait>
1c008d0a:	bf6d                	j	1c008cc4 <__rt_bridge_req_shutdown+0x1e>
1c008d0c:	3bf5                	jal	1c008b08 <__rt_bridge_wait>
1c008d0e:	b7f9                	j	1c008cdc <__rt_bridge_req_shutdown+0x36>
1c008d10:	3be5                	jal	1c008b08 <__rt_bridge_wait>
1c008d12:	b7cd                	j	1c008cf4 <__rt_bridge_req_shutdown+0x4e>

1c008d14 <__rt_bridge_init>:
1c008d14:	1c0017b7          	lui	a5,0x1c001
1c008d18:	1a10a737          	lui	a4,0x1a10a
1c008d1c:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c008d20:	81070713          	addi	a4,a4,-2032 # 1a109810 <__rt_udma_callback_data+0x1a109518>
1c008d24:	0ae7ac23          	sw	a4,184(a5)
1c008d28:	4741                	li	a4,16
1c008d2a:	0a07a223          	sw	zero,164(a5)
1c008d2e:	0a07a623          	sw	zero,172(a5)
1c008d32:	0a07aa23          	sw	zero,180(a5)
1c008d36:	0ae7ae23          	sw	a4,188(a5)
1c008d3a:	00400793          	li	a5,4
1c008d3e:	0007a823          	sw	zero,16(a5)
1c008d42:	0007a023          	sw	zero,0(a5)
1c008d46:	8082                	ret

1c008d48 <__rt_event_init>:
1c008d48:	02052023          	sw	zero,32(a0)
1c008d4c:	02052223          	sw	zero,36(a0)
1c008d50:	02052823          	sw	zero,48(a0)
1c008d54:	00052023          	sw	zero,0(a0)
1c008d58:	8082                	ret

1c008d5a <__rt_wait_event_prepare_blocking>:
1c008d5a:	01800793          	li	a5,24
1c008d5e:	4388                	lw	a0,0(a5)
1c008d60:	4d18                	lw	a4,24(a0)
1c008d62:	02052223          	sw	zero,36(a0)
1c008d66:	c398                	sw	a4,0(a5)
1c008d68:	4785                	li	a5,1
1c008d6a:	d11c                	sw	a5,32(a0)
1c008d6c:	00052023          	sw	zero,0(a0)
1c008d70:	8082                	ret

1c008d72 <rt_event_alloc>:
1c008d72:	1141                	addi	sp,sp,-16
1c008d74:	c422                	sw	s0,8(sp)
1c008d76:	c606                	sw	ra,12(sp)
1c008d78:	c226                	sw	s1,4(sp)
1c008d7a:	842e                	mv	s0,a1
1c008d7c:	300474f3          	csrrci	s1,mstatus,8
1c008d80:	f14027f3          	csrr	a5,mhartid
1c008d84:	8795                	srai	a5,a5,0x5
1c008d86:	f267b7b3          	p.bclr	a5,a5,25,6
1c008d8a:	477d                	li	a4,31
1c008d8c:	00378513          	addi	a0,a5,3
1c008d90:	00e79363          	bne	a5,a4,1c008d96 <rt_event_alloc+0x24>
1c008d94:	4501                	li	a0,0
1c008d96:	08c00593          	li	a1,140
1c008d9a:	02b405b3          	mul	a1,s0,a1
1c008d9e:	ffcff0ef          	jal	ra,1c00859a <rt_alloc>
1c008da2:	87aa                	mv	a5,a0
1c008da4:	557d                	li	a0,-1
1c008da6:	cf91                	beqz	a5,1c008dc2 <rt_event_alloc+0x50>
1c008da8:	01802683          	lw	a3,24(zero) # 18 <__rt_first_free>
1c008dac:	4581                	li	a1,0
1c008dae:	4601                	li	a2,0
1c008db0:	01800713          	li	a4,24
1c008db4:	00864c63          	blt	a2,s0,1c008dcc <rt_event_alloc+0x5a>
1c008db8:	c191                	beqz	a1,1c008dbc <rt_event_alloc+0x4a>
1c008dba:	c314                	sw	a3,0(a4)
1c008dbc:	30049073          	csrw	mstatus,s1
1c008dc0:	4501                	li	a0,0
1c008dc2:	40b2                	lw	ra,12(sp)
1c008dc4:	4422                	lw	s0,8(sp)
1c008dc6:	4492                	lw	s1,4(sp)
1c008dc8:	0141                	addi	sp,sp,16
1c008dca:	8082                	ret
1c008dcc:	cf94                	sw	a3,24(a5)
1c008dce:	0207a023          	sw	zero,32(a5)
1c008dd2:	0207a223          	sw	zero,36(a5)
1c008dd6:	0207a823          	sw	zero,48(a5)
1c008dda:	0007a023          	sw	zero,0(a5)
1c008dde:	86be                	mv	a3,a5
1c008de0:	0605                	addi	a2,a2,1
1c008de2:	4585                	li	a1,1
1c008de4:	08c78793          	addi	a5,a5,140
1c008de8:	b7f1                	j	1c008db4 <rt_event_alloc+0x42>

1c008dea <rt_event_get>:
1c008dea:	30047773          	csrrci	a4,mstatus,8
1c008dee:	01800793          	li	a5,24
1c008df2:	4388                	lw	a0,0(a5)
1c008df4:	c509                	beqz	a0,1c008dfe <rt_event_get+0x14>
1c008df6:	4d14                	lw	a3,24(a0)
1c008df8:	c150                	sw	a2,4(a0)
1c008dfa:	c394                	sw	a3,0(a5)
1c008dfc:	c10c                	sw	a1,0(a0)
1c008dfe:	30071073          	csrw	mstatus,a4
1c008e02:	8082                	ret

1c008e04 <rt_event_get_blocking>:
1c008e04:	30047773          	csrrci	a4,mstatus,8
1c008e08:	01800793          	li	a5,24
1c008e0c:	4388                	lw	a0,0(a5)
1c008e0e:	c909                	beqz	a0,1c008e20 <rt_event_get_blocking+0x1c>
1c008e10:	4d14                	lw	a3,24(a0)
1c008e12:	00052223          	sw	zero,4(a0)
1c008e16:	c394                	sw	a3,0(a5)
1c008e18:	4785                	li	a5,1
1c008e1a:	00052023          	sw	zero,0(a0)
1c008e1e:	d11c                	sw	a5,32(a0)
1c008e20:	30071073          	csrw	mstatus,a4
1c008e24:	8082                	ret

1c008e26 <__rt_event_execute>:
1c008e26:	1141                	addi	sp,sp,-16
1c008e28:	c422                	sw	s0,8(sp)
1c008e2a:	01800793          	li	a5,24
1c008e2e:	43dc                	lw	a5,4(a5)
1c008e30:	c606                	sw	ra,12(sp)
1c008e32:	c226                	sw	s1,4(sp)
1c008e34:	01800413          	li	s0,24
1c008e38:	eb91                	bnez	a5,1c008e4c <__rt_event_execute+0x26>
1c008e3a:	c1a9                	beqz	a1,1c008e7c <__rt_event_execute+0x56>
1c008e3c:	10500073          	wfi
1c008e40:	300467f3          	csrrsi	a5,mstatus,8
1c008e44:	300477f3          	csrrci	a5,mstatus,8
1c008e48:	405c                	lw	a5,4(s0)
1c008e4a:	cb8d                	beqz	a5,1c008e7c <__rt_event_execute+0x56>
1c008e4c:	4485                	li	s1,1
1c008e4e:	4f98                	lw	a4,24(a5)
1c008e50:	53d4                	lw	a3,36(a5)
1c008e52:	00978823          	sb	s1,16(a5)
1c008e56:	c058                	sw	a4,4(s0)
1c008e58:	43c8                	lw	a0,4(a5)
1c008e5a:	4398                	lw	a4,0(a5)
1c008e5c:	e691                	bnez	a3,1c008e68 <__rt_event_execute+0x42>
1c008e5e:	5394                	lw	a3,32(a5)
1c008e60:	e681                	bnez	a3,1c008e68 <__rt_event_execute+0x42>
1c008e62:	4014                	lw	a3,0(s0)
1c008e64:	c01c                	sw	a5,0(s0)
1c008e66:	cf94                	sw	a3,24(a5)
1c008e68:	0207a023          	sw	zero,32(a5)
1c008e6c:	c711                	beqz	a4,1c008e78 <__rt_event_execute+0x52>
1c008e6e:	300467f3          	csrrsi	a5,mstatus,8
1c008e72:	9702                	jalr	a4
1c008e74:	300477f3          	csrrci	a5,mstatus,8
1c008e78:	405c                	lw	a5,4(s0)
1c008e7a:	fbf1                	bnez	a5,1c008e4e <__rt_event_execute+0x28>
1c008e7c:	40b2                	lw	ra,12(sp)
1c008e7e:	4422                	lw	s0,8(sp)
1c008e80:	4492                	lw	s1,4(sp)
1c008e82:	0141                	addi	sp,sp,16
1c008e84:	8082                	ret

1c008e86 <__rt_wait_event>:
1c008e86:	1141                	addi	sp,sp,-16
1c008e88:	c422                	sw	s0,8(sp)
1c008e8a:	c606                	sw	ra,12(sp)
1c008e8c:	842a                	mv	s0,a0
1c008e8e:	501c                	lw	a5,32(s0)
1c008e90:	ef81                	bnez	a5,1c008ea8 <__rt_wait_event+0x22>
1c008e92:	581c                	lw	a5,48(s0)
1c008e94:	eb91                	bnez	a5,1c008ea8 <__rt_wait_event+0x22>
1c008e96:	01800793          	li	a5,24
1c008e9a:	4398                	lw	a4,0(a5)
1c008e9c:	40b2                	lw	ra,12(sp)
1c008e9e:	c380                	sw	s0,0(a5)
1c008ea0:	cc18                	sw	a4,24(s0)
1c008ea2:	4422                	lw	s0,8(sp)
1c008ea4:	0141                	addi	sp,sp,16
1c008ea6:	8082                	ret
1c008ea8:	4585                	li	a1,1
1c008eaa:	4501                	li	a0,0
1c008eac:	3fad                	jal	1c008e26 <__rt_event_execute>
1c008eae:	b7c5                	j	1c008e8e <__rt_wait_event+0x8>

1c008eb0 <rt_event_wait>:
1c008eb0:	1141                	addi	sp,sp,-16
1c008eb2:	c606                	sw	ra,12(sp)
1c008eb4:	c422                	sw	s0,8(sp)
1c008eb6:	30047473          	csrrci	s0,mstatus,8
1c008eba:	37f1                	jal	1c008e86 <__rt_wait_event>
1c008ebc:	30041073          	csrw	mstatus,s0
1c008ec0:	40b2                	lw	ra,12(sp)
1c008ec2:	4422                	lw	s0,8(sp)
1c008ec4:	0141                	addi	sp,sp,16
1c008ec6:	8082                	ret

1c008ec8 <__rt_event_sched_init>:
1c008ec8:	01800513          	li	a0,24
1c008ecc:	00052023          	sw	zero,0(a0)
1c008ed0:	00052223          	sw	zero,4(a0)
1c008ed4:	4585                	li	a1,1
1c008ed6:	0511                	addi	a0,a0,4
1c008ed8:	bd69                	j	1c008d72 <rt_event_alloc>

1c008eda <__rt_time_poweroff>:
1c008eda:	1a10b7b7          	lui	a5,0x1a10b
1c008ede:	0791                	addi	a5,a5,4
1c008ee0:	0087a783          	lw	a5,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008ee4:	1c001737          	lui	a4,0x1c001
1c008ee8:	38f72423          	sw	a5,904(a4) # 1c001388 <timer_count>
1c008eec:	4501                	li	a0,0
1c008eee:	8082                	ret

1c008ef0 <__rt_time_poweron>:
1c008ef0:	1c0017b7          	lui	a5,0x1c001
1c008ef4:	3887a703          	lw	a4,904(a5) # 1c001388 <timer_count>
1c008ef8:	1a10b7b7          	lui	a5,0x1a10b
1c008efc:	0791                	addi	a5,a5,4
1c008efe:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008f02:	4501                	li	a0,0
1c008f04:	8082                	ret

1c008f06 <rt_event_push_delayed>:
1c008f06:	30047373          	csrrci	t1,mstatus,8
1c008f0a:	1c001637          	lui	a2,0x1c001
1c008f0e:	3ac62703          	lw	a4,940(a2) # 1c0013ac <first_delayed>
1c008f12:	1a10b7b7          	lui	a5,0x1a10b
1c008f16:	0791                	addi	a5,a5,4
1c008f18:	0087a783          	lw	a5,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008f1c:	46f9                	li	a3,30
1c008f1e:	0405e5b3          	p.max	a1,a1,zero
1c008f22:	02d5c5b3          	div	a1,a1,a3
1c008f26:	800006b7          	lui	a3,0x80000
1c008f2a:	fff6c693          	not	a3,a3
1c008f2e:	00d7f833          	and	a6,a5,a3
1c008f32:	0585                	addi	a1,a1,1
1c008f34:	97ae                	add	a5,a5,a1
1c008f36:	d95c                	sw	a5,52(a0)
1c008f38:	982e                	add	a6,a6,a1
1c008f3a:	4781                	li	a5,0
1c008f3c:	c719                	beqz	a4,1c008f4a <rt_event_push_delayed+0x44>
1c008f3e:	03472883          	lw	a7,52(a4)
1c008f42:	00d8f8b3          	and	a7,a7,a3
1c008f46:	0108e863          	bltu	a7,a6,1c008f56 <rt_event_push_delayed+0x50>
1c008f4a:	cb89                	beqz	a5,1c008f5c <rt_event_push_delayed+0x56>
1c008f4c:	cf88                	sw	a0,24(a5)
1c008f4e:	cd18                	sw	a4,24(a0)
1c008f50:	30031073          	csrw	mstatus,t1
1c008f54:	8082                	ret
1c008f56:	87ba                	mv	a5,a4
1c008f58:	4f18                	lw	a4,24(a4)
1c008f5a:	b7cd                	j	1c008f3c <rt_event_push_delayed+0x36>
1c008f5c:	1a10b7b7          	lui	a5,0x1a10b
1c008f60:	0791                	addi	a5,a5,4
1c008f62:	3aa62623          	sw	a0,940(a2)
1c008f66:	cd18                	sw	a4,24(a0)
1c008f68:	0087a703          	lw	a4,8(a5) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c008f6c:	95ba                	add	a1,a1,a4
1c008f6e:	00b7a823          	sw	a1,16(a5)
1c008f72:	08500713          	li	a4,133
1c008f76:	00e7a023          	sw	a4,0(a5)
1c008f7a:	bfd9                	j	1c008f50 <rt_event_push_delayed+0x4a>

1c008f7c <rt_time_wait_us>:
1c008f7c:	1101                	addi	sp,sp,-32
1c008f7e:	85aa                	mv	a1,a0
1c008f80:	4501                	li	a0,0
1c008f82:	ce06                	sw	ra,28(sp)
1c008f84:	cc22                	sw	s0,24(sp)
1c008f86:	c62e                	sw	a1,12(sp)
1c008f88:	3db5                	jal	1c008e04 <rt_event_get_blocking>
1c008f8a:	45b2                	lw	a1,12(sp)
1c008f8c:	842a                	mv	s0,a0
1c008f8e:	3fa5                	jal	1c008f06 <rt_event_push_delayed>
1c008f90:	8522                	mv	a0,s0
1c008f92:	4462                	lw	s0,24(sp)
1c008f94:	40f2                	lw	ra,28(sp)
1c008f96:	6105                	addi	sp,sp,32
1c008f98:	bf21                	j	1c008eb0 <rt_event_wait>

1c008f9a <__rt_time_init>:
1c008f9a:	1c0017b7          	lui	a5,0x1c001
1c008f9e:	3a07a623          	sw	zero,940(a5) # 1c0013ac <first_delayed>
1c008fa2:	1a10b7b7          	lui	a5,0x1a10b
1c008fa6:	1141                	addi	sp,sp,-16
1c008fa8:	08300713          	li	a4,131
1c008fac:	0791                	addi	a5,a5,4
1c008fae:	c606                	sw	ra,12(sp)
1c008fb0:	c422                	sw	s0,8(sp)
1c008fb2:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c008fb6:	1c0095b7          	lui	a1,0x1c009
1c008fba:	01a58593          	addi	a1,a1,26 # 1c00901a <__rt_timer_handler>
1c008fbe:	452d                	li	a0,11
1c008fc0:	3aa5                	jal	1c008938 <rt_irq_set_handler>
1c008fc2:	6785                	lui	a5,0x1
1c008fc4:	1a10a737          	lui	a4,0x1a10a
1c008fc8:	80078793          	addi	a5,a5,-2048 # 800 <__rt_udma_callback_data+0x508>
1c008fcc:	1c0095b7          	lui	a1,0x1c009
1c008fd0:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__rt_udma_callback_data+0x1a10950c>
1c008fd4:	4601                	li	a2,0
1c008fd6:	eda58593          	addi	a1,a1,-294 # 1c008eda <__rt_time_poweroff>
1c008fda:	4509                	li	a0,2
1c008fdc:	3405                	jal	1c0089fc <__rt_cbsys_add>
1c008fde:	1c0095b7          	lui	a1,0x1c009
1c008fe2:	842a                	mv	s0,a0
1c008fe4:	4601                	li	a2,0
1c008fe6:	ef058593          	addi	a1,a1,-272 # 1c008ef0 <__rt_time_poweron>
1c008fea:	450d                	li	a0,3
1c008fec:	3c01                	jal	1c0089fc <__rt_cbsys_add>
1c008fee:	8d41                	or	a0,a0,s0
1c008ff0:	c10d                	beqz	a0,1c009012 <__rt_time_init+0x78>
1c008ff2:	f1402673          	csrr	a2,mhartid
1c008ff6:	1c000537          	lui	a0,0x1c000
1c008ffa:	40565593          	srai	a1,a2,0x5
1c008ffe:	f265b5b3          	p.bclr	a1,a1,25,6
1c009002:	f4563633          	p.bclr	a2,a2,26,5
1c009006:	4f850513          	addi	a0,a0,1272 # 1c0004f8 <__DTOR_END__+0x1a0>
1c00900a:	11d000ef          	jal	ra,1c009926 <printf>
1c00900e:	085000ef          	jal	ra,1c009892 <abort>
1c009012:	40b2                	lw	ra,12(sp)
1c009014:	4422                	lw	s0,8(sp)
1c009016:	0141                	addi	sp,sp,16
1c009018:	8082                	ret

1c00901a <__rt_timer_handler>:
1c00901a:	7179                	addi	sp,sp,-48
1c00901c:	ce36                	sw	a3,28(sp)
1c00901e:	1c0016b7          	lui	a3,0x1c001
1c009022:	ca3e                	sw	a5,20(sp)
1c009024:	3ac6a783          	lw	a5,940(a3) # 1c0013ac <first_delayed>
1c009028:	cc3a                	sw	a4,24(sp)
1c00902a:	1a10b737          	lui	a4,0x1a10b
1c00902e:	0711                	addi	a4,a4,4
1c009030:	d61a                	sw	t1,44(sp)
1c009032:	d42a                	sw	a0,40(sp)
1c009034:	d22e                	sw	a1,36(sp)
1c009036:	d032                	sw	a2,32(sp)
1c009038:	c842                	sw	a6,16(sp)
1c00903a:	c646                	sw	a7,12(sp)
1c00903c:	00872703          	lw	a4,8(a4) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c009040:	01c02583          	lw	a1,28(zero) # 1c <__rt_sched>
1c009044:	02002603          	lw	a2,32(zero) # 20 <__rt_sched+0x4>
1c009048:	800008b7          	lui	a7,0x80000
1c00904c:	4501                	li	a0,0
1c00904e:	4801                	li	a6,0
1c009050:	ffe8c893          	xori	a7,a7,-2
1c009054:	e3ad                	bnez	a5,1c0090b6 <__rt_timer_handler+0x9c>
1c009056:	00080463          	beqz	a6,1c00905e <__rt_timer_handler+0x44>
1c00905a:	00b02e23          	sw	a1,28(zero) # 1c <__rt_sched>
1c00905e:	c119                	beqz	a0,1c009064 <__rt_timer_handler+0x4a>
1c009060:	02c02023          	sw	a2,32(zero) # 20 <__rt_sched+0x4>
1c009064:	1a10b7b7          	lui	a5,0x1a10b
1c009068:	08100713          	li	a4,129
1c00906c:	0791                	addi	a5,a5,4
1c00906e:	3a06a623          	sw	zero,940(a3)
1c009072:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__rt_udma_callback_data+0x1a10ad08>
1c009076:	6785                	lui	a5,0x1
1c009078:	1a10a737          	lui	a4,0x1a10a
1c00907c:	80078793          	addi	a5,a5,-2048 # 800 <__rt_udma_callback_data+0x508>
1c009080:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__rt_udma_callback_data+0x1a10951c>
1c009084:	5332                	lw	t1,44(sp)
1c009086:	5522                	lw	a0,40(sp)
1c009088:	5592                	lw	a1,36(sp)
1c00908a:	5602                	lw	a2,32(sp)
1c00908c:	46f2                	lw	a3,28(sp)
1c00908e:	4762                	lw	a4,24(sp)
1c009090:	47d2                	lw	a5,20(sp)
1c009092:	4842                	lw	a6,16(sp)
1c009094:	48b2                	lw	a7,12(sp)
1c009096:	6145                	addi	sp,sp,48
1c009098:	30200073          	mret
1c00909c:	0187a303          	lw	t1,24(a5)
1c0090a0:	0007ac23          	sw	zero,24(a5)
1c0090a4:	c591                	beqz	a1,1c0090b0 <__rt_timer_handler+0x96>
1c0090a6:	ce1c                	sw	a5,24(a2)
1c0090a8:	863e                	mv	a2,a5
1c0090aa:	4505                	li	a0,1
1c0090ac:	879a                	mv	a5,t1
1c0090ae:	b75d                	j	1c009054 <__rt_timer_handler+0x3a>
1c0090b0:	85be                	mv	a1,a5
1c0090b2:	4805                	li	a6,1
1c0090b4:	bfd5                	j	1c0090a8 <__rt_timer_handler+0x8e>
1c0090b6:	0347a303          	lw	t1,52(a5)
1c0090ba:	40670333          	sub	t1,a4,t1
1c0090be:	fc68ffe3          	bleu	t1,a7,1c00909c <__rt_timer_handler+0x82>
1c0090c2:	00080463          	beqz	a6,1c0090ca <__rt_timer_handler+0xb0>
1c0090c6:	00b02e23          	sw	a1,28(zero) # 1c <__rt_sched>
1c0090ca:	c119                	beqz	a0,1c0090d0 <__rt_timer_handler+0xb6>
1c0090cc:	02c02023          	sw	a2,32(zero) # 20 <__rt_sched+0x4>
1c0090d0:	3af6a623          	sw	a5,940(a3)
1c0090d4:	1a10b6b7          	lui	a3,0x1a10b
1c0090d8:	0691                	addi	a3,a3,4
1c0090da:	0086a603          	lw	a2,8(a3) # 1a10b008 <__rt_udma_callback_data+0x1a10ad10>
1c0090de:	5bdc                	lw	a5,52(a5)
1c0090e0:	40e78733          	sub	a4,a5,a4
1c0090e4:	9732                	add	a4,a4,a2
1c0090e6:	00e6a823          	sw	a4,16(a3)
1c0090ea:	08500793          	li	a5,133
1c0090ee:	00f6a023          	sw	a5,0(a3)
1c0090f2:	bf49                	j	1c009084 <__rt_timer_handler+0x6a>

1c0090f4 <rt_periph_copy>:
1c0090f4:	1101                	addi	sp,sp,-32
1c0090f6:	cc22                	sw	s0,24(sp)
1c0090f8:	ca26                	sw	s1,20(sp)
1c0090fa:	ce06                	sw	ra,28(sp)
1c0090fc:	c84a                	sw	s2,16(sp)
1c0090fe:	842a                	mv	s0,a0
1c009100:	84ae                	mv	s1,a1
1c009102:	30047973          	csrrci	s2,mstatus,8
1c009106:	853e                	mv	a0,a5
1c009108:	eb91                	bnez	a5,1c00911c <rt_periph_copy+0x28>
1c00910a:	c632                	sw	a2,12(sp)
1c00910c:	c436                	sw	a3,8(sp)
1c00910e:	c23a                	sw	a4,4(sp)
1c009110:	c03e                	sw	a5,0(sp)
1c009112:	31a1                	jal	1c008d5a <__rt_wait_event_prepare_blocking>
1c009114:	4782                	lw	a5,0(sp)
1c009116:	4712                	lw	a4,4(sp)
1c009118:	46a2                	lw	a3,8(sp)
1c00911a:	4632                	lw	a2,12(sp)
1c00911c:	e419                	bnez	s0,1c00912a <rt_periph_copy+0x36>
1c00911e:	03450413          	addi	s0,a0,52
1c009122:	04052023          	sw	zero,64(a0)
1c009126:	04052823          	sw	zero,80(a0)
1c00912a:	444c                	lw	a1,12(s0)
1c00912c:	c054                	sw	a3,4(s0)
1c00912e:	cc08                	sw	a0,24(s0)
1c009130:	f645b5b3          	p.bclr	a1,a1,27,4
1c009134:	4811                	li	a6,4
1c009136:	06b86263          	bltu	a6,a1,1c00919a <rt_periph_copy+0xa6>
1c00913a:	03000593          	li	a1,48
1c00913e:	00549313          	slli	t1,s1,0x5
1c009142:	959a                	add	a1,a1,t1
1c009144:	0005a803          	lw	a6,0(a1)
1c009148:	00042a23          	sw	zero,20(s0)
1c00914c:	03000893          	li	a7,48
1c009150:	04081f63          	bnez	a6,1c0091ae <rt_periph_copy+0xba>
1c009154:	c180                	sw	s0,0(a1)
1c009156:	006885b3          	add	a1,a7,t1
1c00915a:	0085ae03          	lw	t3,8(a1)
1c00915e:	c1c0                	sw	s0,4(a1)
1c009160:	c0474733          	p.bset	a4,a4,0,4
1c009164:	040e1863          	bnez	t3,1c0091b4 <rt_periph_copy+0xc0>
1c009168:	4014d813          	srai	a6,s1,0x1
1c00916c:	1a1025b7          	lui	a1,0x1a102
1c009170:	08058593          	addi	a1,a1,128 # 1a102080 <__rt_udma_callback_data+0x1a101d88>
1c009174:	081e                	slli	a6,a6,0x7
1c009176:	982e                	add	a6,a6,a1
1c009178:	00449593          	slli	a1,s1,0x4
1c00917c:	89c1                	andi	a1,a1,16
1c00917e:	95c2                	add	a1,a1,a6
1c009180:	00858e93          	addi	t4,a1,8
1c009184:	000ea803          	lw	a6,0(t4)
1c009188:	02087813          	andi	a6,a6,32
1c00918c:	02081463          	bnez	a6,1c0091b4 <rt_periph_copy+0xc0>
1c009190:	00c5a22b          	p.sw	a2,4(a1!)
1c009194:	c194                	sw	a3,0(a1)
1c009196:	00eea023          	sw	a4,0(t4)
1c00919a:	e391                	bnez	a5,1c00919e <rt_periph_copy+0xaa>
1c00919c:	31ed                	jal	1c008e86 <__rt_wait_event>
1c00919e:	30091073          	csrw	mstatus,s2
1c0091a2:	40f2                	lw	ra,28(sp)
1c0091a4:	4462                	lw	s0,24(sp)
1c0091a6:	44d2                	lw	s1,20(sp)
1c0091a8:	4942                	lw	s2,16(sp)
1c0091aa:	6105                	addi	sp,sp,32
1c0091ac:	8082                	ret
1c0091ae:	41cc                	lw	a1,4(a1)
1c0091b0:	c9c0                	sw	s0,20(a1)
1c0091b2:	b755                	j	1c009156 <rt_periph_copy+0x62>
1c0091b4:	00042823          	sw	zero,16(s0)
1c0091b8:	c010                	sw	a2,0(s0)
1c0091ba:	c054                	sw	a3,4(s0)
1c0091bc:	c418                	sw	a4,8(s0)
1c0091be:	fc0e1ee3          	bnez	t3,1c00919a <rt_periph_copy+0xa6>
1c0091c2:	989a                	add	a7,a7,t1
1c0091c4:	0088a423          	sw	s0,8(a7) # 80000008 <pulp__FC+0x80000009>
1c0091c8:	bfc9                	j	1c00919a <rt_periph_copy+0xa6>

1c0091ca <__rt_periph_init>:
1c0091ca:	03000693          	li	a3,48
1c0091ce:	1c008637          	lui	a2,0x1c008
1c0091d2:	2a068693          	addi	a3,a3,672
1c0091d6:	03000713          	li	a4,48
1c0091da:	15a60613          	addi	a2,a2,346 # 1c00815a <udma_event_handler>
1c0091de:	00a250fb          	lp.setupi	x1,10,1c0091e6 <__rt_periph_init+0x1c>
1c0091e2:	00c6a22b          	p.sw	a2,4(a3!)
1c0091e6:	0001                	nop
1c0091e8:	28072023          	sw	zero,640(a4)
1c0091ec:	28072223          	sw	zero,644(a4)
1c0091f0:	28072423          	sw	zero,648(a4)
1c0091f4:	28072623          	sw	zero,652(a4)
1c0091f8:	28072823          	sw	zero,656(a4)
1c0091fc:	28072a23          	sw	zero,660(a4)
1c009200:	28072c23          	sw	zero,664(a4)
1c009204:	1a102837          	lui	a6,0x1a102
1c009208:	28072e23          	sw	zero,668(a4)
1c00920c:	03000793          	li	a5,48
1c009210:	4681                	li	a3,0
1c009212:	08080813          	addi	a6,a6,128 # 1a102080 <__rt_udma_callback_data+0x1a101d88>
1c009216:	0148d0fb          	lp.setupi	x1,20,1c009238 <__rt_periph_init+0x6e>
1c00921a:	4016d713          	srai	a4,a3,0x1
1c00921e:	00469513          	slli	a0,a3,0x4
1c009222:	071e                	slli	a4,a4,0x7
1c009224:	9742                	add	a4,a4,a6
1c009226:	8941                	andi	a0,a0,16
1c009228:	972a                	add	a4,a4,a0
1c00922a:	0007a023          	sw	zero,0(a5)
1c00922e:	0007a423          	sw	zero,8(a5)
1c009232:	c7d8                	sw	a4,12(a5)
1c009234:	cfd0                	sw	a2,28(a5)
1c009236:	0685                	addi	a3,a3,1
1c009238:	02078793          	addi	a5,a5,32
1c00923c:	8082                	ret

1c00923e <__rt_freq_init>:
1c00923e:	1141                	addi	sp,sp,-16
1c009240:	c422                	sw	s0,8(sp)
1c009242:	c226                	sw	s1,4(sp)
1c009244:	c606                	sw	ra,12(sp)
1c009246:	227d                	jal	1c0093f4 <__rt_flls_constructor>
1c009248:	1c0017b7          	lui	a5,0x1c001
1c00924c:	2c87a783          	lw	a5,712(a5) # 1c0012c8 <__rt_platform>
1c009250:	1c001437          	lui	s0,0x1c001
1c009254:	3b040493          	addi	s1,s0,944 # 1c0013b0 <__rt_freq_domains>
1c009258:	0017ae63          	p.beqimm	a5,1,1c009274 <__rt_freq_init+0x36>
1c00925c:	4501                	li	a0,0
1c00925e:	28cd                	jal	1c009350 <__rt_fll_init>
1c009260:	3aa42823          	sw	a0,944(s0)
1c009264:	4505                	li	a0,1
1c009266:	20ed                	jal	1c009350 <__rt_fll_init>
1c009268:	c0c8                	sw	a0,4(s1)
1c00926a:	40b2                	lw	ra,12(sp)
1c00926c:	4422                	lw	s0,8(sp)
1c00926e:	4492                	lw	s1,4(sp)
1c009270:	0141                	addi	sp,sp,16
1c009272:	8082                	ret
1c009274:	1c0017b7          	lui	a5,0x1c001
1c009278:	2d87a783          	lw	a5,728(a5) # 1c0012d8 <__rt_fpga_fc_frequency>
1c00927c:	3af42823          	sw	a5,944(s0)
1c009280:	1c0017b7          	lui	a5,0x1c001
1c009284:	2dc7a783          	lw	a5,732(a5) # 1c0012dc <__rt_fpga_periph_frequency>
1c009288:	c0dc                	sw	a5,4(s1)
1c00928a:	b7c5                	j	1c00926a <__rt_freq_init+0x2c>

1c00928c <rt_padframe_set>:
1c00928c:	300476f3          	csrrci	a3,mstatus,8
1c009290:	4158                	lw	a4,4(a0)
1c009292:	1a1047b7          	lui	a5,0x1a104
1c009296:	01078613          	addi	a2,a5,16 # 1a104010 <__rt_udma_callback_data+0x1a103d18>
1c00929a:	430c                	lw	a1,0(a4)
1c00929c:	c20c                	sw	a1,0(a2)
1c00929e:	434c                	lw	a1,4(a4)
1c0092a0:	01478613          	addi	a2,a5,20
1c0092a4:	c20c                	sw	a1,0(a2)
1c0092a6:	470c                	lw	a1,8(a4)
1c0092a8:	01878613          	addi	a2,a5,24
1c0092ac:	07f1                	addi	a5,a5,28
1c0092ae:	c20c                	sw	a1,0(a2)
1c0092b0:	4758                	lw	a4,12(a4)
1c0092b2:	c398                	sw	a4,0(a5)
1c0092b4:	30069073          	csrw	mstatus,a3
1c0092b8:	8082                	ret

1c0092ba <__rt_padframe_init>:
1c0092ba:	1c001537          	lui	a0,0x1c001
1c0092be:	2cc50513          	addi	a0,a0,716 # 1c0012cc <__rt_padframe_profiles>
1c0092c2:	b7e9                	j	1c00928c <rt_padframe_set>

1c0092c4 <__rt_ov7670_init>:
1c0092c4:	1c0107b7          	lui	a5,0x1c010
1c0092c8:	20078023          	sb	zero,512(a5) # 1c010200 <__ov7670Inited>
1c0092cc:	8082                	ret

1c0092ce <__rt_i2c_init>:
1c0092ce:	1c0107b7          	lui	a5,0x1c010
1c0092d2:	26078023          	sb	zero,608(a5) # 1c010260 <__rt_i2c+0x4>
1c0092d6:	8082                	ret

1c0092d8 <__rt_fll_set_freq>:
1c0092d8:	1101                	addi	sp,sp,-32
1c0092da:	cc22                	sw	s0,24(sp)
1c0092dc:	ce06                	sw	ra,28(sp)
1c0092de:	842a                	mv	s0,a0
1c0092e0:	e501                	bnez	a0,1c0092e8 <__rt_fll_set_freq+0x10>
1c0092e2:	c62e                	sw	a1,12(sp)
1c0092e4:	32c9                	jal	1c008ca6 <__rt_bridge_req_shutdown>
1c0092e6:	45b2                	lw	a1,12(sp)
1c0092e8:	10059733          	p.fl1	a4,a1
1c0092ec:	47f5                	li	a5,29
1c0092ee:	4505                	li	a0,1
1c0092f0:	82e7b7db          	p.subun	a5,a5,a4,1
1c0092f4:	04f567b3          	p.max	a5,a0,a5
1c0092f8:	fff78713          	addi	a4,a5,-1
1c0092fc:	00f595b3          	sll	a1,a1,a5
1c009300:	00e51533          	sll	a0,a0,a4
1c009304:	1c0016b7          	lui	a3,0x1c001
1c009308:	dc05b733          	p.bclr	a4,a1,14,0
1c00930c:	c0f7255b          	p.addunr	a0,a4,a5
1c009310:	3b868693          	addi	a3,a3,952 # 1c0013b8 <__rt_fll_freq>
1c009314:	00241713          	slli	a4,s0,0x2
1c009318:	00a6e723          	p.sw	a0,a4(a3)
1c00931c:	1c001737          	lui	a4,0x1c001
1c009320:	38c70713          	addi	a4,a4,908 # 1c00138c <__rt_fll_is_on>
1c009324:	9722                	add	a4,a4,s0
1c009326:	00074703          	lbu	a4,0(a4)
1c00932a:	cf19                	beqz	a4,1c009348 <__rt_fll_set_freq+0x70>
1c00932c:	0412                	slli	s0,s0,0x4
1c00932e:	0411                	addi	s0,s0,4
1c009330:	1a1006b7          	lui	a3,0x1a100
1c009334:	2086f703          	p.lw	a4,s0(a3)
1c009338:	81bd                	srli	a1,a1,0xf
1c00933a:	de05a733          	p.insert	a4,a1,15,0
1c00933e:	0785                	addi	a5,a5,1
1c009340:	c7a7a733          	p.insert	a4,a5,3,26
1c009344:	00e6e423          	p.sw	a4,s0(a3)
1c009348:	40f2                	lw	ra,28(sp)
1c00934a:	4462                	lw	s0,24(sp)
1c00934c:	6105                	addi	sp,sp,32
1c00934e:	8082                	ret

1c009350 <__rt_fll_init>:
1c009350:	1141                	addi	sp,sp,-16
1c009352:	00451613          	slli	a2,a0,0x4
1c009356:	c226                	sw	s1,4(sp)
1c009358:	00460813          	addi	a6,a2,4
1c00935c:	84aa                	mv	s1,a0
1c00935e:	1a1006b7          	lui	a3,0x1a100
1c009362:	c606                	sw	ra,12(sp)
1c009364:	c422                	sw	s0,8(sp)
1c009366:	2106f703          	p.lw	a4,a6(a3)
1c00936a:	87ba                	mv	a5,a4
1c00936c:	04074163          	bltz	a4,1c0093ae <__rt_fll_init+0x5e>
1c009370:	00860893          	addi	a7,a2,8
1c009374:	2116f503          	p.lw	a0,a7(a3)
1c009378:	4599                	li	a1,6
1c00937a:	caa5a533          	p.insert	a0,a1,5,10
1c00937e:	05000593          	li	a1,80
1c009382:	d705a533          	p.insert	a0,a1,11,16
1c009386:	1a1005b7          	lui	a1,0x1a100
1c00938a:	00a5e8a3          	p.sw	a0,a7(a1)
1c00938e:	0631                	addi	a2,a2,12
1c009390:	20c6f683          	p.lw	a3,a2(a3)
1c009394:	14c00513          	li	a0,332
1c009398:	d30526b3          	p.insert	a3,a0,9,16
1c00939c:	00d5e623          	p.sw	a3,a2(a1)
1c0093a0:	4685                	li	a3,1
1c0093a2:	c1e6a7b3          	p.insert	a5,a3,0,30
1c0093a6:	c1f6a7b3          	p.insert	a5,a3,0,31
1c0093aa:	00f5e823          	p.sw	a5,a6(a1)
1c0093ae:	1c001637          	lui	a2,0x1c001
1c0093b2:	00249693          	slli	a3,s1,0x2
1c0093b6:	3b860613          	addi	a2,a2,952 # 1c0013b8 <__rt_fll_freq>
1c0093ba:	96b2                	add	a3,a3,a2
1c0093bc:	4280                	lw	s0,0(a3)
1c0093be:	c00d                	beqz	s0,1c0093e0 <__rt_fll_init+0x90>
1c0093c0:	85a2                	mv	a1,s0
1c0093c2:	8526                	mv	a0,s1
1c0093c4:	3f11                	jal	1c0092d8 <__rt_fll_set_freq>
1c0093c6:	1c0017b7          	lui	a5,0x1c001
1c0093ca:	38c78793          	addi	a5,a5,908 # 1c00138c <__rt_fll_is_on>
1c0093ce:	4705                	li	a4,1
1c0093d0:	00e7c4a3          	p.sb	a4,s1(a5)
1c0093d4:	8522                	mv	a0,s0
1c0093d6:	40b2                	lw	ra,12(sp)
1c0093d8:	4422                	lw	s0,8(sp)
1c0093da:	4492                	lw	s1,4(sp)
1c0093dc:	0141                	addi	sp,sp,16
1c0093de:	8082                	ret
1c0093e0:	10075733          	p.exthz	a4,a4
1c0093e4:	c7a797b3          	p.extractu	a5,a5,3,26
1c0093e8:	073e                	slli	a4,a4,0xf
1c0093ea:	17fd                	addi	a5,a5,-1
1c0093ec:	00f75433          	srl	s0,a4,a5
1c0093f0:	c280                	sw	s0,0(a3)
1c0093f2:	bfd1                	j	1c0093c6 <__rt_fll_init+0x76>

1c0093f4 <__rt_flls_constructor>:
1c0093f4:	1c0017b7          	lui	a5,0x1c001
1c0093f8:	3a07ac23          	sw	zero,952(a5) # 1c0013b8 <__rt_fll_freq>
1c0093fc:	3b878793          	addi	a5,a5,952
1c009400:	0007a223          	sw	zero,4(a5)
1c009404:	1c0017b7          	lui	a5,0x1c001
1c009408:	38079623          	sh	zero,908(a5) # 1c00138c <__rt_fll_is_on>
1c00940c:	8082                	ret

1c00940e <rt_is_fc>:
1c00940e:	f1402573          	csrr	a0,mhartid
1c009412:	8515                	srai	a0,a0,0x5
1c009414:	f2653533          	p.bclr	a0,a0,25,6
1c009418:	1505                	addi	a0,a0,-31
1c00941a:	00153513          	seqz	a0,a0
1c00941e:	8082                	ret

1c009420 <__rt_io_end_of_flush>:
1c009420:	1c0017b7          	lui	a5,0x1c001
1c009424:	3807aa23          	sw	zero,916(a5) # 1c001394 <__rt_io_pending_flush>
1c009428:	00052c23          	sw	zero,24(a0)
1c00942c:	8082                	ret

1c00942e <__rt_io_unlock>:
1c00942e:	1c0017b7          	lui	a5,0x1c001
1c009432:	2187a783          	lw	a5,536(a5) # 1c001218 <__hal_debug_struct+0x10>
1c009436:	cf81                	beqz	a5,1c00944e <__rt_io_unlock+0x20>
1c009438:	1c0017b7          	lui	a5,0x1c001
1c00943c:	39c7a783          	lw	a5,924(a5) # 1c00139c <_rt_io_uart>
1c009440:	e799                	bnez	a5,1c00944e <__rt_io_unlock+0x20>
1c009442:	1c0017b7          	lui	a5,0x1c001
1c009446:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c00944a:	0227b163          	p.bneimm	a5,2,1c00946c <__rt_io_unlock+0x3e>
1c00944e:	1141                	addi	sp,sp,-16
1c009450:	c606                	sw	ra,12(sp)
1c009452:	3f75                	jal	1c00940e <rt_is_fc>
1c009454:	c909                	beqz	a0,1c009466 <__rt_io_unlock+0x38>
1c009456:	40b2                	lw	ra,12(sp)
1c009458:	1c001537          	lui	a0,0x1c001
1c00945c:	dc450513          	addi	a0,a0,-572 # 1c000dc4 <__rt_io_fc_lock>
1c009460:	0141                	addi	sp,sp,16
1c009462:	e5cff06f          	j	1c008abe <__rt_fc_unlock>
1c009466:	40b2                	lw	ra,12(sp)
1c009468:	0141                	addi	sp,sp,16
1c00946a:	8082                	ret
1c00946c:	8082                	ret

1c00946e <__rt_io_lock>:
1c00946e:	1c0017b7          	lui	a5,0x1c001
1c009472:	2187a783          	lw	a5,536(a5) # 1c001218 <__hal_debug_struct+0x10>
1c009476:	cf81                	beqz	a5,1c00948e <__rt_io_lock+0x20>
1c009478:	1c0017b7          	lui	a5,0x1c001
1c00947c:	39c7a783          	lw	a5,924(a5) # 1c00139c <_rt_io_uart>
1c009480:	e799                	bnez	a5,1c00948e <__rt_io_lock+0x20>
1c009482:	1c0017b7          	lui	a5,0x1c001
1c009486:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c00948a:	0227b163          	p.bneimm	a5,2,1c0094ac <__rt_io_lock+0x3e>
1c00948e:	1141                	addi	sp,sp,-16
1c009490:	c606                	sw	ra,12(sp)
1c009492:	3fb5                	jal	1c00940e <rt_is_fc>
1c009494:	c909                	beqz	a0,1c0094a6 <__rt_io_lock+0x38>
1c009496:	40b2                	lw	ra,12(sp)
1c009498:	1c001537          	lui	a0,0x1c001
1c00949c:	dc450513          	addi	a0,a0,-572 # 1c000dc4 <__rt_io_fc_lock>
1c0094a0:	0141                	addi	sp,sp,16
1c0094a2:	deaff06f          	j	1c008a8c <__rt_fc_lock>
1c0094a6:	40b2                	lw	ra,12(sp)
1c0094a8:	0141                	addi	sp,sp,16
1c0094aa:	8082                	ret
1c0094ac:	8082                	ret

1c0094ae <__rt_io_start>:
1c0094ae:	1101                	addi	sp,sp,-32
1c0094b0:	0028                	addi	a0,sp,8
1c0094b2:	ce06                	sw	ra,28(sp)
1c0094b4:	cc22                	sw	s0,24(sp)
1c0094b6:	68d000ef          	jal	ra,1c00a342 <rt_uart_conf_init>
1c0094ba:	4585                	li	a1,1
1c0094bc:	4501                	li	a0,0
1c0094be:	8b5ff0ef          	jal	ra,1c008d72 <rt_event_alloc>
1c0094c2:	547d                	li	s0,-1
1c0094c4:	ed15                	bnez	a0,1c009500 <__rt_io_start+0x52>
1c0094c6:	1c0017b7          	lui	a5,0x1c001
1c0094ca:	2d47a783          	lw	a5,724(a5) # 1c0012d4 <__rt_iodev_uart_baudrate>
1c0094ce:	842a                	mv	s0,a0
1c0094d0:	1c001537          	lui	a0,0x1c001
1c0094d4:	e3ff7597          	auipc	a1,0xe3ff7
1c0094d8:	b4858593          	addi	a1,a1,-1208 # 1c <__rt_sched>
1c0094dc:	2e050513          	addi	a0,a0,736 # 1c0012e0 <_edata>
1c0094e0:	c43e                	sw	a5,8(sp)
1c0094e2:	867ff0ef          	jal	ra,1c008d48 <__rt_event_init>
1c0094e6:	1c0017b7          	lui	a5,0x1c001
1c0094ea:	3847a503          	lw	a0,900(a5) # 1c001384 <__rt_iodev_uart_channel>
1c0094ee:	4681                	li	a3,0
1c0094f0:	4601                	li	a2,0
1c0094f2:	002c                	addi	a1,sp,8
1c0094f4:	65f000ef          	jal	ra,1c00a352 <__rt_uart_open>
1c0094f8:	1c0017b7          	lui	a5,0x1c001
1c0094fc:	38a7ae23          	sw	a0,924(a5) # 1c00139c <_rt_io_uart>
1c009500:	8522                	mv	a0,s0
1c009502:	40f2                	lw	ra,28(sp)
1c009504:	4462                	lw	s0,24(sp)
1c009506:	6105                	addi	sp,sp,32
1c009508:	8082                	ret

1c00950a <rt_event_execute.isra.0.constprop.6>:
1c00950a:	1141                	addi	sp,sp,-16
1c00950c:	c606                	sw	ra,12(sp)
1c00950e:	c422                	sw	s0,8(sp)
1c009510:	30047473          	csrrci	s0,mstatus,8
1c009514:	4585                	li	a1,1
1c009516:	e3ff7517          	auipc	a0,0xe3ff7
1c00951a:	b0650513          	addi	a0,a0,-1274 # 1c <__rt_sched>
1c00951e:	909ff0ef          	jal	ra,1c008e26 <__rt_event_execute>
1c009522:	30041073          	csrw	mstatus,s0
1c009526:	40b2                	lw	ra,12(sp)
1c009528:	4422                	lw	s0,8(sp)
1c00952a:	0141                	addi	sp,sp,16
1c00952c:	8082                	ret

1c00952e <__rt_io_uart_wait_pending>:
1c00952e:	1141                	addi	sp,sp,-16
1c009530:	c422                	sw	s0,8(sp)
1c009532:	c606                	sw	ra,12(sp)
1c009534:	c226                	sw	s1,4(sp)
1c009536:	1c001437          	lui	s0,0x1c001
1c00953a:	39442783          	lw	a5,916(s0) # 1c001394 <__rt_io_pending_flush>
1c00953e:	e39d                	bnez	a5,1c009564 <__rt_io_uart_wait_pending+0x36>
1c009540:	1c001437          	lui	s0,0x1c001
1c009544:	39040413          	addi	s0,s0,912 # 1c001390 <__rt_io_event_current>
1c009548:	4004                	lw	s1,0(s0)
1c00954a:	c881                	beqz	s1,1c00955a <__rt_io_uart_wait_pending+0x2c>
1c00954c:	35c9                	jal	1c00940e <rt_is_fc>
1c00954e:	c511                	beqz	a0,1c00955a <__rt_io_uart_wait_pending+0x2c>
1c009550:	8526                	mv	a0,s1
1c009552:	95fff0ef          	jal	ra,1c008eb0 <rt_event_wait>
1c009556:	00042023          	sw	zero,0(s0)
1c00955a:	40b2                	lw	ra,12(sp)
1c00955c:	4422                	lw	s0,8(sp)
1c00955e:	4492                	lw	s1,4(sp)
1c009560:	0141                	addi	sp,sp,16
1c009562:	8082                	ret
1c009564:	35e9                	jal	1c00942e <__rt_io_unlock>
1c009566:	3755                	jal	1c00950a <rt_event_execute.isra.0.constprop.6>
1c009568:	3719                	jal	1c00946e <__rt_io_lock>
1c00956a:	bfc1                	j	1c00953a <__rt_io_uart_wait_pending+0xc>

1c00956c <__rt_io_stop>:
1c00956c:	1141                	addi	sp,sp,-16
1c00956e:	c422                	sw	s0,8(sp)
1c009570:	1c001437          	lui	s0,0x1c001
1c009574:	c606                	sw	ra,12(sp)
1c009576:	39c40413          	addi	s0,s0,924 # 1c00139c <_rt_io_uart>
1c00957a:	3f55                	jal	1c00952e <__rt_io_uart_wait_pending>
1c00957c:	4008                	lw	a0,0(s0)
1c00957e:	4581                	li	a1,0
1c009580:	655000ef          	jal	ra,1c00a3d4 <rt_uart_close>
1c009584:	40b2                	lw	ra,12(sp)
1c009586:	00042023          	sw	zero,0(s0)
1c00958a:	4422                	lw	s0,8(sp)
1c00958c:	4501                	li	a0,0
1c00958e:	0141                	addi	sp,sp,16
1c009590:	8082                	ret

1c009592 <__rt_io_uart_flush.constprop.5>:
1c009592:	1101                	addi	sp,sp,-32
1c009594:	ca26                	sw	s1,20(sp)
1c009596:	ce06                	sw	ra,28(sp)
1c009598:	cc22                	sw	s0,24(sp)
1c00959a:	c84a                	sw	s2,16(sp)
1c00959c:	c64e                	sw	s3,12(sp)
1c00959e:	c452                	sw	s4,8(sp)
1c0095a0:	1c0014b7          	lui	s1,0x1c001
1c0095a4:	3944a783          	lw	a5,916(s1) # 1c001394 <__rt_io_pending_flush>
1c0095a8:	39448413          	addi	s0,s1,916
1c0095ac:	e3a5                	bnez	a5,1c00960c <__rt_io_uart_flush.constprop.5+0x7a>
1c0095ae:	1c0019b7          	lui	s3,0x1c001
1c0095b2:	20898493          	addi	s1,s3,520 # 1c001208 <__hal_debug_struct>
1c0095b6:	0184a903          	lw	s2,24(s1)
1c0095ba:	04090f63          	beqz	s2,1c009618 <__rt_io_uart_flush.constprop.5+0x86>
1c0095be:	3d81                	jal	1c00940e <rt_is_fc>
1c0095c0:	cd21                	beqz	a0,1c009618 <__rt_io_uart_flush.constprop.5+0x86>
1c0095c2:	4785                	li	a5,1
1c0095c4:	c01c                	sw	a5,0(s0)
1c0095c6:	1c0017b7          	lui	a5,0x1c001
1c0095ca:	39c7aa03          	lw	s4,924(a5) # 1c00139c <_rt_io_uart>
1c0095ce:	1c0095b7          	lui	a1,0x1c009
1c0095d2:	20898613          	addi	a2,s3,520
1c0095d6:	42058593          	addi	a1,a1,1056 # 1c009420 <__rt_io_end_of_flush>
1c0095da:	4501                	li	a0,0
1c0095dc:	80fff0ef          	jal	ra,1c008dea <rt_event_get>
1c0095e0:	004a2583          	lw	a1,4(s4)
1c0095e4:	87aa                	mv	a5,a0
1c0095e6:	4701                	li	a4,0
1c0095e8:	0586                	slli	a1,a1,0x1
1c0095ea:	86ca                	mv	a3,s2
1c0095ec:	01c48613          	addi	a2,s1,28
1c0095f0:	0585                	addi	a1,a1,1
1c0095f2:	4501                	li	a0,0
1c0095f4:	3601                	jal	1c0090f4 <rt_periph_copy>
1c0095f6:	3d25                	jal	1c00942e <__rt_io_unlock>
1c0095f8:	401c                	lw	a5,0(s0)
1c0095fa:	ef89                	bnez	a5,1c009614 <__rt_io_uart_flush.constprop.5+0x82>
1c0095fc:	4462                	lw	s0,24(sp)
1c0095fe:	40f2                	lw	ra,28(sp)
1c009600:	44d2                	lw	s1,20(sp)
1c009602:	4942                	lw	s2,16(sp)
1c009604:	49b2                	lw	s3,12(sp)
1c009606:	4a22                	lw	s4,8(sp)
1c009608:	6105                	addi	sp,sp,32
1c00960a:	b595                	j	1c00946e <__rt_io_lock>
1c00960c:	350d                	jal	1c00942e <__rt_io_unlock>
1c00960e:	3df5                	jal	1c00950a <rt_event_execute.isra.0.constprop.6>
1c009610:	3db9                	jal	1c00946e <__rt_io_lock>
1c009612:	bf49                	j	1c0095a4 <__rt_io_uart_flush.constprop.5+0x12>
1c009614:	3ddd                	jal	1c00950a <rt_event_execute.isra.0.constprop.6>
1c009616:	b7cd                	j	1c0095f8 <__rt_io_uart_flush.constprop.5+0x66>
1c009618:	40f2                	lw	ra,28(sp)
1c00961a:	4462                	lw	s0,24(sp)
1c00961c:	44d2                	lw	s1,20(sp)
1c00961e:	4942                	lw	s2,16(sp)
1c009620:	49b2                	lw	s3,12(sp)
1c009622:	4a22                	lw	s4,8(sp)
1c009624:	6105                	addi	sp,sp,32
1c009626:	8082                	ret

1c009628 <memcpy>:
1c009628:	00a5e733          	or	a4,a1,a0
1c00962c:	fa273733          	p.bclr	a4,a4,29,2
1c009630:	87aa                	mv	a5,a0
1c009632:	c709                	beqz	a4,1c00963c <memcpy+0x14>
1c009634:	962e                	add	a2,a2,a1
1c009636:	00c59f63          	bne	a1,a2,1c009654 <memcpy+0x2c>
1c00963a:	8082                	ret
1c00963c:	fa263733          	p.bclr	a4,a2,29,2
1c009640:	fb75                	bnez	a4,1c009634 <memcpy+0xc>
1c009642:	962e                	add	a2,a2,a1
1c009644:	00c59363          	bne	a1,a2,1c00964a <memcpy+0x22>
1c009648:	8082                	ret
1c00964a:	0045a70b          	p.lw	a4,4(a1!)
1c00964e:	00e7a22b          	p.sw	a4,4(a5!)
1c009652:	bfcd                	j	1c009644 <memcpy+0x1c>
1c009654:	0015c70b          	p.lbu	a4,1(a1!)
1c009658:	00e780ab          	p.sb	a4,1(a5!)
1c00965c:	bfe9                	j	1c009636 <memcpy+0xe>

1c00965e <memmove>:
1c00965e:	40b507b3          	sub	a5,a0,a1
1c009662:	00c7e763          	bltu	a5,a2,1c009670 <memmove+0x12>
1c009666:	962a                	add	a2,a2,a0
1c009668:	87aa                	mv	a5,a0
1c00966a:	00c79f63          	bne	a5,a2,1c009688 <memmove+0x2a>
1c00966e:	8082                	ret
1c009670:	167d                	addi	a2,a2,-1
1c009672:	00c507b3          	add	a5,a0,a2
1c009676:	95b2                	add	a1,a1,a2
1c009678:	0605                	addi	a2,a2,1
1c00967a:	004640fb          	lp.setup	x1,a2,1c009682 <memmove+0x24>
1c00967e:	fff5c70b          	p.lbu	a4,-1(a1!)
1c009682:	fee78fab          	p.sb	a4,-1(a5!)
1c009686:	8082                	ret
1c009688:	0015c70b          	p.lbu	a4,1(a1!)
1c00968c:	00e780ab          	p.sb	a4,1(a5!)
1c009690:	bfe9                	j	1c00966a <memmove+0xc>

1c009692 <strchr>:
1c009692:	0ff5f593          	andi	a1,a1,255
1c009696:	00054703          	lbu	a4,0(a0)
1c00969a:	87aa                	mv	a5,a0
1c00969c:	0505                	addi	a0,a0,1
1c00969e:	00b70563          	beq	a4,a1,1c0096a8 <strchr+0x16>
1c0096a2:	fb75                	bnez	a4,1c009696 <strchr+0x4>
1c0096a4:	c191                	beqz	a1,1c0096a8 <strchr+0x16>
1c0096a6:	4781                	li	a5,0
1c0096a8:	853e                	mv	a0,a5
1c0096aa:	8082                	ret

1c0096ac <__rt_putc_debug_bridge>:
1c0096ac:	1141                	addi	sp,sp,-16
1c0096ae:	c422                	sw	s0,8(sp)
1c0096b0:	1c001437          	lui	s0,0x1c001
1c0096b4:	c226                	sw	s1,4(sp)
1c0096b6:	c606                	sw	ra,12(sp)
1c0096b8:	84aa                	mv	s1,a0
1c0096ba:	20840413          	addi	s0,s0,520 # 1c001208 <__hal_debug_struct>
1c0096be:	485c                	lw	a5,20(s0)
1c0096c0:	c791                	beqz	a5,1c0096cc <__rt_putc_debug_bridge+0x20>
1c0096c2:	06400513          	li	a0,100
1c0096c6:	8b7ff0ef          	jal	ra,1c008f7c <rt_time_wait_us>
1c0096ca:	bfd5                	j	1c0096be <__rt_putc_debug_bridge+0x12>
1c0096cc:	4c1c                	lw	a5,24(s0)
1c0096ce:	00178713          	addi	a4,a5,1
1c0096d2:	97a2                	add	a5,a5,s0
1c0096d4:	00978e23          	sb	s1,28(a5)
1c0096d8:	cc18                	sw	a4,24(s0)
1c0096da:	4c14                	lw	a3,24(s0)
1c0096dc:	08000793          	li	a5,128
1c0096e0:	00f68463          	beq	a3,a5,1c0096e8 <__rt_putc_debug_bridge+0x3c>
1c0096e4:	00a4b663          	p.bneimm	s1,10,1c0096f0 <__rt_putc_debug_bridge+0x44>
1c0096e8:	c701                	beqz	a4,1c0096f0 <__rt_putc_debug_bridge+0x44>
1c0096ea:	c858                	sw	a4,20(s0)
1c0096ec:	00042c23          	sw	zero,24(s0)
1c0096f0:	4c1c                	lw	a5,24(s0)
1c0096f2:	e799                	bnez	a5,1c009700 <__rt_putc_debug_bridge+0x54>
1c0096f4:	4422                	lw	s0,8(sp)
1c0096f6:	40b2                	lw	ra,12(sp)
1c0096f8:	4492                	lw	s1,4(sp)
1c0096fa:	0141                	addi	sp,sp,16
1c0096fc:	d70ff06f          	j	1c008c6c <__rt_bridge_printf_flush>
1c009700:	40b2                	lw	ra,12(sp)
1c009702:	4422                	lw	s0,8(sp)
1c009704:	4492                	lw	s1,4(sp)
1c009706:	0141                	addi	sp,sp,16
1c009708:	8082                	ret

1c00970a <__rt_putc_uart>:
1c00970a:	1101                	addi	sp,sp,-32
1c00970c:	c62a                	sw	a0,12(sp)
1c00970e:	ce06                	sw	ra,28(sp)
1c009710:	3d39                	jal	1c00952e <__rt_io_uart_wait_pending>
1c009712:	1c0017b7          	lui	a5,0x1c001
1c009716:	20878793          	addi	a5,a5,520 # 1c001208 <__hal_debug_struct>
1c00971a:	4f94                	lw	a3,24(a5)
1c00971c:	4532                	lw	a0,12(sp)
1c00971e:	00168713          	addi	a4,a3,1 # 1a100001 <__rt_udma_callback_data+0x1a0ffd09>
1c009722:	cf98                	sw	a4,24(a5)
1c009724:	97b6                	add	a5,a5,a3
1c009726:	00a78e23          	sb	a0,28(a5)
1c00972a:	08000793          	li	a5,128
1c00972e:	00f70463          	beq	a4,a5,1c009736 <__rt_putc_uart+0x2c>
1c009732:	00a53563          	p.bneimm	a0,10,1c00973c <__rt_putc_uart+0x32>
1c009736:	40f2                	lw	ra,28(sp)
1c009738:	6105                	addi	sp,sp,32
1c00973a:	bda1                	j	1c009592 <__rt_io_uart_flush.constprop.5>
1c00973c:	40f2                	lw	ra,28(sp)
1c00973e:	6105                	addi	sp,sp,32
1c009740:	8082                	ret

1c009742 <tfp_putc.isra.3>:
1c009742:	1c0017b7          	lui	a5,0x1c001
1c009746:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c00974a:	1141                	addi	sp,sp,-16
1c00974c:	c422                	sw	s0,8(sp)
1c00974e:	c606                	sw	ra,12(sp)
1c009750:	842a                	mv	s0,a0
1c009752:	0427b663          	p.bneimm	a5,2,1c00979e <tfp_putc.isra.3+0x5c>
1c009756:	3965                	jal	1c00940e <rt_is_fc>
1c009758:	c149                	beqz	a0,1c0097da <tfp_putc.isra.3+0x98>
1c00975a:	1c0017b7          	lui	a5,0x1c001
1c00975e:	39878613          	addi	a2,a5,920 # 1c001398 <__rt_putc_host_buffer_index>
1c009762:	4214                	lw	a3,0(a2)
1c009764:	1c010537          	lui	a0,0x1c010
1c009768:	39878793          	addi	a5,a5,920
1c00976c:	00168713          	addi	a4,a3,1
1c009770:	c218                	sw	a4,0(a2)
1c009772:	26c50613          	addi	a2,a0,620 # 1c01026c <__rt_putc_host_buffer>
1c009776:	008646a3          	p.sb	s0,a3(a2)
1c00977a:	07f00613          	li	a2,127
1c00977e:	26c50693          	addi	a3,a0,620
1c009782:	00c70463          	beq	a4,a2,1c00978a <tfp_putc.isra.3+0x48>
1c009786:	04a43a63          	p.bneimm	s0,10,1c0097da <tfp_putc.isra.3+0x98>
1c00978a:	0006c723          	p.sb	zero,a4(a3)
1c00978e:	4422                	lw	s0,8(sp)
1c009790:	40b2                	lw	ra,12(sp)
1c009792:	0007a023          	sw	zero,0(a5)
1c009796:	26c50513          	addi	a0,a0,620
1c00979a:	0141                	addi	sp,sp,16
1c00979c:	aabd                	j	1c00991a <semihost_write0>
1c00979e:	1c0017b7          	lui	a5,0x1c001
1c0097a2:	39c7a783          	lw	a5,924(a5) # 1c00139c <_rt_io_uart>
1c0097a6:	c789                	beqz	a5,1c0097b0 <tfp_putc.isra.3+0x6e>
1c0097a8:	4422                	lw	s0,8(sp)
1c0097aa:	40b2                	lw	ra,12(sp)
1c0097ac:	0141                	addi	sp,sp,16
1c0097ae:	bfb1                	j	1c00970a <__rt_putc_uart>
1c0097b0:	1c0017b7          	lui	a5,0x1c001
1c0097b4:	2187a783          	lw	a5,536(a5) # 1c001218 <__hal_debug_struct+0x10>
1c0097b8:	c78d                	beqz	a5,1c0097e2 <tfp_putc.isra.3+0xa0>
1c0097ba:	6609                	lui	a2,0x2
1c0097bc:	f14027f3          	csrr	a5,mhartid
1c0097c0:	f8060613          	addi	a2,a2,-128 # 1f80 <__rt_udma_callback_data+0x1c88>
1c0097c4:	00379713          	slli	a4,a5,0x3
1c0097c8:	078a                	slli	a5,a5,0x2
1c0097ca:	ee873733          	p.bclr	a4,a4,23,8
1c0097ce:	8ff1                	and	a5,a5,a2
1c0097d0:	97ba                	add	a5,a5,a4
1c0097d2:	1a10f737          	lui	a4,0x1a10f
1c0097d6:	00a767a3          	p.sw	a0,a5(a4)
1c0097da:	40b2                	lw	ra,12(sp)
1c0097dc:	4422                	lw	s0,8(sp)
1c0097de:	0141                	addi	sp,sp,16
1c0097e0:	8082                	ret
1c0097e2:	4422                	lw	s0,8(sp)
1c0097e4:	40b2                	lw	ra,12(sp)
1c0097e6:	0141                	addi	sp,sp,16
1c0097e8:	b5d1                	j	1c0096ac <__rt_putc_debug_bridge>

1c0097ea <fputc_locked>:
1c0097ea:	1141                	addi	sp,sp,-16
1c0097ec:	c422                	sw	s0,8(sp)
1c0097ee:	842a                	mv	s0,a0
1c0097f0:	0ff57513          	andi	a0,a0,255
1c0097f4:	c606                	sw	ra,12(sp)
1c0097f6:	37b1                	jal	1c009742 <tfp_putc.isra.3>
1c0097f8:	8522                	mv	a0,s0
1c0097fa:	40b2                	lw	ra,12(sp)
1c0097fc:	4422                	lw	s0,8(sp)
1c0097fe:	0141                	addi	sp,sp,16
1c009800:	8082                	ret

1c009802 <_prf_locked>:
1c009802:	1101                	addi	sp,sp,-32
1c009804:	ce06                	sw	ra,28(sp)
1c009806:	c02a                	sw	a0,0(sp)
1c009808:	c62e                	sw	a1,12(sp)
1c00980a:	c432                	sw	a2,8(sp)
1c00980c:	c236                	sw	a3,4(sp)
1c00980e:	3185                	jal	1c00946e <__rt_io_lock>
1c009810:	4692                	lw	a3,4(sp)
1c009812:	4622                	lw	a2,8(sp)
1c009814:	45b2                	lw	a1,12(sp)
1c009816:	4502                	lw	a0,0(sp)
1c009818:	2425                	jal	1c009a40 <_prf>
1c00981a:	c02a                	sw	a0,0(sp)
1c00981c:	3909                	jal	1c00942e <__rt_io_unlock>
1c00981e:	40f2                	lw	ra,28(sp)
1c009820:	4502                	lw	a0,0(sp)
1c009822:	6105                	addi	sp,sp,32
1c009824:	8082                	ret

1c009826 <exit>:
1c009826:	1141                	addi	sp,sp,-16
1c009828:	c422                	sw	s0,8(sp)
1c00982a:	1a104437          	lui	s0,0x1a104
1c00982e:	c04a                	sw	s2,0(sp)
1c009830:	0a040793          	addi	a5,s0,160 # 1a1040a0 <__rt_udma_callback_data+0x1a103da8>
1c009834:	c606                	sw	ra,12(sp)
1c009836:	c226                	sw	s1,4(sp)
1c009838:	c1f54933          	p.bset	s2,a0,0,31
1c00983c:	0127a023          	sw	s2,0(a5)
1c009840:	1c0017b7          	lui	a5,0x1c001
1c009844:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c009848:	0027be63          	p.bneimm	a5,2,1c009864 <exit+0x3e>
1c00984c:	c519                	beqz	a0,1c00985a <exit+0x34>
1c00984e:	00020537          	lui	a0,0x20
1c009852:	02350513          	addi	a0,a0,35 # 20023 <__rt_udma_callback_data+0x1fd2b>
1c009856:	20e9                	jal	1c009920 <semihost_exit>
1c009858:	a001                	j	1c009858 <exit+0x32>
1c00985a:	00020537          	lui	a0,0x20
1c00985e:	02650513          	addi	a0,a0,38 # 20026 <__rt_udma_callback_data+0x1fd2e>
1c009862:	bfd5                	j	1c009856 <exit+0x30>
1c009864:	1c0014b7          	lui	s1,0x1c001
1c009868:	20848493          	addi	s1,s1,520 # 1c001208 <__hal_debug_struct>
1c00986c:	c00ff0ef          	jal	ra,1c008c6c <__rt_bridge_printf_flush>
1c009870:	0124a623          	sw	s2,12(s1)
1c009874:	bbaff0ef          	jal	ra,1c008c2e <__rt_bridge_send_notif>
1c009878:	449c                	lw	a5,8(s1)
1c00987a:	dff9                	beqz	a5,1c009858 <exit+0x32>
1c00987c:	07440413          	addi	s0,s0,116
1c009880:	401c                	lw	a5,0(s0)
1c009882:	83a5                	srli	a5,a5,0x9
1c009884:	f837b7b3          	p.bclr	a5,a5,28,3
1c009888:	fe77bce3          	p.bneimm	a5,7,1c009880 <exit+0x5a>
1c00988c:	bc2ff0ef          	jal	ra,1c008c4e <__rt_bridge_clear_notif>
1c009890:	b7e1                	j	1c009858 <exit+0x32>

1c009892 <abort>:
1c009892:	1141                	addi	sp,sp,-16
1c009894:	557d                	li	a0,-1
1c009896:	c606                	sw	ra,12(sp)
1c009898:	3779                	jal	1c009826 <exit>

1c00989a <__rt_io_init>:
1c00989a:	1c0017b7          	lui	a5,0x1c001
1c00989e:	3807ac23          	sw	zero,920(a5) # 1c001398 <__rt_putc_host_buffer_index>
1c0098a2:	1c0017b7          	lui	a5,0x1c001
1c0098a6:	dc478793          	addi	a5,a5,-572 # 1c000dc4 <__rt_io_fc_lock>
1c0098aa:	0007a223          	sw	zero,4(a5)
1c0098ae:	0007a023          	sw	zero,0(a5)
1c0098b2:	0007a623          	sw	zero,12(a5)
1c0098b6:	1c0017b7          	lui	a5,0x1c001
1c0098ba:	3807ae23          	sw	zero,924(a5) # 1c00139c <_rt_io_uart>
1c0098be:	1c0017b7          	lui	a5,0x1c001
1c0098c2:	3807a823          	sw	zero,912(a5) # 1c001390 <__rt_io_event_current>
1c0098c6:	1c0017b7          	lui	a5,0x1c001
1c0098ca:	3807a783          	lw	a5,896(a5) # 1c001380 <__rt_iodev>
1c0098ce:	0217be63          	p.bneimm	a5,1,1c00990a <__rt_io_init+0x70>
1c0098d2:	1c0095b7          	lui	a1,0x1c009
1c0098d6:	1141                	addi	sp,sp,-16
1c0098d8:	4601                	li	a2,0
1c0098da:	4ae58593          	addi	a1,a1,1198 # 1c0094ae <__rt_io_start>
1c0098de:	4501                	li	a0,0
1c0098e0:	c606                	sw	ra,12(sp)
1c0098e2:	91aff0ef          	jal	ra,1c0089fc <__rt_cbsys_add>
1c0098e6:	1c0095b7          	lui	a1,0x1c009
1c0098ea:	56c58593          	addi	a1,a1,1388 # 1c00956c <__rt_io_stop>
1c0098ee:	4601                	li	a2,0
1c0098f0:	4505                	li	a0,1
1c0098f2:	90aff0ef          	jal	ra,1c0089fc <__rt_cbsys_add>
1c0098f6:	40b2                	lw	ra,12(sp)
1c0098f8:	1c0017b7          	lui	a5,0x1c001
1c0098fc:	3807aa23          	sw	zero,916(a5) # 1c001394 <__rt_io_pending_flush>
1c009900:	4585                	li	a1,1
1c009902:	4501                	li	a0,0
1c009904:	0141                	addi	sp,sp,16
1c009906:	c6cff06f          	j	1c008d72 <rt_event_alloc>
1c00990a:	8082                	ret

1c00990c <__internal_semihost>:
1c00990c:	01f01013          	slli	zero,zero,0x1f
1c009910:	00100073          	ebreak
1c009914:	40705013          	srai	zero,zero,0x7
1c009918:	8082                	ret

1c00991a <semihost_write0>:
1c00991a:	85aa                	mv	a1,a0
1c00991c:	4511                	li	a0,4
1c00991e:	b7fd                	j	1c00990c <__internal_semihost>

1c009920 <semihost_exit>:
1c009920:	85aa                	mv	a1,a0
1c009922:	4561                	li	a0,24
1c009924:	b7e5                	j	1c00990c <__internal_semihost>

1c009926 <printf>:
1c009926:	7139                	addi	sp,sp,-64
1c009928:	d432                	sw	a2,40(sp)
1c00992a:	862a                	mv	a2,a0
1c00992c:	1c009537          	lui	a0,0x1c009
1c009930:	d22e                	sw	a1,36(sp)
1c009932:	d636                	sw	a3,44(sp)
1c009934:	4589                	li	a1,2
1c009936:	1054                	addi	a3,sp,36
1c009938:	7ea50513          	addi	a0,a0,2026 # 1c0097ea <fputc_locked>
1c00993c:	ce06                	sw	ra,28(sp)
1c00993e:	d83a                	sw	a4,48(sp)
1c009940:	da3e                	sw	a5,52(sp)
1c009942:	dc42                	sw	a6,56(sp)
1c009944:	de46                	sw	a7,60(sp)
1c009946:	c636                	sw	a3,12(sp)
1c009948:	3d6d                	jal	1c009802 <_prf_locked>
1c00994a:	40f2                	lw	ra,28(sp)
1c00994c:	6121                	addi	sp,sp,64
1c00994e:	8082                	ret

1c009950 <_to_x>:
1c009950:	872a                	mv	a4,a0
1c009952:	87aa                	mv	a5,a0
1c009954:	4325                	li	t1,9
1c009956:	02c5f8b3          	remu	a7,a1,a2
1c00995a:	02700513          	li	a0,39
1c00995e:	02c5d5b3          	divu	a1,a1,a2
1c009962:	0ff8f813          	andi	a6,a7,255
1c009966:	01136363          	bltu	t1,a7,1c00996c <_to_x+0x1c>
1c00996a:	4501                	li	a0,0
1c00996c:	03080813          	addi	a6,a6,48
1c009970:	9542                	add	a0,a0,a6
1c009972:	00a780ab          	p.sb	a0,1(a5!)
1c009976:	f1e5                	bnez	a1,1c009956 <_to_x+0x6>
1c009978:	03000613          	li	a2,48
1c00997c:	40e78533          	sub	a0,a5,a4
1c009980:	00d54763          	blt	a0,a3,1c00998e <_to_x+0x3e>
1c009984:	fe078fab          	p.sb	zero,-1(a5!)
1c009988:	00f76663          	bltu	a4,a5,1c009994 <_to_x+0x44>
1c00998c:	8082                	ret
1c00998e:	00c780ab          	p.sb	a2,1(a5!)
1c009992:	b7ed                	j	1c00997c <_to_x+0x2c>
1c009994:	00074603          	lbu	a2,0(a4) # 1a10f000 <__rt_udma_callback_data+0x1a10ed08>
1c009998:	0007c683          	lbu	a3,0(a5)
1c00999c:	fec78fab          	p.sb	a2,-1(a5!)
1c0099a0:	00d700ab          	p.sb	a3,1(a4!)
1c0099a4:	b7d5                	j	1c009988 <_to_x+0x38>

1c0099a6 <_rlrshift>:
1c0099a6:	411c                	lw	a5,0(a0)
1c0099a8:	4154                	lw	a3,4(a0)
1c0099aa:	fc17b733          	p.bclr	a4,a5,30,1
1c0099ae:	01f69613          	slli	a2,a3,0x1f
1c0099b2:	8385                	srli	a5,a5,0x1
1c0099b4:	8fd1                	or	a5,a5,a2
1c0099b6:	97ba                	add	a5,a5,a4
1c0099b8:	8285                	srli	a3,a3,0x1
1c0099ba:	00e7b733          	sltu	a4,a5,a4
1c0099be:	9736                	add	a4,a4,a3
1c0099c0:	c11c                	sw	a5,0(a0)
1c0099c2:	c158                	sw	a4,4(a0)
1c0099c4:	8082                	ret

1c0099c6 <_ldiv5>:
1c0099c6:	4118                	lw	a4,0(a0)
1c0099c8:	4154                	lw	a3,4(a0)
1c0099ca:	4615                	li	a2,5
1c0099cc:	00270793          	addi	a5,a4,2
1c0099d0:	00e7b733          	sltu	a4,a5,a4
1c0099d4:	9736                	add	a4,a4,a3
1c0099d6:	02c755b3          	divu	a1,a4,a2
1c0099da:	42b61733          	p.msu	a4,a2,a1
1c0099de:	01d71693          	slli	a3,a4,0x1d
1c0099e2:	0037d713          	srli	a4,a5,0x3
1c0099e6:	8f55                	or	a4,a4,a3
1c0099e8:	02c75733          	divu	a4,a4,a2
1c0099ec:	01d75693          	srli	a3,a4,0x1d
1c0099f0:	070e                	slli	a4,a4,0x3
1c0099f2:	42e617b3          	p.msu	a5,a2,a4
1c0099f6:	95b6                	add	a1,a1,a3
1c0099f8:	02c7d7b3          	divu	a5,a5,a2
1c0099fc:	973e                	add	a4,a4,a5
1c0099fe:	00f737b3          	sltu	a5,a4,a5
1c009a02:	97ae                	add	a5,a5,a1
1c009a04:	c118                	sw	a4,0(a0)
1c009a06:	c15c                	sw	a5,4(a0)
1c009a08:	8082                	ret

1c009a0a <_get_digit>:
1c009a0a:	419c                	lw	a5,0(a1)
1c009a0c:	03000713          	li	a4,48
1c009a10:	02f05563          	blez	a5,1c009a3a <_get_digit+0x30>
1c009a14:	17fd                	addi	a5,a5,-1
1c009a16:	c19c                	sw	a5,0(a1)
1c009a18:	411c                	lw	a5,0(a0)
1c009a1a:	4729                	li	a4,10
1c009a1c:	4150                	lw	a2,4(a0)
1c009a1e:	02f706b3          	mul	a3,a4,a5
1c009a22:	02f737b3          	mulhu	a5,a4,a5
1c009a26:	c114                	sw	a3,0(a0)
1c009a28:	42c707b3          	p.mac	a5,a4,a2
1c009a2c:	01c7d713          	srli	a4,a5,0x1c
1c009a30:	c7c7b7b3          	p.bclr	a5,a5,3,28
1c009a34:	03070713          	addi	a4,a4,48
1c009a38:	c15c                	sw	a5,4(a0)
1c009a3a:	0ff77513          	andi	a0,a4,255
1c009a3e:	8082                	ret

1c009a40 <_prf>:
1c009a40:	714d                	addi	sp,sp,-336
1c009a42:	14912223          	sw	s1,324(sp)
1c009a46:	15212023          	sw	s2,320(sp)
1c009a4a:	13812423          	sw	s8,296(sp)
1c009a4e:	14112623          	sw	ra,332(sp)
1c009a52:	14812423          	sw	s0,328(sp)
1c009a56:	13312e23          	sw	s3,316(sp)
1c009a5a:	13412c23          	sw	s4,312(sp)
1c009a5e:	13512a23          	sw	s5,308(sp)
1c009a62:	13612823          	sw	s6,304(sp)
1c009a66:	13712623          	sw	s7,300(sp)
1c009a6a:	13912223          	sw	s9,292(sp)
1c009a6e:	13a12023          	sw	s10,288(sp)
1c009a72:	11b12e23          	sw	s11,284(sp)
1c009a76:	cc2a                	sw	a0,24(sp)
1c009a78:	ce2e                	sw	a1,28(sp)
1c009a7a:	84b2                	mv	s1,a2
1c009a7c:	8c36                	mv	s8,a3
1c009a7e:	4901                	li	s2,0
1c009a80:	0004c503          	lbu	a0,0(s1)
1c009a84:	00148b93          	addi	s7,s1,1
1c009a88:	c919                	beqz	a0,1c009a9e <_prf+0x5e>
1c009a8a:	02500793          	li	a5,37
1c009a8e:	14f50563          	beq	a0,a5,1c009bd8 <_prf+0x198>
1c009a92:	45f2                	lw	a1,28(sp)
1c009a94:	4762                	lw	a4,24(sp)
1c009a96:	9702                	jalr	a4
1c009a98:	05f53063          	p.bneimm	a0,-1,1c009ad8 <_prf+0x98>
1c009a9c:	597d                	li	s2,-1
1c009a9e:	14c12083          	lw	ra,332(sp)
1c009aa2:	14812403          	lw	s0,328(sp)
1c009aa6:	854a                	mv	a0,s2
1c009aa8:	14412483          	lw	s1,324(sp)
1c009aac:	14012903          	lw	s2,320(sp)
1c009ab0:	13c12983          	lw	s3,316(sp)
1c009ab4:	13812a03          	lw	s4,312(sp)
1c009ab8:	13412a83          	lw	s5,308(sp)
1c009abc:	13012b03          	lw	s6,304(sp)
1c009ac0:	12c12b83          	lw	s7,300(sp)
1c009ac4:	12812c03          	lw	s8,296(sp)
1c009ac8:	12412c83          	lw	s9,292(sp)
1c009acc:	12012d03          	lw	s10,288(sp)
1c009ad0:	11c12d83          	lw	s11,284(sp)
1c009ad4:	6171                	addi	sp,sp,336
1c009ad6:	8082                	ret
1c009ad8:	0905                	addi	s2,s2,1
1c009ada:	8a62                	mv	s4,s8
1c009adc:	84de                	mv	s1,s7
1c009ade:	8c52                	mv	s8,s4
1c009ae0:	b745                	j	1c009a80 <_prf+0x40>
1c009ae2:	0f3a8263          	beq	s5,s3,1c009bc6 <_prf+0x186>
1c009ae6:	0d59e563          	bltu	s3,s5,1c009bb0 <_prf+0x170>
1c009aea:	fa0a8ae3          	beqz	s5,1c009a9e <_prf+0x5e>
1c009aee:	0dba8a63          	beq	s5,s11,1c009bc2 <_prf+0x182>
1c009af2:	8ba6                	mv	s7,s1
1c009af4:	000bca83          	lbu	s5,0(s7)
1c009af8:	1c0007b7          	lui	a5,0x1c000
1c009afc:	54078513          	addi	a0,a5,1344 # 1c000540 <__DTOR_END__+0x1e8>
1c009b00:	85d6                	mv	a1,s5
1c009b02:	001b8493          	addi	s1,s7,1
1c009b06:	3671                	jal	1c009692 <strchr>
1c009b08:	fd69                	bnez	a0,1c009ae2 <_prf+0xa2>
1c009b0a:	02a00693          	li	a3,42
1c009b0e:	0eda9763          	bne	s5,a3,1c009bfc <_prf+0x1bc>
1c009b12:	000c2983          	lw	s3,0(s8)
1c009b16:	004c0693          	addi	a3,s8,4
1c009b1a:	0009d663          	bgez	s3,1c009b26 <_prf+0xe6>
1c009b1e:	4705                	li	a4,1
1c009b20:	413009b3          	neg	s3,s3
1c009b24:	ca3a                	sw	a4,20(sp)
1c009b26:	0004ca83          	lbu	s5,0(s1)
1c009b2a:	8c36                	mv	s8,a3
1c009b2c:	002b8493          	addi	s1,s7,2
1c009b30:	0c800713          	li	a4,200
1c009b34:	02e00693          	li	a3,46
1c009b38:	04e9d9b3          	p.minu	s3,s3,a4
1c009b3c:	5d7d                	li	s10,-1
1c009b3e:	02da9463          	bne	s5,a3,1c009b66 <_prf+0x126>
1c009b42:	0004c703          	lbu	a4,0(s1)
1c009b46:	02a00793          	li	a5,42
1c009b4a:	0ef71c63          	bne	a4,a5,1c009c42 <_prf+0x202>
1c009b4e:	000c2d03          	lw	s10,0(s8)
1c009b52:	0485                	addi	s1,s1,1
1c009b54:	0c11                	addi	s8,s8,4
1c009b56:	0c800793          	li	a5,200
1c009b5a:	01a7d363          	ble	s10,a5,1c009b60 <_prf+0x120>
1c009b5e:	5d7d                	li	s10,-1
1c009b60:	0004ca83          	lbu	s5,0(s1)
1c009b64:	0485                	addi	s1,s1,1
1c009b66:	1c0007b7          	lui	a5,0x1c000
1c009b6a:	85d6                	mv	a1,s5
1c009b6c:	54878513          	addi	a0,a5,1352 # 1c000548 <__DTOR_END__+0x1f0>
1c009b70:	360d                	jal	1c009692 <strchr>
1c009b72:	c501                	beqz	a0,1c009b7a <_prf+0x13a>
1c009b74:	0004ca83          	lbu	s5,0(s1)
1c009b78:	0485                	addi	s1,s1,1
1c009b7a:	06700693          	li	a3,103
1c009b7e:	1356c563          	blt	a3,s5,1c009ca8 <_prf+0x268>
1c009b82:	06500693          	li	a3,101
1c009b86:	20dad063          	ble	a3,s5,1c009d86 <_prf+0x346>
1c009b8a:	04700693          	li	a3,71
1c009b8e:	0b56ce63          	blt	a3,s5,1c009c4a <_prf+0x20a>
1c009b92:	04500693          	li	a3,69
1c009b96:	1edad863          	ble	a3,s5,1c009d86 <_prf+0x346>
1c009b9a:	f00a82e3          	beqz	s5,1c009a9e <_prf+0x5e>
1c009b9e:	02500713          	li	a4,37
1c009ba2:	64ea8a63          	beq	s5,a4,1c00a1f6 <_prf+0x7b6>
1c009ba6:	0c800713          	li	a4,200
1c009baa:	65575e63          	ble	s5,a4,1c00a206 <_prf+0x7c6>
1c009bae:	b5fd                	j	1c009a9c <_prf+0x5c>
1c009bb0:	034a8163          	beq	s5,s4,1c009bd2 <_prf+0x192>
1c009bb4:	016a8b63          	beq	s5,s6,1c009bca <_prf+0x18a>
1c009bb8:	f3aa9de3          	bne	s5,s10,1c009af2 <_prf+0xb2>
1c009bbc:	4785                	li	a5,1
1c009bbe:	c83e                	sw	a5,16(sp)
1c009bc0:	bf0d                	j	1c009af2 <_prf+0xb2>
1c009bc2:	4405                	li	s0,1
1c009bc4:	b73d                	j	1c009af2 <_prf+0xb2>
1c009bc6:	4c85                	li	s9,1
1c009bc8:	b72d                	j	1c009af2 <_prf+0xb2>
1c009bca:	03000713          	li	a4,48
1c009bce:	c63a                	sw	a4,12(sp)
1c009bd0:	b70d                	j	1c009af2 <_prf+0xb2>
1c009bd2:	4785                	li	a5,1
1c009bd4:	ca3e                	sw	a5,20(sp)
1c009bd6:	bf31                	j	1c009af2 <_prf+0xb2>
1c009bd8:	02000713          	li	a4,32
1c009bdc:	c63a                	sw	a4,12(sp)
1c009bde:	4401                	li	s0,0
1c009be0:	c802                	sw	zero,16(sp)
1c009be2:	ca02                	sw	zero,20(sp)
1c009be4:	4c81                	li	s9,0
1c009be6:	02300993          	li	s3,35
1c009bea:	02d00a13          	li	s4,45
1c009bee:	03000b13          	li	s6,48
1c009bf2:	02b00d13          	li	s10,43
1c009bf6:	02000d93          	li	s11,32
1c009bfa:	bded                	j	1c009af4 <_prf+0xb4>
1c009bfc:	fd0a8693          	addi	a3,s5,-48
1c009c00:	4625                	li	a2,9
1c009c02:	4981                	li	s3,0
1c009c04:	f2d666e3          	bltu	a2,a3,1c009b30 <_prf+0xf0>
1c009c08:	46a5                	li	a3,9
1c009c0a:	45a9                	li	a1,10
1c009c0c:	84de                	mv	s1,s7
1c009c0e:	0014c70b          	p.lbu	a4,1(s1!)
1c009c12:	fd070613          	addi	a2,a4,-48
1c009c16:	8aba                	mv	s5,a4
1c009c18:	f0c6ece3          	bltu	a3,a2,1c009b30 <_prf+0xf0>
1c009c1c:	42b98733          	p.mac	a4,s3,a1
1c009c20:	8ba6                	mv	s7,s1
1c009c22:	fd070993          	addi	s3,a4,-48
1c009c26:	b7dd                	j	1c009c0c <_prf+0x1cc>
1c009c28:	42ad07b3          	p.mac	a5,s10,a0
1c009c2c:	84b6                	mv	s1,a3
1c009c2e:	fd078d13          	addi	s10,a5,-48
1c009c32:	86a6                	mv	a3,s1
1c009c34:	0016c78b          	p.lbu	a5,1(a3!)
1c009c38:	fd078593          	addi	a1,a5,-48
1c009c3c:	feb676e3          	bleu	a1,a2,1c009c28 <_prf+0x1e8>
1c009c40:	bf19                	j	1c009b56 <_prf+0x116>
1c009c42:	4d01                	li	s10,0
1c009c44:	4625                	li	a2,9
1c009c46:	4529                	li	a0,10
1c009c48:	b7ed                	j	1c009c32 <_prf+0x1f2>
1c009c4a:	06300693          	li	a3,99
1c009c4e:	0cda8e63          	beq	s5,a3,1c009d2a <_prf+0x2ea>
1c009c52:	0756cb63          	blt	a3,s5,1c009cc8 <_prf+0x288>
1c009c56:	05800693          	li	a3,88
1c009c5a:	f4da96e3          	bne	s5,a3,1c009ba6 <_prf+0x166>
1c009c5e:	04410b93          	addi	s7,sp,68
1c009c62:	004c0a13          	addi	s4,s8,4
1c009c66:	000c2583          	lw	a1,0(s8)
1c009c6a:	845e                	mv	s0,s7
1c009c6c:	000c8963          	beqz	s9,1c009c7e <_prf+0x23e>
1c009c70:	76e1                	lui	a3,0xffff8
1c009c72:	8306c693          	xori	a3,a3,-2000
1c009c76:	04d11223          	sh	a3,68(sp)
1c009c7a:	04610413          	addi	s0,sp,70
1c009c7e:	86ea                	mv	a3,s10
1c009c80:	4641                	li	a2,16
1c009c82:	8522                	mv	a0,s0
1c009c84:	31f1                	jal	1c009950 <_to_x>
1c009c86:	05800693          	li	a3,88
1c009c8a:	00da9863          	bne	s5,a3,1c009c9a <_prf+0x25a>
1c009c8e:	86de                	mv	a3,s7
1c009c90:	45e5                	li	a1,25
1c009c92:	0016c78b          	p.lbu	a5,1(a3!) # ffff8001 <pulp__FC+0xffff8002>
1c009c96:	54079663          	bnez	a5,1c00a1e2 <_prf+0x7a2>
1c009c9a:	41740433          	sub	s0,s0,s7
1c009c9e:	9522                	add	a0,a0,s0
1c009ca0:	01903433          	snez	s0,s9
1c009ca4:	0406                	slli	s0,s0,0x1
1c009ca6:	a0e9                	j	1c009d70 <_prf+0x330>
1c009ca8:	07000693          	li	a3,112
1c009cac:	4eda8463          	beq	s5,a3,1c00a194 <_prf+0x754>
1c009cb0:	0556c163          	blt	a3,s5,1c009cf2 <_prf+0x2b2>
1c009cb4:	06e00693          	li	a3,110
1c009cb8:	46da8163          	beq	s5,a3,1c00a11a <_prf+0x6da>
1c009cbc:	4756c663          	blt	a3,s5,1c00a128 <_prf+0x6e8>
1c009cc0:	06900693          	li	a3,105
1c009cc4:	eeda91e3          	bne	s5,a3,1c009ba6 <_prf+0x166>
1c009cc8:	000c2a83          	lw	s5,0(s8)
1c009ccc:	004c0a13          	addi	s4,s8,4
1c009cd0:	04410b13          	addi	s6,sp,68
1c009cd4:	060ad663          	bgez	s5,1c009d40 <_prf+0x300>
1c009cd8:	02d00693          	li	a3,45
1c009cdc:	04d10223          	sb	a3,68(sp)
1c009ce0:	80000737          	lui	a4,0x80000
1c009ce4:	415005b3          	neg	a1,s5
1c009ce8:	06ea9663          	bne	s5,a4,1c009d54 <_prf+0x314>
1c009cec:	800005b7          	lui	a1,0x80000
1c009cf0:	a095                	j	1c009d54 <_prf+0x314>
1c009cf2:	07500693          	li	a3,117
1c009cf6:	4cda8c63          	beq	s5,a3,1c00a1ce <_prf+0x78e>
1c009cfa:	07800693          	li	a3,120
1c009cfe:	f6da80e3          	beq	s5,a3,1c009c5e <_prf+0x21e>
1c009d02:	07300693          	li	a3,115
1c009d06:	eada90e3          	bne	s5,a3,1c009ba6 <_prf+0x166>
1c009d0a:	000c2583          	lw	a1,0(s8)
1c009d0e:	004c0a13          	addi	s4,s8,4
1c009d12:	4c81                	li	s9,0
1c009d14:	86ae                	mv	a3,a1
1c009d16:	0c8350fb          	lp.setupi	x1,200,1c009d22 <_prf+0x2e2>
1c009d1a:	0016c60b          	p.lbu	a2,1(a3!)
1c009d1e:	48060d63          	beqz	a2,1c00a1b8 <_prf+0x778>
1c009d22:	0c85                	addi	s9,s9,1
1c009d24:	480d5c63          	bgez	s10,1c00a1bc <_prf+0x77c>
1c009d28:	a971                	j	1c00a1c4 <_prf+0x784>
1c009d2a:	000c2783          	lw	a5,0(s8)
1c009d2e:	004c0a13          	addi	s4,s8,4
1c009d32:	040102a3          	sb	zero,69(sp)
1c009d36:	04f10223          	sb	a5,68(sp)
1c009d3a:	4c85                	li	s9,1
1c009d3c:	4401                	li	s0,0
1c009d3e:	a901                	j	1c00a14e <_prf+0x70e>
1c009d40:	47c2                	lw	a5,16(sp)
1c009d42:	02b00693          	li	a3,43
1c009d46:	e781                	bnez	a5,1c009d4e <_prf+0x30e>
1c009d48:	c815                	beqz	s0,1c009d7c <_prf+0x33c>
1c009d4a:	02000693          	li	a3,32
1c009d4e:	04d10223          	sb	a3,68(sp)
1c009d52:	85d6                	mv	a1,s5
1c009d54:	04510c13          	addi	s8,sp,69
1c009d58:	86ea                	mv	a3,s10
1c009d5a:	4629                	li	a2,10
1c009d5c:	8562                	mv	a0,s8
1c009d5e:	3ecd                	jal	1c009950 <_to_x>
1c009d60:	4742                	lw	a4,16(sp)
1c009d62:	9562                	add	a0,a0,s8
1c009d64:	41650533          	sub	a0,a0,s6
1c009d68:	ef09                	bnez	a4,1c009d82 <_prf+0x342>
1c009d6a:	e019                	bnez	s0,1c009d70 <_prf+0x330>
1c009d6c:	01fad413          	srli	s0,s5,0x1f
1c009d70:	0bfd2363          	p.beqimm	s10,-1,1c009e16 <_prf+0x3d6>
1c009d74:	02000713          	li	a4,32
1c009d78:	c63a                	sw	a4,12(sp)
1c009d7a:	a871                	j	1c009e16 <_prf+0x3d6>
1c009d7c:	85d6                	mv	a1,s5
1c009d7e:	8c5a                	mv	s8,s6
1c009d80:	bfe1                	j	1c009d58 <_prf+0x318>
1c009d82:	4442                	lw	s0,16(sp)
1c009d84:	b7f5                	j	1c009d70 <_prf+0x330>
1c009d86:	0c1d                	addi	s8,s8,7
1c009d88:	c40c3c33          	p.bclr	s8,s8,2,0
1c009d8c:	000c2883          	lw	a7,0(s8)
1c009d90:	004c2303          	lw	t1,4(s8)
1c009d94:	800007b7          	lui	a5,0x80000
1c009d98:	0158d593          	srli	a1,a7,0x15
1c009d9c:	00b31693          	slli	a3,t1,0xb
1c009da0:	8ecd                	or	a3,a3,a1
1c009da2:	fff7c793          	not	a5,a5
1c009da6:	01435613          	srli	a2,t1,0x14
1c009daa:	08ae                	slli	a7,a7,0xb
1c009dac:	8efd                	and	a3,a3,a5
1c009dae:	e8b63633          	p.bclr	a2,a2,20,11
1c009db2:	d846                	sw	a7,48(sp)
1c009db4:	da36                	sw	a3,52(sp)
1c009db6:	7ff00593          	li	a1,2047
1c009dba:	008c0a13          	addi	s4,s8,8
1c009dbe:	08b61d63          	bne	a2,a1,1c009e58 <_prf+0x418>
1c009dc2:	00d0                	addi	a2,sp,68
1c009dc4:	8732                	mv	a4,a2
1c009dc6:	00035863          	bgez	t1,1c009dd6 <_prf+0x396>
1c009dca:	02d00713          	li	a4,45
1c009dce:	04e10223          	sb	a4,68(sp)
1c009dd2:	04510713          	addi	a4,sp,69
1c009dd6:	00d8e6b3          	or	a3,a7,a3
1c009dda:	fbfa8793          	addi	a5,s5,-65
1c009dde:	00370513          	addi	a0,a4,3 # 80000003 <pulp__FC+0x80000004>
1c009de2:	eaa1                	bnez	a3,1c009e32 <_prf+0x3f2>
1c009de4:	46e5                	li	a3,25
1c009de6:	02f6ee63          	bltu	a3,a5,1c009e22 <_prf+0x3e2>
1c009dea:	6795                	lui	a5,0x5
1c009dec:	e4978793          	addi	a5,a5,-439 # 4e49 <__rt_udma_callback_data+0x4b51>
1c009df0:	00f71023          	sh	a5,0(a4)
1c009df4:	04600793          	li	a5,70
1c009df8:	00f70123          	sb	a5,2(a4)
1c009dfc:	000701a3          	sb	zero,3(a4)
1c009e00:	8d11                	sub	a0,a0,a2
1c009e02:	47c2                	lw	a5,16(sp)
1c009e04:	44079f63          	bnez	a5,1c00a262 <_prf+0x822>
1c009e08:	e419                	bnez	s0,1c009e16 <_prf+0x3d6>
1c009e0a:	04414403          	lbu	s0,68(sp)
1c009e0e:	fd340413          	addi	s0,s0,-45
1c009e12:	00143413          	seqz	s0,s0
1c009e16:	0c800793          	li	a5,200
1c009e1a:	c8a7c1e3          	blt	a5,a0,1c009a9c <_prf+0x5c>
1c009e1e:	8caa                	mv	s9,a0
1c009e20:	a63d                	j	1c00a14e <_prf+0x70e>
1c009e22:	679d                	lui	a5,0x7
1c009e24:	e6978793          	addi	a5,a5,-407 # 6e69 <__rt_udma_callback_data+0x6b71>
1c009e28:	00f71023          	sh	a5,0(a4)
1c009e2c:	06600793          	li	a5,102
1c009e30:	b7e1                	j	1c009df8 <_prf+0x3b8>
1c009e32:	46e5                	li	a3,25
1c009e34:	00f6ea63          	bltu	a3,a5,1c009e48 <_prf+0x408>
1c009e38:	6791                	lui	a5,0x4
1c009e3a:	14e78793          	addi	a5,a5,334 # 414e <__rt_udma_callback_data+0x3e56>
1c009e3e:	00f71023          	sh	a5,0(a4)
1c009e42:	04e00793          	li	a5,78
1c009e46:	bf4d                	j	1c009df8 <_prf+0x3b8>
1c009e48:	6799                	lui	a5,0x6
1c009e4a:	16e78793          	addi	a5,a5,366 # 616e <__rt_udma_callback_data+0x5e76>
1c009e4e:	00f71023          	sh	a5,0(a4)
1c009e52:	06e00793          	li	a5,110
1c009e56:	b74d                	j	1c009df8 <_prf+0x3b8>
1c009e58:	04600593          	li	a1,70
1c009e5c:	00ba9463          	bne	s5,a1,1c009e64 <_prf+0x424>
1c009e60:	06600a93          	li	s5,102
1c009e64:	011665b3          	or	a1,a2,a7
1c009e68:	8dd5                	or	a1,a1,a3
1c009e6a:	c5d1                	beqz	a1,1c009ef6 <_prf+0x4b6>
1c009e6c:	80000737          	lui	a4,0x80000
1c009e70:	8ed9                	or	a3,a3,a4
1c009e72:	da36                	sw	a3,52(sp)
1c009e74:	d846                	sw	a7,48(sp)
1c009e76:	c0260c13          	addi	s8,a2,-1022
1c009e7a:	02d00693          	li	a3,45
1c009e7e:	00034b63          	bltz	t1,1c009e94 <_prf+0x454>
1c009e82:	47c2                	lw	a5,16(sp)
1c009e84:	02b00693          	li	a3,43
1c009e88:	e791                	bnez	a5,1c009e94 <_prf+0x454>
1c009e8a:	04410b13          	addi	s6,sp,68
1c009e8e:	c419                	beqz	s0,1c009e9c <_prf+0x45c>
1c009e90:	02000693          	li	a3,32
1c009e94:	04d10223          	sb	a3,68(sp)
1c009e98:	04510b13          	addi	s6,sp,69
1c009e9c:	4b81                	li	s7,0
1c009e9e:	55f9                	li	a1,-2
1c009ea0:	04bc4f63          	blt	s8,a1,1c009efe <_prf+0x4be>
1c009ea4:	0b804563          	bgtz	s8,1c009f4e <_prf+0x50e>
1c009ea8:	1808                	addi	a0,sp,48
1c009eaa:	0c05                	addi	s8,s8,1
1c009eac:	3ced                	jal	1c0099a6 <_rlrshift>
1c009eae:	fe4c3de3          	p.bneimm	s8,4,1c009ea8 <_prf+0x468>
1c009eb2:	000d5363          	bgez	s10,1c009eb8 <_prf+0x478>
1c009eb6:	4d19                	li	s10,6
1c009eb8:	c05ab5b3          	p.bclr	a1,s5,0,5
1c009ebc:	04700513          	li	a0,71
1c009ec0:	0ca59363          	bne	a1,a0,1c009f86 <_prf+0x546>
1c009ec4:	4c01                	li	s8,0
1c009ec6:	000c9463          	bnez	s9,1c009ece <_prf+0x48e>
1c009eca:	01a03c33          	snez	s8,s10
1c009ece:	55f5                	li	a1,-3
1c009ed0:	00bbc663          	blt	s7,a1,1c009edc <_prf+0x49c>
1c009ed4:	001d0593          	addi	a1,s10,1
1c009ed8:	0b75dc63          	ble	s7,a1,1c009f90 <_prf+0x550>
1c009edc:	06700593          	li	a1,103
1c009ee0:	14ba8763          	beq	s5,a1,1c00a02e <_prf+0x5ee>
1c009ee4:	04500a93          	li	s5,69
1c009ee8:	001d0593          	addi	a1,s10,1
1c009eec:	4541                	li	a0,16
1c009eee:	d62a                	sw	a0,44(sp)
1c009ef0:	04a5cdb3          	p.min	s11,a1,a0
1c009ef4:	a07d                	j	1c009fa2 <_prf+0x562>
1c009ef6:	4c01                	li	s8,0
1c009ef8:	b769                	j	1c009e82 <_prf+0x442>
1c009efa:	1808                	addi	a0,sp,48
1c009efc:	346d                	jal	1c0099a6 <_rlrshift>
1c009efe:	5352                	lw	t1,52(sp)
1c009f00:	33333737          	lui	a4,0x33333
1c009f04:	33270713          	addi	a4,a4,818 # 33333332 <__l2_shared_end+0x17323046>
1c009f08:	58c2                	lw	a7,48(sp)
1c009f0a:	0c05                	addi	s8,s8,1
1c009f0c:	fe6767e3          	bltu	a4,t1,1c009efa <_prf+0x4ba>
1c009f10:	4515                	li	a0,5
1c009f12:	031535b3          	mulhu	a1,a0,a7
1c009f16:	1bfd                	addi	s7,s7,-1
1c009f18:	031508b3          	mul	a7,a0,a7
1c009f1c:	426505b3          	p.mac	a1,a0,t1
1c009f20:	d846                	sw	a7,48(sp)
1c009f22:	4501                	li	a0,0
1c009f24:	da2e                	sw	a1,52(sp)
1c009f26:	800007b7          	lui	a5,0x80000
1c009f2a:	fff7c793          	not	a5,a5
1c009f2e:	00b7f663          	bleu	a1,a5,1c009f3a <_prf+0x4fa>
1c009f32:	d535                	beqz	a0,1c009e9e <_prf+0x45e>
1c009f34:	d846                	sw	a7,48(sp)
1c009f36:	da2e                	sw	a1,52(sp)
1c009f38:	b79d                	j	1c009e9e <_prf+0x45e>
1c009f3a:	01f8d313          	srli	t1,a7,0x1f
1c009f3e:	00159513          	slli	a0,a1,0x1
1c009f42:	00a365b3          	or	a1,t1,a0
1c009f46:	0886                	slli	a7,a7,0x1
1c009f48:	1c7d                	addi	s8,s8,-1
1c009f4a:	4505                	li	a0,1
1c009f4c:	bfe9                	j	1c009f26 <_prf+0x4e6>
1c009f4e:	1808                	addi	a0,sp,48
1c009f50:	a77ff0ef          	jal	ra,1c0099c6 <_ldiv5>
1c009f54:	58c2                	lw	a7,48(sp)
1c009f56:	55d2                	lw	a1,52(sp)
1c009f58:	1c7d                	addi	s8,s8,-1
1c009f5a:	0b85                	addi	s7,s7,1
1c009f5c:	4501                	li	a0,0
1c009f5e:	80000737          	lui	a4,0x80000
1c009f62:	fff74713          	not	a4,a4
1c009f66:	00b77663          	bleu	a1,a4,1c009f72 <_prf+0x532>
1c009f6a:	dd0d                	beqz	a0,1c009ea4 <_prf+0x464>
1c009f6c:	d846                	sw	a7,48(sp)
1c009f6e:	da2e                	sw	a1,52(sp)
1c009f70:	bf15                	j	1c009ea4 <_prf+0x464>
1c009f72:	01f8d313          	srli	t1,a7,0x1f
1c009f76:	00159513          	slli	a0,a1,0x1
1c009f7a:	00a365b3          	or	a1,t1,a0
1c009f7e:	0886                	slli	a7,a7,0x1
1c009f80:	1c7d                	addi	s8,s8,-1
1c009f82:	4505                	li	a0,1
1c009f84:	bfe9                	j	1c009f5e <_prf+0x51e>
1c009f86:	06600593          	li	a1,102
1c009f8a:	4c01                	li	s8,0
1c009f8c:	f4ba9ee3          	bne	s5,a1,1c009ee8 <_prf+0x4a8>
1c009f90:	01ab85b3          	add	a1,s7,s10
1c009f94:	06600a93          	li	s5,102
1c009f98:	f405dae3          	bgez	a1,1c009eec <_prf+0x4ac>
1c009f9c:	45c1                	li	a1,16
1c009f9e:	d62e                	sw	a1,44(sp)
1c009fa0:	4d81                	li	s11,0
1c009fa2:	4301                	li	t1,0
1c009fa4:	080003b7          	lui	t2,0x8000
1c009fa8:	dc1a                	sw	t1,56(sp)
1c009faa:	de1e                	sw	t2,60(sp)
1c009fac:	1dfd                	addi	s11,s11,-1
1c009fae:	09fdb363          	p.bneimm	s11,-1,1c00a034 <_prf+0x5f4>
1c009fb2:	55c2                	lw	a1,48(sp)
1c009fb4:	5562                	lw	a0,56(sp)
1c009fb6:	58d2                	lw	a7,52(sp)
1c009fb8:	5372                	lw	t1,60(sp)
1c009fba:	952e                	add	a0,a0,a1
1c009fbc:	00b535b3          	sltu	a1,a0,a1
1c009fc0:	989a                	add	a7,a7,t1
1c009fc2:	95c6                	add	a1,a1,a7
1c009fc4:	da2e                	sw	a1,52(sp)
1c009fc6:	d82a                	sw	a0,48(sp)
1c009fc8:	f605b5b3          	p.bclr	a1,a1,27,0
1c009fcc:	c981                	beqz	a1,1c009fdc <_prf+0x59c>
1c009fce:	1808                	addi	a0,sp,48
1c009fd0:	9f7ff0ef          	jal	ra,1c0099c6 <_ldiv5>
1c009fd4:	1808                	addi	a0,sp,48
1c009fd6:	9d1ff0ef          	jal	ra,1c0099a6 <_rlrshift>
1c009fda:	0b85                	addi	s7,s7,1
1c009fdc:	06600593          	li	a1,102
1c009fe0:	001b0d93          	addi	s11,s6,1
1c009fe4:	08ba9463          	bne	s5,a1,1c00a06c <_prf+0x62c>
1c009fe8:	05705d63          	blez	s7,1c00a042 <_prf+0x602>
1c009fec:	017b0db3          	add	s11,s6,s7
1c009ff0:	106c                	addi	a1,sp,44
1c009ff2:	1808                	addi	a0,sp,48
1c009ff4:	a17ff0ef          	jal	ra,1c009a0a <_get_digit>
1c009ff8:	00ab00ab          	p.sb	a0,1(s6!)
1c009ffc:	ffbb1ae3          	bne	s6,s11,1c009ff0 <_prf+0x5b0>
1c00a000:	4b81                	li	s7,0
1c00a002:	000c9463          	bnez	s9,1c00a00a <_prf+0x5ca>
1c00a006:	020d0163          	beqz	s10,1c00a028 <_prf+0x5e8>
1c00a00a:	001d8b13          	addi	s6,s11,1
1c00a00e:	02e00613          	li	a2,46
1c00a012:	00cd8023          	sb	a2,0(s11)
1c00a016:	8cea                	mv	s9,s10
1c00a018:	8dda                	mv	s11,s6
1c00a01a:	03000893          	li	a7,48
1c00a01e:	1cfd                	addi	s9,s9,-1
1c00a020:	03fcb663          	p.bneimm	s9,-1,1c00a04c <_prf+0x60c>
1c00a024:	01ab0db3          	add	s11,s6,s10
1c00a028:	060c1c63          	bnez	s8,1c00a0a0 <_prf+0x660>
1c00a02c:	a8c1                	j	1c00a0fc <_prf+0x6bc>
1c00a02e:	06500a93          	li	s5,101
1c00a032:	bd5d                	j	1c009ee8 <_prf+0x4a8>
1c00a034:	1828                	addi	a0,sp,56
1c00a036:	991ff0ef          	jal	ra,1c0099c6 <_ldiv5>
1c00a03a:	1828                	addi	a0,sp,56
1c00a03c:	96bff0ef          	jal	ra,1c0099a6 <_rlrshift>
1c00a040:	b7b5                	j	1c009fac <_prf+0x56c>
1c00a042:	03000593          	li	a1,48
1c00a046:	00bb0023          	sb	a1,0(s6)
1c00a04a:	bf65                	j	1c00a002 <_prf+0x5c2>
1c00a04c:	0d85                	addi	s11,s11,1
1c00a04e:	000b8663          	beqz	s7,1c00a05a <_prf+0x61a>
1c00a052:	ff1d8fa3          	sb	a7,-1(s11)
1c00a056:	0b85                	addi	s7,s7,1
1c00a058:	b7d9                	j	1c00a01e <_prf+0x5de>
1c00a05a:	106c                	addi	a1,sp,44
1c00a05c:	1808                	addi	a0,sp,48
1c00a05e:	c446                	sw	a7,8(sp)
1c00a060:	9abff0ef          	jal	ra,1c009a0a <_get_digit>
1c00a064:	fead8fa3          	sb	a0,-1(s11)
1c00a068:	48a2                	lw	a7,8(sp)
1c00a06a:	bf55                	j	1c00a01e <_prf+0x5de>
1c00a06c:	106c                	addi	a1,sp,44
1c00a06e:	1808                	addi	a0,sp,48
1c00a070:	99bff0ef          	jal	ra,1c009a0a <_get_digit>
1c00a074:	00ab0023          	sb	a0,0(s6)
1c00a078:	03000593          	li	a1,48
1c00a07c:	00b50363          	beq	a0,a1,1c00a082 <_prf+0x642>
1c00a080:	1bfd                	addi	s7,s7,-1
1c00a082:	000c9463          	bnez	s9,1c00a08a <_prf+0x64a>
1c00a086:	000d0b63          	beqz	s10,1c00a09c <_prf+0x65c>
1c00a08a:	002b0d93          	addi	s11,s6,2
1c00a08e:	02e00593          	li	a1,46
1c00a092:	00bb00a3          	sb	a1,1(s6)
1c00a096:	9d6e                	add	s10,s10,s11
1c00a098:	07bd1863          	bne	s10,s11,1c00a108 <_prf+0x6c8>
1c00a09c:	000c0f63          	beqz	s8,1c00a0ba <_prf+0x67a>
1c00a0a0:	03000593          	li	a1,48
1c00a0a4:	fffd8713          	addi	a4,s11,-1
1c00a0a8:	00074603          	lbu	a2,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00a0ac:	06b60563          	beq	a2,a1,1c00a116 <_prf+0x6d6>
1c00a0b0:	02e00593          	li	a1,46
1c00a0b4:	00b61363          	bne	a2,a1,1c00a0ba <_prf+0x67a>
1c00a0b8:	8dba                	mv	s11,a4
1c00a0ba:	c05ab733          	p.bclr	a4,s5,0,5
1c00a0be:	04500613          	li	a2,69
1c00a0c2:	02c71d63          	bne	a4,a2,1c00a0fc <_prf+0x6bc>
1c00a0c6:	87d6                	mv	a5,s5
1c00a0c8:	00fd8023          	sb	a5,0(s11)
1c00a0cc:	02b00793          	li	a5,43
1c00a0d0:	000bd663          	bgez	s7,1c00a0dc <_prf+0x69c>
1c00a0d4:	41700bb3          	neg	s7,s7
1c00a0d8:	02d00793          	li	a5,45
1c00a0dc:	00fd80a3          	sb	a5,1(s11)
1c00a0e0:	47a9                	li	a5,10
1c00a0e2:	02fbc733          	div	a4,s7,a5
1c00a0e6:	0d91                	addi	s11,s11,4
1c00a0e8:	02fbe6b3          	rem	a3,s7,a5
1c00a0ec:	03070713          	addi	a4,a4,48
1c00a0f0:	feed8f23          	sb	a4,-2(s11)
1c00a0f4:	03068693          	addi	a3,a3,48
1c00a0f8:	fedd8fa3          	sb	a3,-1(s11)
1c00a0fc:	00c8                	addi	a0,sp,68
1c00a0fe:	000d8023          	sb	zero,0(s11)
1c00a102:	40ad8533          	sub	a0,s11,a0
1c00a106:	b9f5                	j	1c009e02 <_prf+0x3c2>
1c00a108:	106c                	addi	a1,sp,44
1c00a10a:	1808                	addi	a0,sp,48
1c00a10c:	8ffff0ef          	jal	ra,1c009a0a <_get_digit>
1c00a110:	00ad80ab          	p.sb	a0,1(s11!)
1c00a114:	b751                	j	1c00a098 <_prf+0x658>
1c00a116:	8dba                	mv	s11,a4
1c00a118:	b771                	j	1c00a0a4 <_prf+0x664>
1c00a11a:	000c2783          	lw	a5,0(s8)
1c00a11e:	004c0a13          	addi	s4,s8,4
1c00a122:	0127a023          	sw	s2,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00a126:	ba65                	j	1c009ade <_prf+0x9e>
1c00a128:	004c0a13          	addi	s4,s8,4
1c00a12c:	000c2583          	lw	a1,0(s8)
1c00a130:	00dc                	addi	a5,sp,68
1c00a132:	040c8263          	beqz	s9,1c00a176 <_prf+0x736>
1c00a136:	03000693          	li	a3,48
1c00a13a:	04d10223          	sb	a3,68(sp)
1c00a13e:	04510513          	addi	a0,sp,69
1c00a142:	e99d                	bnez	a1,1c00a178 <_prf+0x738>
1c00a144:	040102a3          	sb	zero,69(sp)
1c00a148:	4401                	li	s0,0
1c00a14a:	0dfd3063          	p.bneimm	s10,-1,1c00a20a <_prf+0x7ca>
1c00a14e:	04410b93          	addi	s7,sp,68
1c00a152:	0d3cc063          	blt	s9,s3,1c00a212 <_prf+0x7d2>
1c00a156:	89e6                	mv	s3,s9
1c00a158:	41790433          	sub	s0,s2,s7
1c00a15c:	01740933          	add	s2,s0,s7
1c00a160:	96098fe3          	beqz	s3,1c009ade <_prf+0x9e>
1c00a164:	45f2                	lw	a1,28(sp)
1c00a166:	001bc50b          	p.lbu	a0,1(s7!)
1c00a16a:	47e2                	lw	a5,24(sp)
1c00a16c:	9782                	jalr	a5
1c00a16e:	93f527e3          	p.beqimm	a0,-1,1c009a9c <_prf+0x5c>
1c00a172:	19fd                	addi	s3,s3,-1
1c00a174:	b7e5                	j	1c00a15c <_prf+0x71c>
1c00a176:	853e                	mv	a0,a5
1c00a178:	86ea                	mv	a3,s10
1c00a17a:	4621                	li	a2,8
1c00a17c:	40f50433          	sub	s0,a0,a5
1c00a180:	fd0ff0ef          	jal	ra,1c009950 <_to_x>
1c00a184:	9522                	add	a0,a0,s0
1c00a186:	4401                	li	s0,0
1c00a188:	c9fd27e3          	p.beqimm	s10,-1,1c009e16 <_prf+0x3d6>
1c00a18c:	02000793          	li	a5,32
1c00a190:	c63e                	sw	a5,12(sp)
1c00a192:	b151                	j	1c009e16 <_prf+0x3d6>
1c00a194:	000c2583          	lw	a1,0(s8)
1c00a198:	77e1                	lui	a5,0xffff8
1c00a19a:	8307c793          	xori	a5,a5,-2000
1c00a19e:	46a1                	li	a3,8
1c00a1a0:	4641                	li	a2,16
1c00a1a2:	04610513          	addi	a0,sp,70
1c00a1a6:	04f11223          	sh	a5,68(sp)
1c00a1aa:	fa6ff0ef          	jal	ra,1c009950 <_to_x>
1c00a1ae:	004c0a13          	addi	s4,s8,4
1c00a1b2:	0509                	addi	a0,a0,2
1c00a1b4:	4401                	li	s0,0
1c00a1b6:	be6d                	j	1c009d70 <_prf+0x330>
1c00a1b8:	000d4463          	bltz	s10,1c00a1c0 <_prf+0x780>
1c00a1bc:	05acccb3          	p.min	s9,s9,s10
1c00a1c0:	900c8fe3          	beqz	s9,1c009ade <_prf+0x9e>
1c00a1c4:	8666                	mv	a2,s9
1c00a1c6:	00c8                	addi	a0,sp,68
1c00a1c8:	c60ff0ef          	jal	ra,1c009628 <memcpy>
1c00a1cc:	be85                	j	1c009d3c <_prf+0x2fc>
1c00a1ce:	000c2583          	lw	a1,0(s8)
1c00a1d2:	86ea                	mv	a3,s10
1c00a1d4:	4629                	li	a2,10
1c00a1d6:	00c8                	addi	a0,sp,68
1c00a1d8:	004c0a13          	addi	s4,s8,4
1c00a1dc:	f74ff0ef          	jal	ra,1c009950 <_to_x>
1c00a1e0:	b75d                	j	1c00a186 <_prf+0x746>
1c00a1e2:	f9f78613          	addi	a2,a5,-97 # ffff7f9f <pulp__FC+0xffff7fa0>
1c00a1e6:	0ff67613          	andi	a2,a2,255
1c00a1ea:	aac5e4e3          	bltu	a1,a2,1c009c92 <_prf+0x252>
1c00a1ee:	1781                	addi	a5,a5,-32
1c00a1f0:	fef68fa3          	sb	a5,-1(a3)
1c00a1f4:	bc79                	j	1c009c92 <_prf+0x252>
1c00a1f6:	45f2                	lw	a1,28(sp)
1c00a1f8:	4762                	lw	a4,24(sp)
1c00a1fa:	02500513          	li	a0,37
1c00a1fe:	9702                	jalr	a4
1c00a200:	89f52ee3          	p.beqimm	a0,-1,1c009a9c <_prf+0x5c>
1c00a204:	0905                	addi	s2,s2,1
1c00a206:	8a62                	mv	s4,s8
1c00a208:	b8d9                	j	1c009ade <_prf+0x9e>
1c00a20a:	02000793          	li	a5,32
1c00a20e:	c63e                	sw	a5,12(sp)
1c00a210:	bf3d                	j	1c00a14e <_prf+0x70e>
1c00a212:	4752                	lw	a4,20(sp)
1c00a214:	cf01                	beqz	a4,1c00a22c <_prf+0x7ec>
1c00a216:	019b8833          	add	a6,s7,s9
1c00a21a:	02000713          	li	a4,32
1c00a21e:	417807b3          	sub	a5,a6,s7
1c00a222:	f337dbe3          	ble	s3,a5,1c00a158 <_prf+0x718>
1c00a226:	00e800ab          	p.sb	a4,1(a6!)
1c00a22a:	bfd5                	j	1c00a21e <_prf+0x7de>
1c00a22c:	41998c33          	sub	s8,s3,s9
1c00a230:	001c8613          	addi	a2,s9,1
1c00a234:	85de                	mv	a1,s7
1c00a236:	018b8533          	add	a0,s7,s8
1c00a23a:	c24ff0ef          	jal	ra,1c00965e <memmove>
1c00a23e:	4732                	lw	a4,12(sp)
1c00a240:	02000793          	li	a5,32
1c00a244:	00f70363          	beq	a4,a5,1c00a24a <_prf+0x80a>
1c00a248:	ca22                	sw	s0,20(sp)
1c00a24a:	47d2                	lw	a5,20(sp)
1c00a24c:	9c3e                	add	s8,s8,a5
1c00a24e:	00fb8ab3          	add	s5,s7,a5
1c00a252:	417a87b3          	sub	a5,s5,s7
1c00a256:	f187d1e3          	ble	s8,a5,1c00a158 <_prf+0x718>
1c00a25a:	4732                	lw	a4,12(sp)
1c00a25c:	00ea80ab          	p.sb	a4,1(s5!)
1c00a260:	bfcd                	j	1c00a252 <_prf+0x812>
1c00a262:	4442                	lw	s0,16(sp)
1c00a264:	be4d                	j	1c009e16 <_prf+0x3d6>

1c00a266 <__rt_uart_wait_tx_done.isra.3>:
1c00a266:	1a102737          	lui	a4,0x1a102
1c00a26a:	09870713          	addi	a4,a4,152 # 1a102098 <__rt_udma_callback_data+0x1a101da0>
1c00a26e:	431c                	lw	a5,0(a4)
1c00a270:	8bc1                	andi	a5,a5,16
1c00a272:	eb95                	bnez	a5,1c00a2a6 <__rt_uart_wait_tx_done.isra.3+0x40>
1c00a274:	1a102737          	lui	a4,0x1a102
1c00a278:	0a070713          	addi	a4,a4,160 # 1a1020a0 <__rt_udma_callback_data+0x1a101da8>
1c00a27c:	431c                	lw	a5,0(a4)
1c00a27e:	fc17b7b3          	p.bclr	a5,a5,30,1
1c00a282:	ffed                	bnez	a5,1c00a27c <__rt_uart_wait_tx_done.isra.3+0x16>
1c00a284:	1a10a7b7          	lui	a5,0x1a10a
1c00a288:	81478593          	addi	a1,a5,-2028 # 1a109814 <__rt_udma_callback_data+0x1a10951c>
1c00a28c:	80478613          	addi	a2,a5,-2044
1c00a290:	6691                	lui	a3,0x4
1c00a292:	80878793          	addi	a5,a5,-2040
1c00a296:	032350fb          	lp.setupi	x1,50,1c00a2a2 <__rt_uart_wait_tx_done.isra.3+0x3c>
1c00a29a:	c194                	sw	a3,0(a1)
1c00a29c:	c214                	sw	a3,0(a2)
1c00a29e:	10500073          	wfi
1c00a2a2:	c394                	sw	a3,0(a5)
1c00a2a4:	8082                	ret
1c00a2a6:	10500073          	wfi
1c00a2aa:	b7d1                	j	1c00a26e <__rt_uart_wait_tx_done.isra.3+0x8>

1c00a2ac <__rt_uart_setfreq_before>:
1c00a2ac:	1c0017b7          	lui	a5,0x1c001
1c00a2b0:	36c7a783          	lw	a5,876(a5) # 1c00136c <__rt_uart>
1c00a2b4:	cf99                	beqz	a5,1c00a2d2 <__rt_uart_setfreq_before+0x26>
1c00a2b6:	1141                	addi	sp,sp,-16
1c00a2b8:	c606                	sw	ra,12(sp)
1c00a2ba:	3775                	jal	1c00a266 <__rt_uart_wait_tx_done.isra.3>
1c00a2bc:	40b2                	lw	ra,12(sp)
1c00a2be:	005007b7          	lui	a5,0x500
1c00a2c2:	1a102737          	lui	a4,0x1a102
1c00a2c6:	0799                	addi	a5,a5,6
1c00a2c8:	0af72223          	sw	a5,164(a4) # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a2cc:	4501                	li	a0,0
1c00a2ce:	0141                	addi	sp,sp,16
1c00a2d0:	8082                	ret
1c00a2d2:	4501                	li	a0,0
1c00a2d4:	8082                	ret

1c00a2d6 <__rt_uart_setup.isra.4>:
1c00a2d6:	1c001737          	lui	a4,0x1c001
1c00a2da:	3b472703          	lw	a4,948(a4) # 1c0013b4 <__rt_freq_domains+0x4>
1c00a2de:	00155793          	srli	a5,a0,0x1
1c00a2e2:	97ba                	add	a5,a5,a4
1c00a2e4:	02a7d7b3          	divu	a5,a5,a0
1c00a2e8:	1a102737          	lui	a4,0x1a102
1c00a2ec:	17fd                	addi	a5,a5,-1
1c00a2ee:	07c2                	slli	a5,a5,0x10
1c00a2f0:	3067e793          	ori	a5,a5,774
1c00a2f4:	0af72223          	sw	a5,164(a4) # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a2f8:	8082                	ret

1c00a2fa <__rt_uart_setfreq_after>:
1c00a2fa:	1c0017b7          	lui	a5,0x1c001
1c00a2fe:	36c78793          	addi	a5,a5,876 # 1c00136c <__rt_uart>
1c00a302:	4398                	lw	a4,0(a5)
1c00a304:	cb09                	beqz	a4,1c00a316 <__rt_uart_setfreq_after+0x1c>
1c00a306:	4788                	lw	a0,8(a5)
1c00a308:	1141                	addi	sp,sp,-16
1c00a30a:	c606                	sw	ra,12(sp)
1c00a30c:	37e9                	jal	1c00a2d6 <__rt_uart_setup.isra.4>
1c00a30e:	40b2                	lw	ra,12(sp)
1c00a310:	4501                	li	a0,0
1c00a312:	0141                	addi	sp,sp,16
1c00a314:	8082                	ret
1c00a316:	4501                	li	a0,0
1c00a318:	8082                	ret

1c00a31a <soc_eu_fcEventMask_setEvent>:
1c00a31a:	02000793          	li	a5,32
1c00a31e:	02f54733          	div	a4,a0,a5
1c00a322:	1a1066b7          	lui	a3,0x1a106
1c00a326:	0691                	addi	a3,a3,4
1c00a328:	02f56533          	rem	a0,a0,a5
1c00a32c:	070a                	slli	a4,a4,0x2
1c00a32e:	9736                	add	a4,a4,a3
1c00a330:	4314                	lw	a3,0(a4)
1c00a332:	4785                	li	a5,1
1c00a334:	00a797b3          	sll	a5,a5,a0
1c00a338:	fff7c793          	not	a5,a5
1c00a33c:	8ff5                	and	a5,a5,a3
1c00a33e:	c31c                	sw	a5,0(a4)
1c00a340:	8082                	ret

1c00a342 <rt_uart_conf_init>:
1c00a342:	000997b7          	lui	a5,0x99
1c00a346:	96878793          	addi	a5,a5,-1688 # 98968 <__rt_udma_callback_data+0x98670>
1c00a34a:	c11c                	sw	a5,0(a0)
1c00a34c:	57fd                	li	a5,-1
1c00a34e:	c15c                	sw	a5,4(a0)
1c00a350:	8082                	ret

1c00a352 <__rt_uart_open>:
1c00a352:	1141                	addi	sp,sp,-16
1c00a354:	c606                	sw	ra,12(sp)
1c00a356:	c422                	sw	s0,8(sp)
1c00a358:	c226                	sw	s1,4(sp)
1c00a35a:	c04a                	sw	s2,0(sp)
1c00a35c:	30047973          	csrrci	s2,mstatus,8
1c00a360:	cd85                	beqz	a1,1c00a398 <__rt_uart_open+0x46>
1c00a362:	4198                	lw	a4,0(a1)
1c00a364:	1c0017b7          	lui	a5,0x1c001
1c00a368:	36c78413          	addi	s0,a5,876 # 1c00136c <__rt_uart>
1c00a36c:	00451613          	slli	a2,a0,0x4
1c00a370:	9432                	add	s0,s0,a2
1c00a372:	4014                	lw	a3,0(s0)
1c00a374:	36c78793          	addi	a5,a5,876
1c00a378:	c68d                	beqz	a3,1c00a3a2 <__rt_uart_open+0x50>
1c00a37a:	c589                	beqz	a1,1c00a384 <__rt_uart_open+0x32>
1c00a37c:	418c                	lw	a1,0(a1)
1c00a37e:	4418                	lw	a4,8(s0)
1c00a380:	04e59863          	bne	a1,a4,1c00a3d0 <__rt_uart_open+0x7e>
1c00a384:	0685                	addi	a3,a3,1
1c00a386:	00d7e623          	p.sw	a3,a2(a5)
1c00a38a:	8522                	mv	a0,s0
1c00a38c:	40b2                	lw	ra,12(sp)
1c00a38e:	4422                	lw	s0,8(sp)
1c00a390:	4492                	lw	s1,4(sp)
1c00a392:	4902                	lw	s2,0(sp)
1c00a394:	0141                	addi	sp,sp,16
1c00a396:	8082                	ret
1c00a398:	00099737          	lui	a4,0x99
1c00a39c:	96870713          	addi	a4,a4,-1688 # 98968 <__rt_udma_callback_data+0x98670>
1c00a3a0:	b7d1                	j	1c00a364 <__rt_uart_open+0x12>
1c00a3a2:	4785                	li	a5,1
1c00a3a4:	c01c                	sw	a5,0(s0)
1c00a3a6:	c418                	sw	a4,8(s0)
1c00a3a8:	c048                	sw	a0,4(s0)
1c00a3aa:	1a102737          	lui	a4,0x1a102
1c00a3ae:	4314                	lw	a3,0(a4)
1c00a3b0:	00a797b3          	sll	a5,a5,a0
1c00a3b4:	00251493          	slli	s1,a0,0x2
1c00a3b8:	8fd5                	or	a5,a5,a3
1c00a3ba:	c31c                	sw	a5,0(a4)
1c00a3bc:	8526                	mv	a0,s1
1c00a3be:	3fb1                	jal	1c00a31a <soc_eu_fcEventMask_setEvent>
1c00a3c0:	00148513          	addi	a0,s1,1
1c00a3c4:	3f99                	jal	1c00a31a <soc_eu_fcEventMask_setEvent>
1c00a3c6:	4408                	lw	a0,8(s0)
1c00a3c8:	3739                	jal	1c00a2d6 <__rt_uart_setup.isra.4>
1c00a3ca:	30091073          	csrw	mstatus,s2
1c00a3ce:	bf75                	j	1c00a38a <__rt_uart_open+0x38>
1c00a3d0:	4401                	li	s0,0
1c00a3d2:	bf65                	j	1c00a38a <__rt_uart_open+0x38>

1c00a3d4 <rt_uart_close>:
1c00a3d4:	1141                	addi	sp,sp,-16
1c00a3d6:	c606                	sw	ra,12(sp)
1c00a3d8:	c422                	sw	s0,8(sp)
1c00a3da:	c226                	sw	s1,4(sp)
1c00a3dc:	300474f3          	csrrci	s1,mstatus,8
1c00a3e0:	411c                	lw	a5,0(a0)
1c00a3e2:	17fd                	addi	a5,a5,-1
1c00a3e4:	c11c                	sw	a5,0(a0)
1c00a3e6:	e785                	bnez	a5,1c00a40e <rt_uart_close+0x3a>
1c00a3e8:	842a                	mv	s0,a0
1c00a3ea:	3db5                	jal	1c00a266 <__rt_uart_wait_tx_done.isra.3>
1c00a3ec:	1a102737          	lui	a4,0x1a102
1c00a3f0:	005007b7          	lui	a5,0x500
1c00a3f4:	0a470693          	addi	a3,a4,164 # 1a1020a4 <__rt_udma_callback_data+0x1a101dac>
1c00a3f8:	0799                	addi	a5,a5,6
1c00a3fa:	c29c                	sw	a5,0(a3)
1c00a3fc:	4050                	lw	a2,4(s0)
1c00a3fe:	4314                	lw	a3,0(a4)
1c00a400:	4785                	li	a5,1
1c00a402:	00c797b3          	sll	a5,a5,a2
1c00a406:	fff7c793          	not	a5,a5
1c00a40a:	8ff5                	and	a5,a5,a3
1c00a40c:	c31c                	sw	a5,0(a4)
1c00a40e:	30049073          	csrw	mstatus,s1
1c00a412:	40b2                	lw	ra,12(sp)
1c00a414:	4422                	lw	s0,8(sp)
1c00a416:	4492                	lw	s1,4(sp)
1c00a418:	0141                	addi	sp,sp,16
1c00a41a:	8082                	ret

1c00a41c <__rt_uart_init>:
1c00a41c:	1c00a5b7          	lui	a1,0x1c00a
1c00a420:	1141                	addi	sp,sp,-16
1c00a422:	4601                	li	a2,0
1c00a424:	2ac58593          	addi	a1,a1,684 # 1c00a2ac <__rt_uart_setfreq_before>
1c00a428:	4511                	li	a0,4
1c00a42a:	c606                	sw	ra,12(sp)
1c00a42c:	c422                	sw	s0,8(sp)
1c00a42e:	dcefe0ef          	jal	ra,1c0089fc <__rt_cbsys_add>
1c00a432:	1c00a5b7          	lui	a1,0x1c00a
1c00a436:	842a                	mv	s0,a0
1c00a438:	4601                	li	a2,0
1c00a43a:	2fa58593          	addi	a1,a1,762 # 1c00a2fa <__rt_uart_setfreq_after>
1c00a43e:	4515                	li	a0,5
1c00a440:	dbcfe0ef          	jal	ra,1c0089fc <__rt_cbsys_add>
1c00a444:	1c0017b7          	lui	a5,0x1c001
1c00a448:	3607a623          	sw	zero,876(a5) # 1c00136c <__rt_uart>
1c00a44c:	8d41                	or	a0,a0,s0
1c00a44e:	c10d                	beqz	a0,1c00a470 <__rt_uart_init+0x54>
1c00a450:	f1402673          	csrr	a2,mhartid
1c00a454:	1c000537          	lui	a0,0x1c000
1c00a458:	40565593          	srai	a1,a2,0x5
1c00a45c:	f265b5b3          	p.bclr	a1,a1,25,6
1c00a460:	f4563633          	p.bclr	a2,a2,26,5
1c00a464:	55050513          	addi	a0,a0,1360 # 1c000550 <__DTOR_END__+0x1f8>
1c00a468:	cbeff0ef          	jal	ra,1c009926 <printf>
1c00a46c:	c26ff0ef          	jal	ra,1c009892 <abort>
1c00a470:	40b2                	lw	ra,12(sp)
1c00a472:	4422                	lw	s0,8(sp)
1c00a474:	0141                	addi	sp,sp,16
1c00a476:	8082                	ret
