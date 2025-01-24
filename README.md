# Assembly - Potential Access Violation in MOV Instruction

This repository demonstrates a potential access violation bug in an assembly instruction and its solution. The bug arises from the `mov eax, [ebx+ecx*4]` instruction, where improper handling of `ebx` and `ecx` values can lead to out-of-bounds memory access.  The solution involves adding bounds checking to prevent this.