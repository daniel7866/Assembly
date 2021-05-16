.globl my_write
.type my_write, @function


.section .data
	str: .ascii "this is my string\n"
	len: .quad . - str

.section .text
my_write:

	mov $0x4, %eax		# use the write syscall
	mov $0x1, %ebx		# write to standard output
	mov 4(%esp), %ecx	# first function parameter	- the string
	mov 8(%esp), %edx	# second function parameter	- length of string
	int $0x80      		# trap
	ret
