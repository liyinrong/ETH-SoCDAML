
// Register moves to and from debugger

.text_segment PM 0
.entry_point

	mv dbg,r0
	mv dbg,r1
	mv dbg,r2
	mv dbg,r3
	mv dbg,r4
	mv dbg,r5
	mv dbg,r6
	mv dbg,r7
	mv dbg,sp
	mv dbg,lr
	mv dbg,sr
	mv dbg,ilr
	mv dbg,isr

	mv r0 ,dbg
	mv r1 ,dbg
	mv r2 ,dbg
	mv r3 ,dbg
	mv r4 ,dbg
	mv r5 ,dbg
	mv r6 ,dbg
	mv r7 ,dbg
	mv sp ,dbg
	mv lr ,dbg
	mv sr ,dbg
	mv ilr ,dbg
	mv isr ,dbg

        ji r0

	swbrk

	nop 
  
