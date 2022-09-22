%include "io64.inc"
global CMAIN

segment .data
	ARRAY: times 100 dd 0

segment .text



;---------------------------
;CMAIN
;---------------------------
;rbp-8      - SIZE
;---------------------------
CMAIN:
       	push rbp
	mov rbp, rsp
	sub rsp, 8
	
        mov qword[rbp-8], 0
        GET_DEC 4,[rbp-8]
        
	;INPUT(size) 
	push qword[rbp-8]   
	call INPUT          
	add rsp,8

	;SORT(size) 
	push qword[rbp-8]    
	call SORT           
	add  rsp,8    
	
	;PRINT(size)
	push qword[rbp-8]    
	call PRINT          
	add rsp,8          
	
	mov rsp,rbp
	pop rbp
	ret



;---------------------------
;PRINT
;---------------------------
;rbp+16     - SIZE
;rsi        - ARRAY
;---------------------------
INPUT:        
        push rbp
	mov rbp,rsp
	sub rsp,8

        mov esi,ARRAY

                mov rcx,0
                jmp INPUT_2
        INPUT_1:
                GET_DEC 4,eax
                mov [esi],eax
                add esi, 4
                inc rcx              
        INPUT_2:
        	cmp rcx,[rbp+16]
        	jl INPUT_1    
					
	mov rsp,rbp
	pop rbp
	ret



;---------------------------
;PRINT
;---------------------------
;rbp+16     - SIZE
;rsi        - ARRAY
;---------------------------
PRINT:
	push rbp
	mov rbp,rsp
	sub rsp,8
        
        mov esi,ARRAY
        
                mov rcx,0
                jmp PRINT_2
    	PRINT_1:  
        	PRINT_CHAR '['
		PRINT_DEC 4,rcx
		PRINT_STRING "] = "
		PRINT_DEC 4,[esi]
		NEWLINE
                add esi,4
                inc rcx           
        PRINT_2:
        	cmp rcx,[rbp+16]
        	jl PRINT_1

	mov rsp,rbp
	pop rbp
	ret        



;-------------------------------
;SORT
;-------------------------------
;rbp+16   - size
;r8       - i
;r9       - j
;rcx      - min_index
;--------------------------------
SORT:
	push rbp
	mov rbp,rsp
	sub rsp,8
                
        	mov r8,0
                jmp SORT_5
        SORT_1:
                mov rcx,r8
                
                mov r9,r8
                inc r9

                        jmp SORT_4
                SORT_2:
                        mov eax,[ARRAY+4*r9]
                        mov ebx,[ARRAY+4*rcx]    
                                            
                        cmp eax, ebx
                        jge SORT_3
                        mov rcx,r9                                               
                SORT_3:
                        inc r9
                SORT_4:
                        cmp r9,[rbp+16]
                        jl SORT_2
                
                mov eax,[ARRAY+4*r8]                      
                mov ebx,[ARRAY+4*rcx]
                
                xchg eax, ebx

                mov [ARRAY+4*r8], eax                      
                mov [ARRAY+4*rcx], ebx
                          
                inc r8
        SORT_5:   
                cmp r8,[rbp+16]
                jl SORT_1

        mov rsp,rbp
	pop rbp
	ret
