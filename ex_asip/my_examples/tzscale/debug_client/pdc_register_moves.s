
// Register moves to and from debugger

#include "pdc_data_address.h"

.text_segment PM 0
.entry_point

	sw x0,PDC_DATA_ADDRESS(x0)
	sw x1,PDC_DATA_ADDRESS(x0)
	sw x2,PDC_DATA_ADDRESS(x0)
	sw x3,PDC_DATA_ADDRESS(x0)
	sw x4,PDC_DATA_ADDRESS(x0)
	sw x5,PDC_DATA_ADDRESS(x0)
	sw x6,PDC_DATA_ADDRESS(x0)
	sw x7,PDC_DATA_ADDRESS(x0)
	sw x8,PDC_DATA_ADDRESS(x0)
	sw x9,PDC_DATA_ADDRESS(x0)

	sw x10,PDC_DATA_ADDRESS(x0)
	sw x11,PDC_DATA_ADDRESS(x0)
	sw x12,PDC_DATA_ADDRESS(x0)
	sw x13,PDC_DATA_ADDRESS(x0)
	sw x14,PDC_DATA_ADDRESS(x0)
	sw x15,PDC_DATA_ADDRESS(x0)
	sw x16,PDC_DATA_ADDRESS(x0)
	sw x17,PDC_DATA_ADDRESS(x0)
	sw x18,PDC_DATA_ADDRESS(x0)
	sw x19,PDC_DATA_ADDRESS(x0)

	sw x20,PDC_DATA_ADDRESS(x0)
	sw x21,PDC_DATA_ADDRESS(x0)
	sw x22,PDC_DATA_ADDRESS(x0)
	sw x23,PDC_DATA_ADDRESS(x0)
	sw x24,PDC_DATA_ADDRESS(x0)
	sw x25,PDC_DATA_ADDRESS(x0)
	sw x26,PDC_DATA_ADDRESS(x0)
	sw x27,PDC_DATA_ADDRESS(x0)
	sw x28,PDC_DATA_ADDRESS(x0)
	sw x29,PDC_DATA_ADDRESS(x0)

	sw x30,PDC_DATA_ADDRESS(x0)
	sw x31,PDC_DATA_ADDRESS(x0)


	lw x0,PDC_DATA_ADDRESS(x0)
	lw x1,PDC_DATA_ADDRESS(x0)
	lw x2,PDC_DATA_ADDRESS(x0)
	lw x3,PDC_DATA_ADDRESS(x0)
	lw x4,PDC_DATA_ADDRESS(x0)
	lw x5,PDC_DATA_ADDRESS(x0)
	lw x6,PDC_DATA_ADDRESS(x0)
	lw x7,PDC_DATA_ADDRESS(x0)
	lw x8,PDC_DATA_ADDRESS(x0)
	lw x9,PDC_DATA_ADDRESS(x0)

	lw x10,PDC_DATA_ADDRESS(x0)
	lw x11,PDC_DATA_ADDRESS(x0)
	lw x12,PDC_DATA_ADDRESS(x0)
	lw x13,PDC_DATA_ADDRESS(x0)
	lw x14,PDC_DATA_ADDRESS(x0)
	lw x15,PDC_DATA_ADDRESS(x0)
	lw x16,PDC_DATA_ADDRESS(x0)
	lw x17,PDC_DATA_ADDRESS(x0)
	lw x18,PDC_DATA_ADDRESS(x0)
	lw x19,PDC_DATA_ADDRESS(x0)

	lw x20,PDC_DATA_ADDRESS(x0)
	lw x21,PDC_DATA_ADDRESS(x0)
	lw x22,PDC_DATA_ADDRESS(x0)
	lw x23,PDC_DATA_ADDRESS(x0)
	lw x24,PDC_DATA_ADDRESS(x0)
	lw x25,PDC_DATA_ADDRESS(x0)
	lw x26,PDC_DATA_ADDRESS(x0)
	lw x27,PDC_DATA_ADDRESS(x0)
	lw x28,PDC_DATA_ADDRESS(x0)
	lw x29,PDC_DATA_ADDRESS(x0)

	lw x30,PDC_DATA_ADDRESS(x0)
	lw x31,PDC_DATA_ADDRESS(x0)

	swbrk

	jalr x3,x3,0

