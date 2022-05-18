section .data
    msgInicio: db "Informe o valor de inicio do intervalo: ", 0
    msgInicioT: equ $-msgInicio
    msgFim: db "Informe o valor do fim do intervalo: ", 0
    msgFimT: equ $-msgFim
    entrada: db "%d", 0
    saida: db "%d", 10, 0 
    inicio: times 4 db 0 
    fim: times 4 db 0

section .text
   global main
   extern scanf
   extern printf
main:
   push rbx           

   mov eax, 4
   mov ebx, 1
   mov ecx, msgInicio
   mov edx, msgInicioT
   int 80h

   mov rdi, entrada
   mov rsi, inicio
   mov al, 0
   call scanf

   mov eax, 4
   mov ebx, 1
   mov ecx, msgFim
   mov edx, msgFimT
   int 80h

   mov rdi, entrada
   mov rsi, fim
   mov al, 0
   call scanf

   mov eax, [inicio]
   mov ebx, [fim] 

   cmp eax, ebx
   jle end_swap
   mov [inicio], ebx
   mov [fim], eax
   end_swap:

   mov ebx, [inicio]
   loop:
      inc ebx
      cmp ebx, [fim]
      jge end_loop
      mov rdi, saida   
      mov esi, ebx
      xor eax, eax   
      call printf
      jmp loop
   end_loop:

   pop rbx            
   mov rax, 0

   mov eax, 1
   mov ebx, 0
   int 80h
