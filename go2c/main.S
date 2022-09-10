TEXT __tmainCRTStartup(SB) 
  :0			0x401180		4155			PUSHL R13						
  :0			0x401182		4154			PUSHL R12						
  :0			0x401184		55			PUSHL BP						
  :0			0x401185		57			PUSHL DI						
  :0			0x401186		56			PUSHL SI						
  :0			0x401187		53			PUSHL BX						
  :0			0x401188		4881ec98000000		SUBQ $.file+75(SB), SP					
  :0			0x40118f		31c0			XORL AX, AX						
  :0			0x401191		b90d000000		MOVL $__major_os_version__+7(SB), CX			
  :0			0x401196		488d542420		LEAQ 0x20(SP), DX					
  :0			0x40119b		4889d7			MOVQ DX, DI						
  :0			0x40119e		f348ab			REP; STOSQ AX, ES:0(DI)					
  :0			0x4011a1		488b3d784d1400		MOVQ .rdata$.refptr.mingw_app_type(SB), DI		
  :0			0x4011a8		448b0f			MOVL 0(DI), R9						
  :0			0x4011ab		4585c9			TESTL R9, R9						
  :0			0x4011ae		0f85bc020000		JNE 0x401470						
  :0			0x4011b4		65488b042530000000	MOVQ GS:0x30, AX					
  :0			0x4011bd		488b1dac4c1400		MOVQ .rdata$.refptr.__native_startup_lock(SB), BX	
  :0			0x4011c4		31ed			XORL BP, BP						
  :0			0x4011c6		488b7008		MOVQ 0x8(AX), SI					
  :0			0x4011ca		4c8b25ff421a00		MOVQ .idata$5(SB), R12					
  :0			0x4011d1		eb11			JMP 0x4011e4						
  :0			0x4011d3		4839c6			CMPQ AX, SI						
  :0			0x4011d6		0f8434020000		JE 0x401410						
  :0			0x4011dc		b9e8030000		MOVL $__file_alignment__+488(SB), CX			
  :0			0x4011e1		41ffd4			CALL R12						
  :0			0x4011e4		4889e8			MOVQ BP, AX						
  :0			0x4011e7		f0480fb133		LOCK CMPXCHGQ SI, 0(BX)					
  :0			0x4011ec		4885c0			TESTQ AX, AX						
  :0			0x4011ef		75e2			JNE 0x4011d3						
  :0			0x4011f1		488b35884c1400		MOVQ .refptr.__native_startup_state(SB), SI		
  :0			0x4011f8		31ed			XORL BP, BP						
  :0			0x4011fa		8b06			MOVL 0(SI), AX						
  :0			0x4011fc		83f801			CMPL $__minor_subsystem_version__(SB), AX		
  :0			0x4011ff		0f8422020000		JE 0x401427						
  :0			0x401205		8b06			MOVL 0(SI), AX						
  :0			0x401207		85c0			TESTL AX, AX						
  :0			0x401209		0f8471020000		JE 0x401480						
  :0			0x40120f		c705eb7d140001000000	MOVL $__minor_subsystem_version__(SB), has_cctor(SB)	
  :0			0x401219		8b06			MOVL 0(SI), AX						
  :0			0x40121b		83f801			CMPL $__minor_subsystem_version__(SB), AX		
  :0			0x40121e		0f8418020000		JE 0x40143c						
  :0			0x401224		85ed			TESTL BP, BP						
  :0			0x401226		0f8431020000		JE 0x40145d						
  :0			0x40122c		488b05dd4b1400		MOVQ .refptr.__dyn_tls_init_callback(SB), AX		
  :0			0x401233		488b00			MOVQ 0(AX), AX						
  :0			0x401236		4885c0			TESTQ AX, AX						
  :0			0x401239		740c			JE 0x401247						
  :0			0x40123b		4531c0			XORL R8, R8						
  :0			0x40123e		ba02000000		MOVL $__minor_subsystem_version__+1(SB), DX		
  :0			0x401243		31c9			XORL CX, CX						
  :0			0x401245		ffd0			CALL AX							
  :0			0x401247		e884d80800		CALL _pei386_runtime_relocator(SB)			
  :0			0x40124c		488d0dcddd0800		LEAQ _gnu_exception_handler(SB), CX			
  :0			0x401253		ff1567421a00		CALL .idata$5(SB)					
  :0			0x401259		488b15004c1400		MOVQ .refptr.__mingw_oldexcpt_handler(SB), DX		
  :0			0x401260		488902			MOVQ AX, 0(DX)						
  :0			0x401263		e8c8dc0800		CALL __mingw_init_ehandler(SB)				
  :0			0x401268		488d0d91fdffff		LEAQ 0xfffffd91(IP), CX					
  :0			0x40126f		e82ce90800		CALL _set_invalid_parameter_handler(SB)			
  :0			0x401274		e857d60800		CALL fpreset(SB)					
  :0			0x401279		488b05a04b1400		MOVQ .rdata$.refptr.__image_base__(SB), AX		
  :0			0x401280		488905c12a1a00		MOVQ AX, __mingw_winmain_hInstance(SB)			
  :0			0x401287		e824e90800		CALL .text(SB)						
  :0			0x40128c		31c9			XORL CX, CX						
  :0			0x40128e		488b00			MOVQ 0(AX), AX						
  :0			0x401291		4885c0			TESTQ AX, AX						
  :0			0x401294		751c			JNE 0x4012b2						
  :0			0x401296		eb5f			JMP 0x4012f7						
  :0			0x401298		0f1f840000000000	NOPL 0(AX)(AX*1)					
  :0			0x4012a0		84d2			TESTL DL, DL						
  :0			0x4012a2		742c			JE 0x4012d0						
  :0			0x4012a4		83e101			ANDL $__minor_subsystem_version__(SB), CX		
  :0			0x4012a7		7427			JE 0x4012d0						
  :0			0x4012a9		b901000000		MOVL $__minor_subsystem_version__(SB), CX		
  :0			0x4012ae		4883c001		ADDQ $__minor_subsystem_version__(SB), AX		
  :0			0x4012b2		0fb610			MOVZX 0(AX), DX						
  :0			0x4012b5		80fa20			CMPL $__major_os_version__+26(SB), DL			
  :0			0x4012b8		7ee6			JLE 0x4012a0						
  :0			0x4012ba		4189c8			MOVL CX, R8						
  :0			0x4012bd		4183f001		XORL $__minor_subsystem_version__(SB), R8		
  :0			0x4012c1		80fa22			CMPL $__major_os_version__+28(SB), DL			
  :0			0x4012c4		410f44c8		CMOVE R8, CX						
  :0			0x4012c8		ebe4			JMP 0x4012ae						
  :0			0x4012ca		660f1f440000		NOPW 0(AX)(AX*1)					
  :0			0x4012d0		84d2			TESTL DL, DL						
  :0			0x4012d2		7511			JNE 0x4012e5						
  :0			0x4012d4		eb1a			JMP 0x4012f0						
  :0			0x4012d6		662e0f1f840000000000	CS NOPW 0(AX)(AX*1)					
  :0			0x4012e0		80fa20			CMPL $__major_os_version__+26(SB), DL			
  :0			0x4012e3		7f0b			JG 0x4012f0						
  :0			0x4012e5		4883c001		ADDQ $__minor_subsystem_version__(SB), AX		
  :0			0x4012e9		0fb610			MOVZX 0(AX), DX						
  :0			0x4012ec		84d2			TESTL DL, DL						
  :0			0x4012ee		75f0			JNE 0x4012e0						
  :0			0x4012f0		488905492a1a00		MOVQ AX, __mingw_winmain_lpCmdLine(SB)			
  :0			0x4012f7		448b07			MOVL 0(DI), R8						
  :0			0x4012fa		4585c0			TESTL R8, R8						
  :0			0x4012fd		7416			JE 0x401315						
  :0			0x4012ff		f644245c01		TESTB $__minor_subsystem_version__(SB), 0x5c(SP)	
  :0			0x401304		b80a000000		MOVL $__major_os_version__+4(SB), AX			
  :0			0x401309		0f85f1000000		JNE 0x401400						
  :0			0x40130f		8905ebec0800		MOVL AX, .data(SB)					
  :0			0x401315		8b1d057d1400		MOVL argc(SB), BX					
  :0			0x40131b		448d6301		LEAL 0x1(BX), R12					
  :0			0x40131f		4d63e4			MOVSXD R12, R12						
  :0			0x401322		49c1e403		SHLQ $__subsystem__(SB), R12				
  :0			0x401326		4c89e1			MOVQ R12, CX						
  :0			0x401329		e89ae70800		CALL .text(SB)						
  :0			0x40132e		85db			TESTL BX, BX						
  :0			0x401330		488b3de17c1400		MOVQ argv(SB), DI					
  :0			0x401337		4889c5			MOVQ AX, BP						
  :0			0x40133a		7e4b			JLE 0x401387						
  :0			0x40133c		8d43ff			LEAL -0x1(BX), AX					
  :0			0x40133f		31db			XORL BX, BX						
  :0			0x401341		4c8d2cc508000000	LEAQ 0x8(AX*8), R13					
  :0			0x401349		0f1f8000000000		NOPL 0(AX)						
  :0			0x401350		488b0c1f		MOVQ 0(DI)(BX*1), CX					
  :0			0x401354		e84fe70800		CALL strlen(SB)						
  :0			0x401359		488d7001		LEAQ 0x1(AX), SI					
  :0			0x40135d		4889f1			MOVQ SI, CX						
  :0			0x401360		e863e70800		CALL .text(SB)						
  :0			0x401365		4989f0			MOVQ SI, R8						
  :0			0x401368		4889441d00		MOVQ AX, 0(BP)(BX*1)					
  :0			0x40136d		488b141f		MOVQ 0(DI)(BX*1), DX					
  :0			0x401371		4889c1			MOVQ AX, CX						
  :0			0x401374		4883c308		ADDQ $__major_os_version__+2(SB), BX			
  :0			0x401378		e843e70800		CALL .text(SB)						
  :0			0x40137d		4939dd			CMPQ BX, R13						
  :0			0x401380		75ce			JNE 0x401350						
  :0			0x401382		4a8d4425f8		LEAQ -0x8(BP)(R12*1), AX				
  :0			0x401387		48c70000000000		MOVQ $0x0, 0(AX)					
  :0			0x40138e		48892d837c1400		MOVQ BP, argv(SB)					
  :0			0x401395		e8f6d00800		CALL __main(SB)						
  :0			0x40139a		488b058f4a1400		MOVQ .refptr.__imp___initenv(SB), AX			
  :0			0x4013a1		488b15687c1400		MOVQ envp(SB), DX					
  :0			0x4013a8		8b0d727c1400		MOVL argc(SB), CX					
  :0			0x4013ae		488b00			MOVQ 0(AX), AX						
  :0			0x4013b1		488910			MOVQ DX, 0(AX)						
  :0			0x4013b4		4c8b05557c1400		MOVQ envp(SB), R8					
  :0			0x4013bb		488b15567c1400		MOVQ argv(SB), DX					
  :0			0x4013c2		e8b9a00500		CALL main(SB)						
  :0			0x4013c7		8b0d3b7c1400		MOVL managedapp(SB), CX					
  :0			0x4013cd		8905397c1400		MOVL AX, mainret(SB)					
  :0			0x4013d3		85c9			TESTL CX, CX						
  :0			0x4013d5		0f84c3000000		JE 0x40149e						
  :0			0x4013db		8b15237c1400		MOVL has_cctor(SB), DX					
  :0			0x4013e1		85d2			TESTL DX, DX						
  :0			0x4013e3		750b			JNE 0x4013f0						
  :0			0x4013e5		e846e70800		CALL _cexit(SB)						
  :0			0x4013ea		8b051c7c1400		MOVL mainret(SB), AX					
  :0			0x4013f0		4881c498000000		ADDQ $.file+75(SB), SP					
  :0			0x4013f7		5b			POPL BX							
  :0			0x4013f8		5e			POPL SI							
  :0			0x4013f9		5f			POPL DI							
  :0			0x4013fa		5d			POPL BP							
  :0			0x4013fb		415c			POPL R12						
  :0			0x4013fd		415d			POPL R13						
  :0			0x4013ff		c3			RET							
  :0			0x401400		0fb7442460		MOVZX 0x60(SP), AX					
  :0			0x401405		e905ffffff		JMP 0x40130f						
  :0			0x40140a		660f1f440000		NOPW 0(AX)(AX*1)					
  :0			0x401410		488b35694a1400		MOVQ .refptr.__native_startup_state(SB), SI		
  :0			0x401417		bd01000000		MOVL $__minor_subsystem_version__(SB), BP		
  :0			0x40141c		8b06			MOVL 0(SI), AX						
  :0			0x40141e		83f801			CMPL $__minor_subsystem_version__(SB), AX		
  :0			0x401421		0f85defdffff		JNE 0x401205						
  :0			0x401427		b91f000000		MOVL $__major_os_version__+25(SB), CX			
  :0			0x40142c		e80fe70800		CALL .text(SB)						
  :0			0x401431		8b06			MOVL 0(SI), AX						
  :0			0x401433		83f801			CMPL $__minor_subsystem_version__(SB), AX		
  :0			0x401436		0f85e8fdffff		JNE 0x401224						
  :0			0x40143c		488b155d4a1400		MOVQ .rdata$.refptr.__xc_z(SB), DX			
  :0			0x401443		488b0d464a1400		MOVQ .rdata$.refptr.__xc_a(SB), CX			
  :0			0x40144a		e8c9e60800		CALL .text(SB)						
  :0			0x40144f		85ed			TESTL BP, BP						
  :0			0x401451		c70602000000		MOVL $__minor_subsystem_version__+1(SB), 0(SI)		
  :0			0x401457		0f85cffdffff		JNE 0x40122c						
  :0			0x40145d		31c0			XORL AX, AX						
  :0			0x40145f		488703			XCHGQ AX, 0(BX)						
  :0			0x401462		e9c5fdffff		JMP 0x40122c						
  :0			0x401467		660f1f840000000000	NOPW 0(AX)(AX*1)					
  :0			0x401470		4889d1			MOVQ DX, CX						
  :0			0x401473		ff158f3f1a00		CALL .idata$5(SB)					
  :0			0x401479		e936fdffff		JMP 0x4011b4						
  :0			0x40147e		6690			NOPW							
  :0			0x401480		488b15394a1400		MOVQ .refptr.__xi_z(SB), DX				
  :0			0x401487		c70601000000		MOVL $__minor_subsystem_version__(SB), 0(SI)		
  :0			0x40148d		488b0d1c4a1400		MOVQ .refptr.__xi_a(SB), CX				
  :0			0x401494		e87fe60800		CALL .text(SB)						
  :0			0x401499		e97bfdffff		JMP 0x401219						
  :0			0x40149e		89c1			MOVL AX, CX						
  :0			0x4014a0		e84be60800		CALL exit(SB)						
  :0			0x4014a5		90			NOPL							
  :0			0x4014a6		662e0f1f840000000000	CS NOPW 0(AX)(AX*1)					

TEXT mainCRTStartup(SB) 
  :0			0x4014e0		4883ec28		SUBQ $__major_os_version__+34(SB), SP	

TEXT runtime.main(SB) C:/Program Files/Go/src/runtime/proc.go
  proc.go:145		0x436500		493b6610		CMPQ 0x10(R14), SP						
  proc.go:145		0x436504		0f86f0020000		JBE 0x4367fa							
  proc.go:145		0x43650a		4883ec58		SUBQ $.file+11(SB), SP						
  proc.go:145		0x43650e		48896c2450		MOVQ BP, 0x50(SP)						
  proc.go:145		0x436513		488d6c2450		LEAQ 0x50(SP), BP						
  proc.go:145		0x436518		49c7c500000000		MOVQ $0x0, R13							
  proc.go:145		0x43651f		4c896c2448		MOVQ R13, 0x48(SP)						
  proc.go:145		0x436524		c644242700		MOVB $0x0, 0x27(SP)						
  proc.go:146		0x436529		4c89742430		MOVQ R14, 0x30(SP)						
  proc.go:150		0x43652e		498b4630		MOVQ 0x30(R14), AX						
  proc.go:150		0x436532		488b00			MOVQ 0(AX), AX							
  proc.go:150		0x436535		48c7804001000000000000	MOVQ $0x0, 0x140(AX)						
  proc.go:156		0x436540		48c705259c050000ca9a3b	MOVQ $0x3b9aca00, runtime.maxstacksize(SB)			
  proc.go:164		0x43654b		48c705129c050000943577	MOVQ $0x77359400, runtime.maxstackceiling(SB)			
  proc.go:167		0x436556		c6051374160001		MOVB $__minor_subsystem_version__(SB), runtime.mainStarted(SB)	
  proc.go:173		0x43655d		b801000000		MOVL $__minor_subsystem_version__(SB), AX			
  proc.go:173		0x436562		488d0d57401100		LEAQ runtime.sched+288(SB), CX					
  proc.go:173		0x436569		8701			XCHGL AX, 0(CX)							
  proc.go:174		0x43656b		488d05d6380900		LEAQ go.func.*+872(SB), AX					
  proc.go:174		0x436572		48890424		MOVQ AX, 0(SP)							
  proc.go:174		0x436576		e885510200		CALL runtime.systemstack.abi0(SB)				
  proc.go:174		0x43657b		450f57ff		XORPS X15, X15							
  proc.go:174		0x43657f		654c8b342528000000	MOVQ GS:0x28, R14						
  proc.go:174		0x436588		4d8bb600000000		MOVQ 0(R14), R14						
  proc.go:4587		0x43658f		498b4630		MOVQ 0x30(R14), AX						
  proc.go:185		0x436593		90			NOPL								
  proc.go:4587		0x436594		ff8044020000		INCL 0x244(AX)							
  proc.go:4549		0x43659a		498b4630		MOVQ 0x30(R14), AX						
  proc.go:4588		0x43659e		90			NOPL								
  runtime2.go:264	0x43659f		4c89f1			MOVQ R14, CX							
  proc.go:4549		0x4365a2		48898838010000		MOVQ CX, 0x138(AX)						
  proc.go:4550		0x4365a9		498b4630		MOVQ 0x30(R14), AX						
  runtime2.go:302	0x4365ad		498986e8000000		MOVQ AX, 0xe8(R14)						
  proc.go:187		0x4365b4		488b442430		MOVQ 0x30(SP), AX						
  proc.go:187		0x4365b9		488b4030		MOVQ 0x30(AX), AX						
  proc.go:187		0x4365bd		488d0ddc3a1100		LEAQ runtime.m0(SB), CX						
  proc.go:187		0x4365c4		4839c8			CMPQ CX, AX							
  proc.go:187		0x4365c7		0f850c020000		JNE 0x4367d9							
  proc.go:190		0x4365cd		c605e43b110001		MOVB $__minor_subsystem_version__(SB), runtime.m0+280(SB)	
  time_nofake.go:20	0x4365d4		e847920200		CALL runtime.nanotime1.abi0(SB)					
  time_nofake.go:20	0x4365d9		450f57ff		XORPS X15, X15							
  time_nofake.go:20	0x4365dd		654c8b342528000000	MOVQ GS:0x28, R14						
  time_nofake.go:20	0x4365e6		4d8bb600000000		MOVQ 0(R14), R14						
  time_nofake.go:20	0x4365ed		488b0424		MOVQ 0(SP), AX							
  proc.go:194		0x4365f1		48890530751600		MOVQ AX, runtime.runtimeInitTime(SB)				
  proc.go:194		0x4365f8		0f1f840000000000	NOPL 0(AX)(AX*1)						
  proc.go:195		0x436600		4885c0			TESTQ AX, AX							
  proc.go:195		0x436603		0f84bf010000		JE 0x4367c8							
  proc.go:199		0x436609		833dd477160000		CMPL $0x0, runtime.debug+68(SB)					
  proc.go:199		0x436610		7415			JE 0x436627							
  proc.go:200		0x436612		498b8e98000000		MOVQ 0x98(R14), CX						
  proc.go:200		0x436619		48890d08761600		MOVQ CX, runtime.inittrace+8(SB)				
  proc.go:201		0x436620		c605f975160001		MOVB $__minor_subsystem_version__(SB), runtime.inittrace(SB)	
  proc.go:204		0x436627		488d0552c60500		LEAQ runtime..inittask(SB), AX					
  proc.go:204		0x43662e		e8adc60000		CALL runtime.doInit(SB)						
  proc.go:207		0x436633		c644242601		MOVB $__minor_subsystem_version__(SB), 0x26(SP)			
  proc.go:208		0x436638		440f117c2438		MOVUPS X15, 0x38(SP)						
  proc.go:208		0x43663e		488d0ddb010000		LEAQ runtime.main.func2(SB), CX					
  proc.go:208		0x436645		48894c2438		MOVQ CX, 0x38(SP)						
  proc.go:208		0x43664a		488d4c2426		LEAQ 0x26(SP), CX						
  proc.go:208		0x43664f		48894c2440		MOVQ CX, 0x40(SP)						
  proc.go:208		0x436654		488d4c2438		LEAQ 0x38(SP), CX						
  proc.go:208		0x436659		48894c2448		MOVQ CX, 0x48(SP)						
  proc.go:208		0x43665e		c644242701		MOVB $__minor_subsystem_version__(SB), 0x27(SP)			
  proc.go:214		0x436663		e89813feff		CALL runtime.gcenable(SB)					
  proc.go:216		0x436668		488d05f1890700		LEAQ runtime.rodata+28768(SB), AX				
  proc.go:216		0x43666f		31db			XORL BX, BX							
  proc.go:216		0x436671		e80aeefcff		CALL runtime.makechan(SB)					
  proc.go:216		0x436676		833d5375160000		CMPL $0x0, runtime.writeBarrier(SB)				
  proc.go:216		0x43667d		7509			JNE 0x436688							
  proc.go:216		0x43667f		4889051a2c1100		MOVQ AX, runtime.main_init_done(SB)				
  proc.go:216		0x436686		eb0c			JMP 0x436694							
  proc.go:216		0x436688		488d3d112c1100		LEAQ runtime.main_init_done(SB), DI				
  proc.go:216		0x43668f		e82c740200		CALL runtime.gcWriteBarrier(SB)					
  proc.go:217		0x436694		803da599050000		CMPB $0x0, runtime.iscgo(SB)					
  proc.go:217		0x43669b		742f			JE 0x4366cc							
  proc.go:218		0x43669d		48833d13a0060000	CMPQ $0x0, _cgo_thread_start(SB)				
  proc.go:218		0x4366a5		0f840c010000		JE 0x4367b7							
  proc.go:229		0x4366ab		48833dfd9f060000	CMPQ $0x0, _cgo_notify_runtime_init_done(SB)			
  proc.go:229		0x4366b3		0f84ed000000		JE 0x4367a6							
  proc.go:234		0x4366b9		e8023c0000		CALL runtime.startTemplateThread(SB)				
  proc.go:235		0x4366be		488b05eb9f0600		MOVQ _cgo_notify_runtime_init_done(SB), AX			
  proc.go:235		0x4366c5		31db			XORL BX, BX							
  proc.go:235		0x4366c7		e8b4d0fcff		CALL runtime.cgocall(SB)					
  proc.go:238		0x4366cc		488d052daf0500		LEAQ main..inittask(SB), AX					
  proc.go:238		0x4366d3		e808c60000		CALL runtime.doInit(SB)						
  proc.go:242		0x4366d8		c6054175160000		MOVB $0x0, runtime.inittrace(SB)				
  proc.go:244		0x4366df		488b05ba2b1100		MOVQ runtime.main_init_done(SB), AX				
  proc.go:244		0x4366e6		e895f8fcff		CALL runtime.closechan(SB)					
  proc.go:246		0x4366eb		c644242600		MOVB $0x0, 0x26(SP)						
  proc.go:247		0x4366f0		e80b900000		CALL runtime.unlockOSThread(SB)					
  proc.go:249		0x4366f5		803d7172160000		CMPB $0x0, runtime.isarchive(SB)				
  proc.go:249		0x4366fc		752a			JNE 0x436728							
  proc.go:249		0x4366fe		803d6972160000		CMPB $0x0, runtime.islibrary(SB)				
  proc.go:249		0x436705		7521			JNE 0x436728							
  proc.go:255		0x436707		488b0542370900		MOVQ go.func.*+880(SB), AX					
  proc.go:255		0x43670e		488d153b370900		LEAQ go.func.*+880(SB), DX					
  proc.go:255		0x436715		ffd0			CALL AX								
  proc.go:264		0x436717		8b05b3721600		MOVL runtime.runningPanicDefers(SB), AX				
  proc.go:264		0x43671d		0f1f00			NOPL 0(AX)							
  proc.go:264		0x436720		85c0			TESTL AX, AX							
  proc.go:264		0x436722		741d			JE 0x436741							
  proc.go:264		0x436724		31c0			XORL AX, AX							
  proc.go:264		0x436726		eb69			JMP 0x436791							
  proc.go:252		0x436728		c644242700		MOVB $0x0, 0x27(SP)						
  proc.go:252		0x43672d		488b542448		MOVQ 0x48(SP), DX						
  proc.go:252		0x436732		488b02			MOVQ 0(DX), AX							
  proc.go:252		0x436735		ffd0			CALL AX								
  proc.go:252		0x436737		488b6c2450		MOVQ 0x50(SP), BP						
  proc.go:252		0x43673c		4883c458		ADDQ $.file+11(SB), SP						
  proc.go:252		0x436740		c3			RET								
  proc.go:273		0x436741		8b1581721600		MOVL runtime.panicking(SB), DX					
  proc.go:273		0x436747		85d2			TESTL DX, DX							
  proc.go:273		0x436749		741a			JE 0x436765							
  proc.go:274		0x43674b		31c0			XORL AX, AX							
  proc.go:274		0x43674d		31db			XORL BX, BX							
  proc.go:274		0x43674f		b908000000		MOVL $__major_os_version__+2(SB), CX				
  proc.go:274		0x436754		bf10000000		MOVL $__major_os_version__+10(SB), DI				
  proc.go:274		0x436759		be01000000		MOVL $__minor_subsystem_version__(SB), SI			
  proc.go:274		0x43675e		6690			NOPW								
  proc.go:274		0x436760		e87b020000		CALL runtime.gopark(SB)						
  proc.go:277		0x436765		31c0			XORL AX, AX							
  proc.go:277		0x436767		e8348dffff		CALL runtime.exit(SB)						
  proc.go:280		0x43676c		31c0			XORL AX, AX							
  proc.go:280		0x43676e		c70000000000		MOVL $0x0, 0(AX)						
  proc.go:280		0x436774		ebf6			JMP 0x43676c							
  proc.go:266		0x436776		4889442428		MOVQ AX, 0x28(SP)						
  proc.go:270		0x43677b		90			NOPL								
  proc.go:322		0x43677c		488d059d360900		LEAQ go.func.*+832(SB), AX					
  proc.go:322		0x436783		e8f84e0200		CALL runtime.mcall(SB)						
  proc.go:266		0x436788		488b4c2428		MOVQ 0x28(SP), CX						
  proc.go:266		0x43678d		488d4101		LEAQ 0x1(CX), AX						
  proc.go:266		0x436791		483de8030000		CMPQ $__file_alignment__+488(SB), AX				
  proc.go:266		0x436797		7da8			JGE 0x436741							
  proc.go:267		0x436799		8b1531721600		MOVL runtime.runningPanicDefers(SB), DX				
  proc.go:267		0x43679f		90			NOPL								
  proc.go:267		0x4367a0		85d2			TESTL DX, DX							
  proc.go:267		0x4367a2		75d2			JNE 0x436776							
  proc.go:267		0x4367a4		eb9b			JMP 0x436741							
  proc.go:230		0x4367a6		488d05870e0900		LEAQ go.string.*+29460(SB), AX					
  proc.go:230		0x4367ad		bb25000000		MOVL $__major_os_version__+31(SB), BX				
  proc.go:230		0x4367b2		e829d9ffff		CALL runtime.throw(SB)						
  proc.go:219		0x4367b7		488d0558e60800		LEAQ go.string.*+19190(SB), AX					
  proc.go:219		0x4367be		bb19000000		MOVL $__major_os_version__+19(SB), BX				
  proc.go:219		0x4367c3		e818d9ffff		CALL runtime.throw(SB)						
  proc.go:196		0x4367c8		488d0580de0800		LEAQ go.string.*+17199(SB), AX					
  proc.go:196		0x4367cf		bb17000000		MOVL $__major_os_version__+17(SB), BX				
  proc.go:196		0x4367d4		e807d9ffff		CALL runtime.throw(SB)						
  proc.go:188		0x4367d9		488d0546d90800		LEAQ go.string.*+15878(SB), AX					
  proc.go:188		0x4367e0		bb16000000		MOVL $__major_os_version__+16(SB), BX				
  proc.go:188		0x4367e5		e8f6d8ffff		CALL runtime.throw(SB)						
  proc.go:188		0x4367ea		90			NOPL								
  proc.go:188		0x4367eb		e8f0bfffff		CALL runtime.deferreturn(SB)					
  proc.go:188		0x4367f0		488b6c2450		MOVQ 0x50(SP), BP						
  proc.go:188		0x4367f5		4883c458		ADDQ $.file+11(SB), SP						
  proc.go:188		0x4367f9		c3			RET								
  proc.go:145		0x4367fa		e841500200		CALL runtime.morestack_noctxt.abi0(SB)				
  proc.go:145		0x4367ff		90			NOPL								
  proc.go:145		0x436800		e9fbfcffff		JMP runtime.main(SB)						
  :-1			0x436805		cc			INT $__subsystem__(SB)						
  :-1			0x436806		cc			INT $__subsystem__(SB)						
  :-1			0x436807		cc			INT $__subsystem__(SB)						
  :-1			0x436808		cc			INT $__subsystem__(SB)						
  :-1			0x436809		cc			INT $__subsystem__(SB)						
  :-1			0x43680a		cc			INT $__subsystem__(SB)						
  :-1			0x43680b		cc			INT $__subsystem__(SB)						
  :-1			0x43680c		cc			INT $__subsystem__(SB)						
  :-1			0x43680d		cc			INT $__subsystem__(SB)						
  :-1			0x43680e		cc			INT $__subsystem__(SB)						
  :-1			0x43680f		cc			INT $__subsystem__(SB)						
  :-1			0x436810		cc			INT $__subsystem__(SB)						
  :-1			0x436811		cc			INT $__subsystem__(SB)						
  :-1			0x436812		cc			INT $__subsystem__(SB)						
  :-1			0x436813		cc			INT $__subsystem__(SB)						
  :-1			0x436814		cc			INT $__subsystem__(SB)						
  :-1			0x436815		cc			INT $__subsystem__(SB)						
  :-1			0x436816		cc			INT $__subsystem__(SB)						
  :-1			0x436817		cc			INT $__subsystem__(SB)						
  :-1			0x436818		cc			INT $__subsystem__(SB)						
  :-1			0x436819		cc			INT $__subsystem__(SB)						
  :-1			0x43681a		cc			INT $__subsystem__(SB)						
  :-1			0x43681b		cc			INT $__subsystem__(SB)						
  :-1			0x43681c		cc			INT $__subsystem__(SB)						
  :-1			0x43681d		cc			INT $__subsystem__(SB)						
  :-1			0x43681e		cc			INT $__subsystem__(SB)						
  :-1			0x43681f		cc			INT $__subsystem__(SB)						

TEXT runtime.main.func2(SB) C:/Program Files/Go/src/runtime/proc.go
  proc.go:208		0x436820		493b6610		CMPQ 0x10(R14), SP			
  proc.go:208		0x436824		7628			JBE 0x43684e				
  proc.go:208		0x436826		4883ec08		SUBQ $__major_os_version__+2(SB), SP	
  proc.go:208		0x43682a		48892c24		MOVQ BP, 0(SP)				
  proc.go:208		0x43682e		488d2c24		LEAQ 0(SP), BP				
  proc.go:208		0x436832		488b4208		MOVQ 0x8(DX), AX			
  proc.go:209		0x436836		803800			CMPB $0x0, 0(AX)			
  proc.go:209		0x436839		740a			JE 0x436845				
  proc.go:210		0x43683b		0f1f440000		NOPL 0(AX)(AX*1)			
  proc.go:210		0x436840		e8bb8e0000		CALL runtime.unlockOSThread(SB)		
  proc.go:212		0x436845		488b2c24		MOVQ 0(SP), BP				
  proc.go:212		0x436849		4883c408		ADDQ $__major_os_version__+2(SB), SP	
  proc.go:212		0x43684d		c3			RET					
  proc.go:208		0x43684e		e84d4f0200		CALL runtime.morestack.abi0(SB)		
  proc.go:208		0x436853		ebcb			JMP runtime.main.func2(SB)		
  :-1			0x436855		cc			INT $__subsystem__(SB)			
  :-1			0x436856		cc			INT $__subsystem__(SB)			
  :-1			0x436857		cc			INT $__subsystem__(SB)			
  :-1			0x436858		cc			INT $__subsystem__(SB)			
  :-1			0x436859		cc			INT $__subsystem__(SB)			
  :-1			0x43685a		cc			INT $__subsystem__(SB)			
  :-1			0x43685b		cc			INT $__subsystem__(SB)			
  :-1			0x43685c		cc			INT $__subsystem__(SB)			
  :-1			0x43685d		cc			INT $__subsystem__(SB)			
  :-1			0x43685e		cc			INT $__subsystem__(SB)			
  :-1			0x43685f		cc			INT $__subsystem__(SB)			

TEXT runtime.main.func1(SB) C:/Program Files/Go/src/runtime/proc.go
  proc.go:174		0x458160		493b6610		CMPQ 0x10(R14), SP			
  proc.go:174		0x458164		762d			JBE 0x458193				
  proc.go:174		0x458166		4883ec20		SUBQ $__major_os_version__+26(SB), SP	
  proc.go:174		0x45816a		48896c2418		MOVQ BP, 0x18(SP)			
  proc.go:174		0x45816f		488d6c2418		LEAQ 0x18(SP), BP			
  proc.go:175		0x458174		488d051d1e0700		LEAQ go.func.*+1208(SB), AX		
  proc.go:175		0x45817b		31db			XORL BX, BX				
  proc.go:175		0x45817d		48c7c1ffffffff		MOVQ $-0x1, CX				
  proc.go:175		0x458184		e8f71efeff		CALL runtime.newm(SB)			
  proc.go:176		0x458189		488b6c2418		MOVQ 0x18(SP), BP			
  proc.go:176		0x45818e		4883c420		ADDQ $__major_os_version__+26(SB), SP	
  proc.go:176		0x458192		c3			RET					
  proc.go:174		0x458193		e8a8360000		CALL runtime.morestack_noctxt.abi0(SB)	
  proc.go:174		0x458198		ebc6			JMP runtime.main.func1(SB)		
  :-1			0x45819a		cc			INT $__subsystem__(SB)			
  :-1			0x45819b		cc			INT $__subsystem__(SB)			
  :-1			0x45819c		cc			INT $__subsystem__(SB)			
  :-1			0x45819d		cc			INT $__subsystem__(SB)			
  :-1			0x45819e		cc			INT $__subsystem__(SB)			
  :-1			0x45819f		cc			INT $__subsystem__(SB)			

TEXT main(SB) C:/Program Files/Go/src/runtime/asm_amd64.s
  asm_amd64.s:24	0x45b480		e91b000000		JMP runtime.rt0_go.abi0(SB)	
  :-1			0x45b485		cc			INT $__subsystem__(SB)		
  :-1			0x45b486		cc			INT $__subsystem__(SB)		
  :-1			0x45b487		cc			INT $__subsystem__(SB)		
  :-1			0x45b488		cc			INT $__subsystem__(SB)		
  :-1			0x45b489		cc			INT $__subsystem__(SB)		
  :-1			0x45b48a		cc			INT $__subsystem__(SB)		
  :-1			0x45b48b		cc			INT $__subsystem__(SB)		
  :-1			0x45b48c		cc			INT $__subsystem__(SB)		
  :-1			0x45b48d		cc			INT $__subsystem__(SB)		
  :-1			0x45b48e		cc			INT $__subsystem__(SB)		
  :-1			0x45b48f		cc			INT $__subsystem__(SB)		
  :-1			0x45b490		cc			INT $__subsystem__(SB)		
  :-1			0x45b491		cc			INT $__subsystem__(SB)		
  :-1			0x45b492		cc			INT $__subsystem__(SB)		
  :-1			0x45b493		cc			INT $__subsystem__(SB)		
  :-1			0x45b494		cc			INT $__subsystem__(SB)		
  :-1			0x45b495		cc			INT $__subsystem__(SB)		
  :-1			0x45b496		cc			INT $__subsystem__(SB)		
  :-1			0x45b497		cc			INT $__subsystem__(SB)		
  :-1			0x45b498		cc			INT $__subsystem__(SB)		
  :-1			0x45b499		cc			INT $__subsystem__(SB)		
  :-1			0x45b49a		cc			INT $__subsystem__(SB)		
  :-1			0x45b49b		cc			INT $__subsystem__(SB)		
  :-1			0x45b49c		cc			INT $__subsystem__(SB)		
  :-1			0x45b49d		cc			INT $__subsystem__(SB)		
  :-1			0x45b49e		cc			INT $__subsystem__(SB)		
  :-1			0x45b49f		cc			INT $__subsystem__(SB)		

TEXT main.main(SB) D:/Ming Program/GO/go2c/main.go
  main.go:9		0x48db80		493b6610		CMPQ 0x10(R14), SP				
  main.go:9		0x48db84		0f86af000000		JBE 0x48dc39					
  main.go:9		0x48db8a		4883ec58		SUBQ $.file+11(SB), SP				
  main.go:9		0x48db8e		48896c2450		MOVQ BP, 0x50(SP)				
  main.go:9		0x48db93		488d6c2450		LEAQ 0x50(SP), BP				
  main.go:23		0x48db98		440f117c2440		MOVUPS X15, 0x40(SP)				
  main.go:23		0x48db9e		488d157b200200		LEAQ runtime.rodata+31776(SB), DX		
  main.go:23		0x48dba5		4889542440		MOVQ DX, 0x40(SP)				
  main.go:23		0x48dbaa		488d15df3a0500		LEAQ main..stmp_0(SB), DX			
  main.go:23		0x48dbb1		4889542448		MOVQ DX, 0x48(SP)				
  print.go:274		0x48dbb6		488b1d0bb60b00		MOVQ os.Stdout(SB), BX				
  print.go:274		0x48dbbd		488d059c3f0500		LEAQ go.itab.*os.File,io.Writer(SB), AX		
  print.go:274		0x48dbc4		488d4c2440		LEAQ 0x40(SP), CX				
  print.go:274		0x48dbc9		bf01000000		MOVL $__minor_subsystem_version__(SB), DI	
  print.go:274		0x48dbce		4889fe			MOVQ DI, SI					
  print.go:274		0x48dbd1		e86aa6ffff		CALL fmt.Fprintln(SB)				
  main.go:25		0x48dbd6		488d0524590300		LEAQ go.string.*+12769(SB), AX			
  main.go:25		0x48dbdd		bb14000000		MOVL $__major_os_version__+14(SB), BX		
  main.go:25		0x48dbe2		e8d9fdffff		CALL testc2go/greet.NewGreet(SB)		
  main.go:25		0x48dbe7		4889442428		MOVQ AX, 0x28(SP)				
  main.go:26		0x48dbec		440f117c2430		MOVUPS X15, 0x30(SP)				
  main.go:26		0x48dbf2		488d15e74b0200		LEAQ runtime.rodata+42976(SB), DX		
  main.go:26		0x48dbf9		4889542430		MOVQ DX, 0x30(SP)				
  main.go:26		0x48dbfe		4889442438		MOVQ AX, 0x38(SP)				
  print.go:274		0x48dc03		488b1dbeb50b00		MOVQ os.Stdout(SB), BX				
  print.go:274		0x48dc0a		488d4c2430		LEAQ 0x30(SP), CX				
  print.go:274		0x48dc0f		bf01000000		MOVL $__minor_subsystem_version__(SB), DI	
  print.go:274		0x48dc14		4889fe			MOVQ DI, SI					
  print.go:274		0x48dc17		488d05423f0500		LEAQ go.itab.*os.File,io.Writer(SB), AX		
  print.go:274		0x48dc1e		6690			NOPW						
  print.go:274		0x48dc20		e81ba6ffff		CALL fmt.Fprintln(SB)				
  main.go:27		0x48dc25		488b442428		MOVQ 0x28(SP), AX				
  main.go:27		0x48dc2a		e851feffff		CALL testc2go/greet.(*Greet).SayGreet(SB)	
  main.go:28		0x48dc2f		488b6c2450		MOVQ 0x50(SP), BP				
  main.go:28		0x48dc34		4883c458		ADDQ $.file+11(SB), SP				
  main.go:28		0x48dc38		c3			RET						
  main.go:9		0x48dc39		e802dcfcff		CALL runtime.morestack_noctxt.abi0(SB)		
  main.go:9		0x48dc3e		6690			NOPW						
  main.go:9		0x48dc40		e93bffffff		JMP main.main(SB)				

TEXT __main(SB) 
  :0			0x48e490		8b057a4f1100		MOVL initialized(SB), AX				
  :0			0x48e496		85c0			TESTL AX, AX						
  :0			0x48e498		7406			JE 0x48e4a0						
  :0			0x48e49a		c3			RET							
  :0			0x48e49b		0f1f440000		NOPL 0(AX)(AX*1)					
  :0			0x48e4a0		c705664f110001000000	MOVL $__minor_subsystem_version__(SB), initialized(SB)	
  :0			0x48e4aa		e971ffffff		JMP __do_global_ctors(SB)				
  :0			0x48e4af		90			NOPL							

TEXT __getmainargs(SB) 
  :0			0x48fb68		ff25e2591100		JMP .idata$5(SB)	
  :0			0x48fb6e		90			NOPL			
  :0			0x48fb6f		90			NOPL			
