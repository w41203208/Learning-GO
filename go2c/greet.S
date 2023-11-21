TEXT testc2go/greet._Cfunc_CString(SB) _cgo_gotypes.go
  _cgo_gotypes.go:48	0x48d700		493b6610		CMPQ 0x10(R14), SP				
  _cgo_gotypes.go:48	0x48d704		0f86a6000000		JBE 0x48d7b0					
  _cgo_gotypes.go:48	0x48d70a		4883ec28		SUBQ $__major_os_version__+34(SB), SP		
  _cgo_gotypes.go:48	0x48d70e		48896c2420		MOVQ BP, 0x20(SP)				
  _cgo_gotypes.go:48	0x48d713		488d6c2420		LEAQ 0x20(SP), BP				
  _cgo_gotypes.go:49	0x48d718		48895c2438		MOVQ BX, 0x38(SP)				
  _cgo_gotypes.go:51	0x48d71d		4889442430		MOVQ AX, 0x30(SP)				
  _cgo_gotypes.go:49	0x48d722		488d4b01		LEAQ 0x1(BX), CX				
  _cgo_gotypes.go:49	0x48d726		48890c24		MOVQ CX, 0(SP)					
  _cgo_gotypes.go:49	0x48d72a		e8f1010000		CALL testc2go/greet._cgo_cmalloc.abi0(SB)	
  _cgo_gotypes.go:49	0x48d72f		450f57ff		XORPS X15, X15					
  _cgo_gotypes.go:49	0x48d733		654c8b342528000000	MOVQ GS:0x28, R14				
  _cgo_gotypes.go:49	0x48d73c		4d8bb600000000		MOVQ 0(R14), R14				
  _cgo_gotypes.go:49	0x48d743		488b442408		MOVQ 0x8(SP), AX				
  _cgo_gotypes.go:51	0x48d748		8400			TESTB AL, 0(AX)					
  _cgo_gotypes.go:51	0x48d74a		488b4c2438		MOVQ 0x38(SP), CX				
  _cgo_gotypes.go:51	0x48d74f		4881f900000040		CMPQ $0x40000000, CX				
  _cgo_gotypes.go:51	0x48d756		ba00000040		MOVL $0x40000000, DX				
  _cgo_gotypes.go:51	0x48d75b		480f4cd1		CMOVL CX, DX					
  _cgo_gotypes.go:51	0x48d75f		488b5c2430		MOVQ 0x30(SP), BX				
  _cgo_gotypes.go:51	0x48d764		4839c3			CMPQ AX, BX					
  _cgo_gotypes.go:51	0x48d767		7509			JNE 0x48d772					
  _cgo_gotypes.go:51	0x48d769		4881f900000040		CMPQ $0x40000000, CX				
  _cgo_gotypes.go:51	0x48d770		eb20			JMP 0x48d792					
  _cgo_gotypes.go:49	0x48d772		4889442418		MOVQ AX, 0x18(SP)				
  _cgo_gotypes.go:51	0x48d777		4889d1			MOVQ DX, CX					
  _cgo_gotypes.go:51	0x48d77a		e82111fdff		CALL runtime.memmove(SB)			
  _cgo_gotypes.go:51	0x48d77f		488b442438		MOVQ 0x38(SP), AX				
  _cgo_gotypes.go:51	0x48d784		483d00000040		CMPQ $0x40000000, AX				
  _cgo_gotypes.go:52	0x48d78a		4889c1			MOVQ AX, CX					
  _cgo_gotypes.go:52	0x48d78d		488b442418		MOVQ 0x18(SP), AX				
  _cgo_gotypes.go:52	0x48d792		730e			JAE 0x48d7a2					
  _cgo_gotypes.go:52	0x48d794		c6040800		MOVB $0x0, 0(AX)(CX*1)				
  _cgo_gotypes.go:53	0x48d798		488b6c2420		MOVQ 0x20(SP), BP				
  _cgo_gotypes.go:53	0x48d79d		4883c428		ADDQ $__major_os_version__+34(SB), SP		
  _cgo_gotypes.go:53	0x48d7a1		c3			RET						
  _cgo_gotypes.go:52	0x48d7a2		4889c8			MOVQ CX, AX					
  _cgo_gotypes.go:52	0x48d7a5		b900000040		MOVL $0x40000000, CX				
  _cgo_gotypes.go:52	0x48d7aa		e8b107fdff		CALL runtime.panicIndex(SB)			
  _cgo_gotypes.go:52	0x48d7af		90			NOPL						
  _cgo_gotypes.go:48	0x48d7b0		4889442408		MOVQ AX, 0x8(SP)				
  _cgo_gotypes.go:48	0x48d7b5		48895c2410		MOVQ BX, 0x10(SP)				
  _cgo_gotypes.go:48	0x48d7ba		e881e0fcff		CALL runtime.morestack_noctxt.abi0(SB)		
  _cgo_gotypes.go:48	0x48d7bf		488b442408		MOVQ 0x8(SP), AX				
  _cgo_gotypes.go:48	0x48d7c4		488b5c2410		MOVQ 0x10(SP), BX				
  _cgo_gotypes.go:48	0x48d7c9		e932ffffff		JMP testc2go/greet._Cfunc_CString(SB)		
  :-1			0x48d7ce		cc			INT $__subsystem__(SB)				
  :-1			0x48d7cf		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d0		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d1		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d2		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d3		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d4		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d5		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d6		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d7		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d8		cc			INT $__subsystem__(SB)				
  :-1			0x48d7d9		cc			INT $__subsystem__(SB)				
  :-1			0x48d7da		cc			INT $__subsystem__(SB)				
  :-1			0x48d7db		cc			INT $__subsystem__(SB)				
  :-1			0x48d7dc		cc			INT $__subsystem__(SB)				
  :-1			0x48d7dd		cc			INT $__subsystem__(SB)				
  :-1			0x48d7de		cc			INT $__subsystem__(SB)				
  :-1			0x48d7df		cc			INT $__subsystem__(SB)				

TEXT testc2go/greet._Cfunc_GreetInit.abi0(SB) _cgo_gotypes.go
  _cgo_gotypes.go:68	0x48d7e0		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:68	0x48d7e9		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:68	0x48d7f0		493b6610		CMPQ 0x10(R14), SP						
  _cgo_gotypes.go:68	0x48d7f4		767b			JBE 0x48d871							
  _cgo_gotypes.go:68	0x48d7f6		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  _cgo_gotypes.go:68	0x48d7fa		48896c2418		MOVQ BP, 0x18(SP)						
  _cgo_gotypes.go:68	0x48d7ff		488d6c2418		LEAQ 0x18(SP), BP						
  _cgo_gotypes.go:68	0x48d804		48c744243000000000	MOVQ $0x0, 0x30(SP)						
  _cgo_gotypes.go:69	0x48d80d		488d5c2428		LEAQ 0x28(SP), BX						
  _cgo_gotypes.go:69	0x48d812		48895c2410		MOVQ BX, 0x10(SP)						
  _cgo_gotypes.go:69	0x48d817		488b05fa2f0100		MOVQ testc2go/greet._cgo_6f5d18161156_Cfunc_GreetInit(SB), AX	
  _cgo_gotypes.go:69	0x48d81e		450f57ff		XORPS X15, X15							
  _cgo_gotypes.go:69	0x48d822		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:69	0x48d82b		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:69	0x48d832		e8495ff7ff		CALL runtime.cgocall(SB)					
  _cgo_gotypes.go:70	0x48d837		803d2701110000		CMPB $0x0, runtime.cgoAlwaysFalse(SB)				
  _cgo_gotypes.go:70	0x48d83e		6690			NOPW								
  _cgo_gotypes.go:70	0x48d840		7425			JE 0x48d867							
  _cgo_gotypes.go:71	0x48d842		488b5c2428		MOVQ 0x28(SP), BX						
  _cgo_gotypes.go:71	0x48d847		488d0512080200		LEAQ runtime.rodata+24672(SB), AX				
  _cgo_gotypes.go:71	0x48d84e		450f57ff		XORPS X15, X15							
  _cgo_gotypes.go:71	0x48d852		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:71	0x48d85b		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:71	0x48d862		e8d95ef7ff		CALL runtime.cgoUse(SB)						
  _cgo_gotypes.go:73	0x48d867		488b6c2418		MOVQ 0x18(SP), BP						
  _cgo_gotypes.go:73	0x48d86c		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  _cgo_gotypes.go:73	0x48d870		c3			RET								
  _cgo_gotypes.go:68	0x48d871		e8cadffcff		CALL runtime.morestack_noctxt.abi0(SB)				
  _cgo_gotypes.go:68	0x48d876		e965ffffff		JMP testc2go/greet._Cfunc_GreetInit.abi0(SB)			
  :-1			0x48d87b		cc			INT $__subsystem__(SB)						
  :-1			0x48d87c		cc			INT $__subsystem__(SB)						
  :-1			0x48d87d		cc			INT $__subsystem__(SB)						
  :-1			0x48d87e		cc			INT $__subsystem__(SB)						
  :-1			0x48d87f		cc			INT $__subsystem__(SB)						

TEXT testc2go/greet._Cfunc_GreetString.abi0(SB) _cgo_gotypes.go
  _cgo_gotypes.go:81	0x48d880		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:81	0x48d889		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:81	0x48d890		493b6610		CMPQ 0x10(R14), SP						
  _cgo_gotypes.go:81	0x48d894		767b			JBE 0x48d911							
  _cgo_gotypes.go:81	0x48d896		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  _cgo_gotypes.go:81	0x48d89a		48896c2418		MOVQ BP, 0x18(SP)						
  _cgo_gotypes.go:81	0x48d89f		488d6c2418		LEAQ 0x18(SP), BP						
  _cgo_gotypes.go:81	0x48d8a4		48c744243000000000	MOVQ $0x0, 0x30(SP)						
  _cgo_gotypes.go:82	0x48d8ad		488d5c2428		LEAQ 0x28(SP), BX						
  _cgo_gotypes.go:82	0x48d8b2		48895c2410		MOVQ BX, 0x10(SP)						
  _cgo_gotypes.go:82	0x48d8b7		488b05622f0100		MOVQ testc2go/greet._cgo_6f5d18161156_Cfunc_GreetString(SB), AX	
  _cgo_gotypes.go:82	0x48d8be		450f57ff		XORPS X15, X15							
  _cgo_gotypes.go:82	0x48d8c2		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:82	0x48d8cb		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:82	0x48d8d2		e8a95ef7ff		CALL runtime.cgocall(SB)					
  _cgo_gotypes.go:83	0x48d8d7		803d8700110000		CMPB $0x0, runtime.cgoAlwaysFalse(SB)				
  _cgo_gotypes.go:83	0x48d8de		6690			NOPW								
  _cgo_gotypes.go:83	0x48d8e0		7425			JE 0x48d907							
  _cgo_gotypes.go:84	0x48d8e2		488b5c2428		MOVQ 0x28(SP), BX						
  _cgo_gotypes.go:84	0x48d8e7		488d05b2070200		LEAQ runtime.rodata+24736(SB), AX				
  _cgo_gotypes.go:84	0x48d8ee		450f57ff		XORPS X15, X15							
  _cgo_gotypes.go:84	0x48d8f2		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:84	0x48d8fb		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:84	0x48d902		e8395ef7ff		CALL runtime.cgoUse(SB)						
  _cgo_gotypes.go:86	0x48d907		488b6c2418		MOVQ 0x18(SP), BP						
  _cgo_gotypes.go:86	0x48d90c		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  _cgo_gotypes.go:86	0x48d910		c3			RET								
  _cgo_gotypes.go:81	0x48d911		e82adffcff		CALL runtime.morestack_noctxt.abi0(SB)				
  _cgo_gotypes.go:81	0x48d916		e965ffffff		JMP testc2go/greet._Cfunc_GreetString.abi0(SB)			
  :-1			0x48d91b		cc			INT $__subsystem__(SB)						
  :-1			0x48d91c		cc			INT $__subsystem__(SB)						
  :-1			0x48d91d		cc			INT $__subsystem__(SB)						
  :-1			0x48d91e		cc			INT $__subsystem__(SB)						
  :-1			0x48d91f		cc			INT $__subsystem__(SB)						

TEXT testc2go/greet._cgo_cmalloc.abi0(SB) _cgo_gotypes.go
  _cgo_gotypes.go:98	0x48d920		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:98	0x48d929		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:98	0x48d930		493b6610		CMPQ 0x10(R14), SP						
  _cgo_gotypes.go:98	0x48d934		7679			JBE 0x48d9af							
  _cgo_gotypes.go:98	0x48d936		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  _cgo_gotypes.go:98	0x48d93a		48896c2418		MOVQ BP, 0x18(SP)						
  _cgo_gotypes.go:98	0x48d93f		488d6c2418		LEAQ 0x18(SP), BP						
  _cgo_gotypes.go:98	0x48d944		48c744243000000000	MOVQ $0x0, 0x30(SP)						
  _cgo_gotypes.go:99	0x48d94d		488d5c2428		LEAQ 0x28(SP), BX						
  _cgo_gotypes.go:99	0x48d952		48895c2410		MOVQ BX, 0x10(SP)						
  _cgo_gotypes.go:99	0x48d957		488b05ca2e0100		MOVQ testc2go/greet._cgo_6f5d18161156_Cfunc__Cmalloc(SB), AX	
  _cgo_gotypes.go:99	0x48d95e		450f57ff		XORPS X15, X15							
  _cgo_gotypes.go:99	0x48d962		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:99	0x48d96b		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:99	0x48d972		e8095ef7ff		CALL runtime.cgocall(SB)					
  _cgo_gotypes.go:100	0x48d977		48837c243000		CMPQ $0x0, 0x30(SP)						
  _cgo_gotypes.go:100	0x48d97d		7526			JNE 0x48d9a5							
  _cgo_gotypes.go:101	0x48d97f		488d05f4710300		LEAQ go.string.*+18522(SB), AX					
  _cgo_gotypes.go:101	0x48d986		bb18000000		MOVL $__major_os_version__+18(SB), BX				
  _cgo_gotypes.go:101	0x48d98b		450f57ff		XORPS X15, X15							
  _cgo_gotypes.go:101	0x48d98f		654c8b342528000000	MOVQ GS:0x28, R14						
  _cgo_gotypes.go:101	0x48d998		4d8bb600000000		MOVQ 0(R14), R14						
  _cgo_gotypes.go:101	0x48d99f		90			NOPL								
  _cgo_gotypes.go:101	0x48d9a0		e83b67faff		CALL runtime.throw(SB)						
  _cgo_gotypes.go:103	0x48d9a5		488b6c2418		MOVQ 0x18(SP), BP						
  _cgo_gotypes.go:103	0x48d9aa		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  _cgo_gotypes.go:103	0x48d9ae		c3			RET								
  _cgo_gotypes.go:98	0x48d9af		e88cdefcff		CALL runtime.morestack_noctxt.abi0(SB)				
  _cgo_gotypes.go:98	0x48d9b4		e967ffffff		JMP testc2go/greet._cgo_cmalloc.abi0(SB)			
  :-1			0x48d9b9		cc			INT $__subsystem__(SB)						
  :-1			0x48d9ba		cc			INT $__subsystem__(SB)						
  :-1			0x48d9bb		cc			INT $__subsystem__(SB)						
  :-1			0x48d9bc		cc			INT $__subsystem__(SB)						
  :-1			0x48d9bd		cc			INT $__subsystem__(SB)						
  :-1			0x48d9be		cc			INT $__subsystem__(SB)						
  :-1			0x48d9bf		cc			INT $__subsystem__(SB)						

TEXT testc2go/greet.NewGreet(SB) D:/Ming Program/GO/go2c/greet/greet.go
  greet.go:15		0x48d9c0		493b6610		CMPQ 0x10(R14), SP				
  greet.go:15		0x48d9c4		0f8688000000		JBE 0x48da52					
  greet.go:15		0x48d9ca		4883ec20		SUBQ $__major_os_version__+26(SB), SP		
  greet.go:15		0x48d9ce		48896c2418		MOVQ BP, 0x18(SP)				
  greet.go:15		0x48d9d3		488d6c2418		LEAQ 0x18(SP), BP				
  greet.go:17		0x48d9d8		48895c2430		MOVQ BX, 0x30(SP)				
  greet.go:17		0x48d9dd		4889442428		MOVQ AX, 0x28(SP)				
  greet.go:16		0x48d9e2		488d0537710200		LEAQ runtime.rodata+52000(SB), AX		
  greet.go:16		0x48d9e9		e812f7f7ff		CALL runtime.newobject(SB)			
  greet.go:16		0x48d9ee		4889442410		MOVQ AX, 0x10(SP)				
  greet.go:17		0x48d9f3		488b5c2430		MOVQ 0x30(SP), BX				
  greet.go:17		0x48d9f8		488b442428		MOVQ 0x28(SP), AX				
  greet.go:17		0x48d9fd		0f1f00			NOPL 0(AX)					
  greet.go:17		0x48da00		e8fbfcffff		CALL testc2go/greet._Cfunc_CString(SB)		
  greet.go:17		0x48da05		48890424		MOVQ AX, 0(SP)					
  greet.go:17		0x48da09		e8d2fdffff		CALL testc2go/greet._Cfunc_GreetInit.abi0(SB)	
  greet.go:17		0x48da0e		450f57ff		XORPS X15, X15					
  greet.go:17		0x48da12		654c8b342528000000	MOVQ GS:0x28, R14				
  greet.go:17		0x48da1b		4d8bb600000000		MOVQ 0(R14), R14				
  greet.go:17		0x48da22		488b4c2408		MOVQ 0x8(SP), CX				
  greet.go:17		0x48da27		833da201110000		CMPL $0x0, runtime.writeBarrier(SB)		
  greet.go:17		0x48da2e		750a			JNE 0x48da3a					
  greet.go:17		0x48da30		488b442410		MOVQ 0x10(SP), AX				
  greet.go:17		0x48da35		488908			MOVQ CX, 0(AX)					
  greet.go:17		0x48da38		eb0e			JMP 0x48da48					
  greet.go:17		0x48da3a		488b7c2410		MOVQ 0x10(SP), DI				
  greet.go:17		0x48da3f		90			NOPL						
  greet.go:17		0x48da40		e87b01fdff		CALL runtime.gcWriteBarrierCX(SB)		
  greet.go:18		0x48da45		4889f8			MOVQ DI, AX					
  greet.go:18		0x48da48		488b6c2418		MOVQ 0x18(SP), BP				
  greet.go:18		0x48da4d		4883c420		ADDQ $__major_os_version__+26(SB), SP		
  greet.go:18		0x48da51		c3			RET						
  greet.go:15		0x48da52		4889442408		MOVQ AX, 0x8(SP)				
  greet.go:15		0x48da57		48895c2410		MOVQ BX, 0x10(SP)				
  greet.go:15		0x48da5c		0f1f4000		NOPL 0(AX)					
  greet.go:15		0x48da60		e8dbddfcff		CALL runtime.morestack_noctxt.abi0(SB)		
  greet.go:15		0x48da65		488b442408		MOVQ 0x8(SP), AX				
  greet.go:15		0x48da6a		488b5c2410		MOVQ 0x10(SP), BX				
  greet.go:15		0x48da6f		e94cffffff		JMP testc2go/greet.NewGreet(SB)			
  :-1			0x48da74		cc			INT $__subsystem__(SB)				
  :-1			0x48da75		cc			INT $__subsystem__(SB)				
  :-1			0x48da76		cc			INT $__subsystem__(SB)				
  :-1			0x48da77		cc			INT $__subsystem__(SB)				
  :-1			0x48da78		cc			INT $__subsystem__(SB)				
  :-1			0x48da79		cc			INT $__subsystem__(SB)				
  :-1			0x48da7a		cc			INT $__subsystem__(SB)				
  :-1			0x48da7b		cc			INT $__subsystem__(SB)				
  :-1			0x48da7c		cc			INT $__subsystem__(SB)				
  :-1			0x48da7d		cc			INT $__subsystem__(SB)				
  :-1			0x48da7e		cc			INT $__subsystem__(SB)				
  :-1			0x48da7f		cc			INT $__subsystem__(SB)				

TEXT testc2go/greet.(*Greet).SayGreet(SB) D:/Ming Program/GO/go2c/greet/greet.go
  greet.go:21		0x48da80		493b6610		CMPQ 0x10(R14), SP				
  greet.go:21		0x48da84		7660			JBE 0x48dae6					
  greet.go:21		0x48da86		4883ec40		SUBQ $__major_os_version__+58(SB), SP		
  greet.go:21		0x48da8a		48896c2438		MOVQ BP, 0x38(SP)				
  greet.go:21		0x48da8f		488d6c2438		LEAQ 0x38(SP), BP				
  greet.go:22		0x48da94		e867000000		CALL testc2go/greet.(*Greet).SayGreet.func1(SB)	
  _cgo_gotypes.go:60	0x48da99		e862bffcff		CALL runtime.gostring(SB)			
  _cgo_gotypes.go:60	0x48da9e		6690			NOPW						
  greet.go:22		0x48daa0		e83bcff7ff		CALL runtime.convTstring(SB)			
  greet.go:22		0x48daa5		440f117c2428		MOVUPS X15, 0x28(SP)				
  greet.go:22		0x48daab		488d0d6e210200		LEAQ runtime.rodata+31776(SB), CX		
  greet.go:22		0x48dab2		48894c2428		MOVQ CX, 0x28(SP)				
  greet.go:22		0x48dab7		4889442430		MOVQ AX, 0x30(SP)				
  print.go:274		0x48dabc		488b1d05b70b00		MOVQ os.Stdout(SB), BX				
  print.go:274		0x48dac3		488d0596400500		LEAQ go.itab.*os.File,io.Writer(SB), AX		
  print.go:274		0x48daca		488d4c2428		LEAQ 0x28(SP), CX				
  print.go:274		0x48dacf		bf01000000		MOVL $__minor_subsystem_version__(SB), DI	
  print.go:274		0x48dad4		4889fe			MOVQ DI, SI					
  print.go:274		0x48dad7		e864a7ffff		CALL fmt.Fprintln(SB)				
  greet.go:23		0x48dadc		488b6c2438		MOVQ 0x38(SP), BP				
  greet.go:23		0x48dae1		4883c440		ADDQ $__major_os_version__+58(SB), SP		
  greet.go:23		0x48dae5		c3			RET						
  greet.go:21		0x48dae6		4889442408		MOVQ AX, 0x8(SP)				
  greet.go:21		0x48daeb		e850ddfcff		CALL runtime.morestack_noctxt.abi0(SB)		
  greet.go:21		0x48daf0		488b442408		MOVQ 0x8(SP), AX				
  greet.go:21		0x48daf5		eb89			JMP testc2go/greet.(*Greet).SayGreet(SB)	
  :-1			0x48daf7		cc			INT $__subsystem__(SB)				
  :-1			0x48daf8		cc			INT $__subsystem__(SB)				
  :-1			0x48daf9		cc			INT $__subsystem__(SB)				
  :-1			0x48dafa		cc			INT $__subsystem__(SB)				
  :-1			0x48dafb		cc			INT $__subsystem__(SB)				
  :-1			0x48dafc		cc			INT $__subsystem__(SB)				
  :-1			0x48dafd		cc			INT $__subsystem__(SB)				
  :-1			0x48dafe		cc			INT $__subsystem__(SB)				
  :-1			0x48daff		cc			INT $__subsystem__(SB)				

TEXT testc2go/greet.(*Greet).SayGreet.func1(SB) D:/Ming Program/GO/go2c/greet/greet.go
  greet.go:22		0x48db00		493b6610		CMPQ 0x10(R14), SP				
  greet.go:22		0x48db04		7657			JBE 0x48db5d					
  greet.go:22		0x48db06		4883ec30		SUBQ $__major_os_version__+42(SB), SP		
  greet.go:22		0x48db0a		48896c2428		MOVQ BP, 0x28(SP)				
  greet.go:22		0x48db0f		488d6c2428		LEAQ 0x28(SP), BP				
  greet.go:22		0x48db14		488b18			MOVQ 0(AX), BX					
  greet.go:22		0x48db17		48895c2420		MOVQ BX, 0x20(SP)				
  greet.go:22		0x48db1c		488d057d050200		LEAQ runtime.rodata+24736(SB), AX		
  greet.go:22		0x48db23		31c9			XORL CX, CX					
  greet.go:22		0x48db25		31ff			XORL DI, DI					
  greet.go:22		0x48db27		e8f463f7ff		CALL runtime.cgoCheckPointer(SB)		
  greet.go:22		0x48db2c		488b542420		MOVQ 0x20(SP), DX				
  greet.go:22		0x48db31		48891424		MOVQ DX, 0(SP)					
  greet.go:22		0x48db35		e846fdffff		CALL testc2go/greet._Cfunc_GreetString.abi0(SB)	
  greet.go:22		0x48db3a		450f57ff		XORPS X15, X15					
  greet.go:22		0x48db3e		654c8b342528000000	MOVQ GS:0x28, R14				
  greet.go:22		0x48db47		4d8bb600000000		MOVQ 0(R14), R14				
  greet.go:22		0x48db4e		488b442408		MOVQ 0x8(SP), AX				
  greet.go:22		0x48db53		488b6c2428		MOVQ 0x28(SP), BP				
  greet.go:22		0x48db58		4883c430		ADDQ $__major_os_version__+42(SB), SP		
  greet.go:22		0x48db5c		c3			RET						
  greet.go:22		0x48db5d		4889442408		MOVQ AX, 0x8(SP)				
  greet.go:22		0x48db62		e8d9dcfcff		CALL runtime.morestack_noctxt.abi0(SB)		
  greet.go:22		0x48db67		488b442408		MOVQ 0x8(SP), AX				
  greet.go:22		0x48db6c		eb92			JMP testc2go/greet.(*Greet).SayGreet.func1(SB)	
  :-1			0x48db6e		cc			INT $__subsystem__(SB)				
  :-1			0x48db6f		cc			INT $__subsystem__(SB)				
  :-1			0x48db70		cc			INT $__subsystem__(SB)				
  :-1			0x48db71		cc			INT $__subsystem__(SB)				
  :-1			0x48db72		cc			INT $__subsystem__(SB)				
  :-1			0x48db73		cc			INT $__subsystem__(SB)				
  :-1			0x48db74		cc			INT $__subsystem__(SB)				
  :-1			0x48db75		cc			INT $__subsystem__(SB)				
  :-1			0x48db76		cc			INT $__subsystem__(SB)				
  :-1			0x48db77		cc			INT $__subsystem__(SB)				
  :-1			0x48db78		cc			INT $__subsystem__(SB)				
  :-1			0x48db79		cc			INT $__subsystem__(SB)				
  :-1			0x48db7a		cc			INT $__subsystem__(SB)				
  :-1			0x48db7b		cc			INT $__subsystem__(SB)				
  :-1			0x48db7c		cc			INT $__subsystem__(SB)				
  :-1			0x48db7d		cc			INT $__subsystem__(SB)				
  :-1			0x48db7e		cc			INT $__subsystem__(SB)				
  :-1			0x48db7f		cc			INT $__subsystem__(SB)				
