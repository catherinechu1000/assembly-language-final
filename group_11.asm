TITLE example (example.asm)

INCLUDE Irvine32.inc
print PROTO
cangoup proto
cangodown proto
cangoleft proto
cangoright proto

coolset	proto
cancoolgoup proto
cancoolgodown proto
cancoolgoleft proto
cancoolgoright proto
coolprint proto

levelset proto
check proto
move proto
COOR STRUCT 
	X sbyte 0
	Y sbyte 0
COOR ENDS


.data
man COOR <>
cool COOR<>
level1 byte "11111111111111111111", ;20*14
			"10000000000000000001", ;1是牆壁
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000400001",	;火95
			"10000000000000000001",
			"10000000000000000001",
			"10000040080000080001", ;火147
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"11111111111111111111"
			
level11 byte"11111111111111111111", ;20*14
			"10000000000000000001", ;1是牆壁
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000400001",	;火95
			"10000000000000000001",
			"10000000000000000001",
			"10000040080000080001", ;火147
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"11111111111111111111"
			
level2 byte "11111111111111111111", ;20*14
			"10000000000000000001", ;1是牆壁
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"10000000000004000001",
			"10000000000000000001",
			"10004080000800800001",
			"10000000000000000001",
			"10000000000000000001",
			"10000004000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"11111111111111111111"
			
level22 byte"11111111111111111111", ;20*14
			"10000000000000000001", ;1是牆壁
			"10000000000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"10000000000004000001",
			"10000000000000000001",
			"10004080000800800001",
			"10000000000000000001",
			"10000000000000000001",
			"10000004000000000001",
			"10000000000000000001",
			"10000000000000000001",
			"11111111111111111111"
			
level3 byte	"11111111111111111111", ;20*14
			"11111111111111111111", ;1是牆壁
			"11111111111111111111",
			"11111100000001111111",
			"11111108000001111111",
			"11111100800000011111",
			"11111100080400011111",
			"11111100040000011111",
			"11111100004800011111",
			"11111111000080011111",
			"11111111000008011111",
			"11111111111111111111",
			"11111111111111111111",
			"11111111111111111111"
			
level33 byte"11111111111111111111", ;20*14
			"11111111111111111111", ;1是牆壁
			"11111111111111111111",
			"11111100000001111111",
			"11111108000001111111",
			"11111100800000011111",
			"11111100080400011111",
			"11111100040000011111",
			"11111100004800011111",
			"11111111000080011111",
			"11111111000008011111",
			"11111111111111111111",
			"11111111111111111111",
			"11111111111111111111"
			
level4 byte "11111111111111111111", ;20*14
			"11111100000001111111", ;1是牆壁
			"11111100000001111111",
			"11110080000080011111",
			"11110008000800011111",
			"11110000000000011111",
			"11110000040000011111",
			"11110000000000011111",
			"11110008000800011111",
			"11110080000080011111",
			"11111100000001111111",
			"11111100000001111111",
			"11111111111111111111",
			"11111111111111111111"
			
level44 byte"11111111111111111111", ;20*14
			"11111100000001111111", ;1是牆壁
			"11111100000001111111",
			"11110080000080011111",
			"11110008000800011111",
			"11110000000000011111",
			"11110000040000011111",
			"11110000000000011111",
			"11110008000800011111",
			"11110080000080011111",
			"11111100000001111111",
			"11111100000001111111",
			"11111111111111111111",
			"11111111111111111111"
			
level5 byte	"11111111111111111111", ;20*14
			"11111100000001111111", ;1是牆壁
			"11111400000004111111",
			"11110000080000011111",
			"11110000000000011111",
			"11110000080000011111",
			"11110080808080011111",
			"11110000080000011111",
			"11110000000000011111",
			"11110000080000011111",
			"11111400000004111111",
			"11111100000001111111",
			"11111111111111111111",
			"11111111111111111111"
			
level55 byte"11111111111111111111", ;20*14
			"11111100000001111111", ;1是牆壁
			"11111400000004111111",
			"11110000080000011111",
			"11110000000000011111",
			"11110000080000011111",
			"11110080808080011111",
			"11110000080000011111",
			"11110000000000011111",
			"11110000080000011111",
			"11111400000004111111",
			"11111100000001111111",
			"11111111111111111111",
			"11111111111111111111"
dot byte "o"
dot1 byte "X"
dot2 byte "W"
dot3 byte "C"
dot4 byte "F"
finish BYTE   "Congratulations!! You finish this game." , 0
finish2 BYTE "|_|.|¯|.|¯|.|¯|.|_|",0
finish3 BYTE "|¯|.|¯|.|¯ .|¯ . | ",0



level word 1
backgroundx	byte 0
backgroundy byte 0
.code
main     EQU start@0

main proc
		mov man.X,6						;
		mov man.Y,3						;設定主人公的初始位址					
		invoke print
	
	
  exit
main endp

levelset proc							;設定一個變數 level 然後再check的時候過關時調整level的值，即可達到換關的功能
	L1:
	test level,01b
	jz L2
	mov esi,offset level1
	ret
	L2:
	test level,10b
	jz L3
	mov esi,offset level2
	ret
	L3:
	test level,4
	jz L4
	mov esi,offset level3
	ret
	L4:
	test level,8
	jz L5
	mov esi,offset level4
	ret
	L5:
	test level,16
	jz L6
	mov esi,offset level5
	L6:
	ret
levelset endp

print PROC uses esi eax ebx
	invoke check
	call clrscr	
	mov ecx, lengthof level1
	invoke levelset
	
	mov bl,20
	mov al,man.Y
	mul bl
	movsx bx,man.X
	add ax,bx
	movsx eax,ax
	;eax存x*y
	add esi,eax 
	mov byte ptr [esi],"2"
	
	invoke levelset								;print 之前 先看看有沒有換關
		
		l1:
		mov ax,cx
		add ax,-280
		neg ax
		mov bl,20
		div bl
		;餘數給x 商數給y
		mov backgroundx,ah
		mov backgroundy,al
		cmp ah,0
		jz	next
		jmp con
		next:
		call crlf
		con:
		mov eax,[esi]
		
		test 1,al		;0是路
		jz L2		
		mov dl,backgroundx 				;(以下是牆壁)
		mov dh,backgroundy
		mov  eax, white + ( black*16 )			
		call SetTextColor
		
		mov  al , dot2
		call Writechar	
		jmp L6
		
		L2:				;是冰的話or人
		test 2,al
		jz	L3			;是冰的話
		mov dl,backgroundx		;以下是人
		mov dh,backgroundy
		mov  eax, yellow + ( black*16 )			
		call SetTextColor
		
		mov  al , dot1
		call Writechar	
		jmp L6
		
		L3:				
		test 8,al
		jz L4
		mov dl,backgroundx				;以下是冰
		mov dh,backgroundy
		mov  eax, 11 + ( black*16 )			
		call SetTextColor
		
		mov  al , dot3
		call Writechar	
		jmp L6
		
		L4:
		test 4,al
		jz L5
		mov dl,backgroundx				;以下是火
		mov dh,backgroundy
		mov  eax, 12 + ( black*16 )			
		call SetTextColor
		
		mov  al , dot4
		call Writechar	
		jmp L6
		
		L5:
		mov dl,backgroundx				;以下是路
		mov dh,backgroundy
		mov  eax, 11 + ( 0deb887h*16 )			
		call SetTextColor
		
		mov  al , dot
		call Writechar	
		
		L6:
		inc esi
		dec cx
		jne l1
		invoke move
print endp

move proc uses eax ebx
		WaitInput:
		call readchar
		cmp  eax, 4800h						;上
		jz   UP
		cmp  eax, 5000h						;下
		jz   DOWN
		cmp  eax, 4B00h						;左
		jz   LEFT
		cmp  eax, 4D00h						;右
		jz   RIGHT
		cmp  eax, 1C0Dh						;enter	
		jz	 restart
		
	restart:
		
		L1:
		cmp level,01b
		jnz L2
		mov man.X,6
		mov man.Y,3
		mov ecx, lengthof level1
		mov edi,offset level1
		mov esi,offset level11
		L11:
		mov al,byte ptr [esi]
		mov byte ptr [edi],al
		inc edi
		inc esi
		loop L11
		
		jmp L6
		L2:
		cmp level,10b
		jnz L3
		mov man.X,6
		mov man.Y,3
		mov ecx, lengthof level2
		mov edi,offset level2
		mov esi,offset level22
		L22:
		mov al,byte ptr [esi]
		mov byte ptr [edi], al
		inc edi
		inc esi
		loop L22
		
		jmp L6
		L3:
		cmp level,4
		jnz L4
		mov man.X,10
		mov man.Y,7
		mov ecx, lengthof level3
		mov edi,offset level3
		mov esi,offset level33
		L33:
		mov al,byte ptr [esi]
		mov byte ptr [edi], al
		inc edi
		inc esi
		loop L33
		
		jmp L6
		L4:
		cmp level,8
		jnz L5
		mov man.X,5
		mov man.Y,5
		mov ecx, lengthof level4
		mov edi,offset level4
		mov esi,offset level44
		L44:
		mov al,byte ptr [esi]
		mov byte ptr [edi], al
		inc edi
		inc esi
		loop L44
		
		jmp L6
		L5:
		cmp level,16
		jnz L6
		mov man.X,9
		mov man.Y,6
		mov ecx, lengthof level5
		mov edi,offset level5
		mov esi,offset level55
		L55:
		mov al,byte ptr [esi]
		mov byte ptr [edi], al
		inc edi
		inc esi
		loop L55
		
		jmp L6
		L6:
		invoke print
		ret
		
		
	;上 -> Y座標+1 並判斷位置是否超出邊界
	UP:
		
		;先把原本的改回0
		invoke levelset
		mov bl,20
		mov al,man.Y
		mul bl
		movsx bx,man.X
		add ax,bx
		movsx eax,ax
		;eax存x*y
		add esi,eax 
		mov byte ptr [esi],"0"
		invoke cangoup
		cmp eax,0
		jz pup			;不能走
		
		
		;mov  bh, man.X
		;mov  bl, man.Y
		;add  bl, -1
		;mov  man.X, bh
		;mov  man.Y, bl
		pup:
		INVOKE print
		jmp  WaitInput
	
	;下 -> Y座標-1 並判斷位置是否超出邊界
	DOWN:
		invoke levelset
		mov bl,20
		mov al,man.Y
		mul bl
		movsx bx,man.X
		add ax,bx
		movsx eax,ax
		;eax存x*y
		add esi,eax 
		mov byte ptr [esi],"0"
		invoke cangodown
		cmp eax,0
		jz pdown
		pdown:
		INVOKE print
		jmp  WaitInput
	
	;左 -> X座標-1 並判斷位置是否超出邊界
	LEFT:
		invoke levelset
		mov bl,20
		mov al,man.Y
		mul bl
		movsx bx,man.X
		add ax,bx
		movsx eax,ax
		;eax存x*y
		add esi,eax 
		mov byte ptr [esi],"0"
		invoke cangoleft					
		cmp eax,0
		jz pleft
		pleft:
		INVOKE print
		jmp  WaitInput
	
	;右 -> X座標+1 並判斷位置是否超出邊界
	RIGHT:
		invoke levelset
		mov bl,20
		mov al,man.Y
		mul bl
		movsx bx,man.X
		add ax,bx
		movsx eax,ax
		;eax存x*y
		add esi,eax 
		mov byte ptr [esi],"0"
		invoke cangoright
		cmp eax,0
		jz pright
		pright:
		INVOKE print
		jmp  WaitInput
	
	
	
		ret
move endp

cangoup proc
	mov  bh, man.X
	mov  bl, man.Y
	add  bl, -1
	mov  man.X, bh
	mov  man.Y, bl
	invoke levelset
	mov bl,20
	mov al,man.Y
	mul bl
	movsx bx,man.X
	add ax,bx
	movsx eax,ax
	;eax存x*y
	add esi,eax 
	cmp byte ptr [esi],"1"
	jz no1
	cmp byte ptr [esi],"4"
	jz no1
	cmp byte ptr [esi],"8"
	jz ice
	jmp yes1
	no1:
	mov  bh, man.X
	mov  bl, man.Y
	add  bl, 1
	mov  man.X, bh
	mov  man.Y, bl
	mov eax,0
	jmp endd1
	ice:
	invoke coolset							;撞到的是冰，就先把冰弄成有座標性，比較好操作
	invoke cancoolgoup						;判斷冰可不可以走
	mov  bh, man.X
	mov  bl, man.Y
	add  bl, 1
	mov  man.X, bh
	mov  man.Y, bl
	mov eax,0
	jmp endd1
	yes1:
	mov eax,1
	endd1:
	ret
	
	
cangoup endp
	
cangodown proc
	mov  bh, man.X
	mov  bl, man.Y
	add  bl, 1
	mov  man.X, bh
	mov  man.Y, bl
	invoke levelset
	mov bl,20
	mov al,man.Y
	mul bl
	movsx bx,man.X
	add ax,bx
	movsx eax,ax
	;eax存x*y
	add esi,eax 
	cmp byte ptr [esi],"1"
	jz no2
	cmp byte ptr [esi],"4"
	jz no2
	cmp byte ptr [esi],"8"
	jz ice
	jmp yes2
	no2:
	mov  bh, man.X
	mov  bl, man.Y
	add  bl, -1
	mov  man.X, bh
	mov  man.Y, bl
	mov eax,0
	jmp endd2
	ice:
	invoke coolset
	invoke cancoolgodown
	mov  bh, man.X
	mov  bl, man.Y
	add  bl, -1
	mov  man.X, bh
	mov  man.Y, bl
	mov eax,0
	jmp endd2
	yes2:
	mov eax,1
	endd2:
	ret
cangodown endp
	
cangoright proc
	mov  bh, man.X
	mov  bl, man.Y
	add  bh, 1
	mov  man.X, bh
	mov  man.Y, bl
	invoke levelset
	mov bl,20
	mov al,man.Y
	mul bl
	movsx bx,man.X
	add ax,bx
	movsx eax,ax
	;eax存x*y
	add esi,eax 
	cmp byte ptr [esi],"1"
	jz no3
	cmp byte ptr [esi],"4"
	jz no3
	cmp byte ptr [esi],"8"
	jz ice
	jmp yes3
	no3:
	mov  bh, man.X
	mov  bl, man.Y
	add  bh, -1
	mov  man.X, bh
	mov  man.Y, bl
	mov eax,0
	jmp endd3
	ice:
	invoke coolset
	invoke cancoolgoright
	mov  bh, man.X
	mov  bl, man.Y
	add  bh, -1
	mov  man.X, bh
	mov  man.Y, bl
	mov eax,0
	jmp endd3
	yes3:
	mov eax,1
	endd3:
	ret
cangoright endp

cangoleft proc
	mov  bh, man.X
	mov  bl, man.Y
	add  bh, -1
	mov  man.X, bh
	mov  man.Y, bl
	invoke levelset
	mov bl,20
	mov al,man.Y
	mul bl
	movsx bx,man.X
	add ax,bx
	movsx eax,ax
	;eax存x*y
	add esi,eax 
	cmp byte ptr [esi],"1"
	jz no4
	cmp byte ptr [esi],"4"
	jz no4
	cmp byte ptr [esi],"8"
	jz ice
	jmp yes4
	no4:
	mov  bh, man.X
	mov  bl, man.Y
	add  bh, 1
	mov  man.X, bh
	mov  man.Y, bl
	mov eax,0
	jmp endd4
	ice:
	invoke coolset
	invoke cancoolgoleft
	mov  bh, man.X
	mov  bl, man.Y
	add  bh, 1
	mov  man.X, bh
	mov  man.Y, bl
	mov eax,0
	jmp endd4
	yes4:
	mov eax,1
	endd4:
	ret
cangoleft endp

coolset proc									;給冰座標性
	mov  bh, man.X
	mov  bl, man.Y
	mov cool.X, bh
	mov cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	mov byte ptr [esi],"0"	
	ret
coolset endp

cancoolgoup proc								;跟判斷人走得很像
	mov  bh, cool.X
	mov  bl, cool.Y
	add  bl, -1
	mov  cool.X, bh
	mov  cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	cmp byte ptr [esi],"1"						;不能撞牆
	jz no
	cmp byte ptr [esi],"8"						;撞到冰停下來
	jz no
	cmp byte ptr [esi],"4"
	jz fire	
	jmp yes
	no:
	mov  bh, cool.X
	mov  bl, cool.Y
	add  bl, 1
	mov  cool.X, bh
	mov  cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	mov byte ptr [esi],"8"	
	mov eax,0
	jmp endd
	fire:
	mov byte ptr [esi],"0"						;撞到火就一起消失
	jmp print
	yes:
	invoke cancoolgoup							;重複invoke，達到會滑到底的效果
	invoke coolprint
	endd:
	ret
cancoolgoup endp

cancoolgodown proc
	mov  bh, cool.X
	mov  bl, cool.Y
	add  bl, 1
	mov  cool.X, bh
	mov  cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	cmp byte ptr [esi],"1"
	jz no
	cmp byte ptr [esi],"8"
	jz no
	cmp byte ptr [esi],"4"
	jz fire
	jmp yes
	no:
	mov  bh, cool.X
	mov  bl, cool.Y
	add  bl, -1
	mov  cool.X, bh
	mov  cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	mov byte ptr [esi],"8"	
	mov eax,0
	jmp endd
	fire:
	mov byte ptr [esi],"0"	
	jmp print
	yes:
	invoke cancoolgodown
	invoke coolprint
	endd:
	ret
cancoolgodown endp

cancoolgoleft proc
	mov  bh, cool.X
	mov  bl, cool.Y
	add  bh, -1
	mov  cool.X, bh
	mov  cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	cmp byte ptr [esi],"1"
	jz no
	cmp byte ptr [esi],"8"
	jz no
	cmp byte ptr [esi],"4"
	jz fire
	jmp yes
	no:
	mov  bh, cool.X
	mov  bl, cool.Y
	add  bh, 1
	mov  cool.X, bh
	mov  cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	mov byte ptr [esi],"8"	
	mov eax,0
	jmp endd
	fire:
	mov byte ptr [esi],"0"	
	jmp print
	yes:
	invoke cancoolgoleft
	invoke coolprint
	endd:
	ret
cancoolgoleft endp

cancoolgoright proc
	mov  bh, cool.X
	mov  bl, cool.Y
	add  bh, 1
	mov  cool.X, bh
	mov  cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	cmp byte ptr [esi],"1"
	jz no
	cmp byte ptr [esi],"8"
	jz no
	cmp byte ptr [esi],"4"
	jz fire
	jmp yes
	no:
	mov  bh, cool.X
	mov  bl, cool.Y
	add  bh, -1
	mov  cool.X, bh
	mov  cool.Y, bl
	invoke levelset
	mov bl,20
	mov al,cool.Y
	mul bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax
	add esi,eax
	mov byte ptr [esi],"8"	
	mov eax,0
	jmp endd
	fire:
	mov byte ptr [esi],"0"	
	jmp print
	yes:
	invoke cancoolgoright
	invoke coolprint
	endd:
	ret
cancoolgoright endp

coolprint proc
	mov  bh, cool.X
	mov  bl, cool.Y
	invoke levelset
	mov  bl,20
	mov  al,cool.Y
	mul  bl
	movsx bx,cool.X
	add ax,bx
	movsx eax,ax	
	add esi,eax 
	mov byte ptr [esi],"8"	
	ret
coolprint endp

check proc										
	L1:
		test level,01b
		jz L2
		mov ecx, lengthof level1
		mov edi, offset level1
		la:										;會一直重複check地圖，只要沒有4(fire)就會到lb
			cmp byte ptr [edi], "4"
			jz lc
			inc edi
		loop la									
		lb:										;設定下一關的主角在哪，以及將level設成下一關的數值
			mov level,2
			mov man.X,6
			mov man.Y,3
			invoke levelset
			ret
		lc:
		ret
		
	L2:
		test level,10b
		jz L3
		mov ecx, lengthof level2
		mov edi, offset level2
		ld:
			cmp byte ptr [edi], "4"
			jz lQ
			inc edi
		loop ld
		lW:
			mov level,4
			mov man.X,10
			mov man.Y,7
			invoke levelset
			ret
		lQ:
		ret
		
	L3:
		test level,4
		jz L4
		mov ecx, lengthof level3
		mov edi, offset level3
		lf:
			cmp byte ptr [edi], "4"
			jz lh
			inc edi
		loop lf
		lg:
			mov level,8
			mov man.X,5
			mov man.Y,5
			invoke levelset
			ret
		lh:
		ret
	L4:
		test level,8
		jz L5
		mov ecx, lengthof level4
		mov edi, offset level4
		li:
			cmp byte ptr [edi], "4"
			jz lk
			inc edi
		loop li
		lj:
			mov level,16
			mov man.X,9
			mov man.Y,6
			invoke levelset
			ret
		lk:
		ret
	L5:
		test level,16
		jz L6
		mov ecx, lengthof level5
		mov edi, offset level5
		lL:
			cmp byte ptr [edi], "4"
			jz lN
			inc edi
		loop lL
		lM:
			call clrscr	
			mov  edx , OFFSET finish
			call WriteString
			call crlf
			mov  edx , OFFSET finish2
			call WriteString
			call crlf
			mov  edx , OFFSET finish3
			call WriteString
			call WaitMsg
			call crlf
			call crlf
			exit
		lN:
		ret
	l6:
		ret
check endp


end main