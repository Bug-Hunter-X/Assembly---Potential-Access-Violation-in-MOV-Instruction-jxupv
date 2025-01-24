mov ecx, userInput ; Assume userInput is a potentially large value
mov edx, memorySize ; Assume memorySize is the allocated memory size

;Check for bounds before accessing memory
cmp ecx, edx
je outOfBounds
jl safeAccess
jmp outOfBounds
safeAccess:
mov eax, [ebx+ecx*4]
jmp end
outOfBounds:
;Handle out of bounds error: Display an error message, or exit gracefully
end: