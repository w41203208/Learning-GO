TEXT "".ExchangePtr(SB) gofile..D:/Ming Program/GO/test-learning/src/util/util.go
  util.go:3		0xd1a			4883ec10		SUBQ $0x10, SP		
  util.go:3		0xd1e			48896c2408		MOVQ BP, 0x8(SP)	
  util.go:3		0xd23			488d6c2408		LEAQ 0x8(SP), BP	
  util.go:3		0xd28			4889442418		MOVQ AX, 0x18(SP)	
  util.go:3		0xd2d			48895c2420		MOVQ BX, 0x20(SP)	
  util.go:4		0xd32			8400			TESTB AL, 0(AX)		
  util.go:4		0xd34			488b00			MOVQ 0(AX), AX		
  util.go:4		0xd37			48890424		MOVQ AX, 0(SP)		
  util.go:5		0xd3b			488b442418		MOVQ 0x18(SP), AX	
  util.go:5		0xd40			8400			TESTB AL, 0(AX)		
  util.go:5		0xd42			488b4c2420		MOVQ 0x20(SP), CX	
  util.go:5		0xd47			8401			TESTB AL, 0(CX)		
  util.go:5		0xd49			488b09			MOVQ 0(CX), CX		
  util.go:5		0xd4c			488908			MOVQ CX, 0(AX)		
  util.go:6		0xd4f			488b442420		MOVQ 0x20(SP), AX	
  util.go:6		0xd54			8400			TESTB AL, 0(AX)		
  util.go:6		0xd56			488b0c24		MOVQ 0(SP), CX		
  util.go:6		0xd5a			488908			MOVQ CX, 0(AX)		
  util.go:7		0xd5d			488b6c2408		MOVQ 0x8(SP), BP	
  util.go:7		0xd62			4883c410		ADDQ $0x10, SP		
  util.go:7		0xd66			c3			RET			

TEXT "".Ui64toB(SB) gofile..D:/Ming Program/GO/test-learning/src/util/util.go
  util.go:9		0xd67			493b6610		CMPQ 0x10(R14), SP	
  util.go:9		0xd6b			0f86ee000000		JBE 0xe5f		
  util.go:9		0xd71			4883ec58		SUBQ $0x58, SP		
  util.go:9		0xd75			48896c2450		MOVQ BP, 0x50(SP)	
  util.go:9		0xd7a			488d6c2450		LEAQ 0x50(SP), BP	
  util.go:9		0xd7f			4889442460		MOVQ AX, 0x60(SP)	
  util.go:9		0xd84			48c744242000000000	MOVQ $0x0, 0x20(SP)	
  util.go:9		0xd8d			440f117c2428		MOVUPS X15, 0x28(SP)	
  util.go:10		0xd93			488d0500000000		LEAQ 0(IP), AX		[3:7]R_PCREL:type.uint8	
  util.go:10		0xd9a			bb08000000		MOVL $0x8, BX		
  util.go:10		0xd9f			4889d9			MOVQ BX, CX		
  util.go:10		0xda2			0f1f440000		NOPL 0(AX)(AX*1)	
  util.go:10		0xda7			e800000000		CALL 0xdac		[1:5]R_CALL:runtime.makeslice<1>	
  util.go:10		0xdac			4889442438		MOVQ AX, 0x38(SP)	
  util.go:10		0xdb1			48c744244008000000	MOVQ $0x8, 0x40(SP)	
  util.go:10		0xdba			48c744244808000000	MOVQ $0x8, 0x48(SP)	
  util.go:11		0xdc3			48c744241800000000	MOVQ $0x0, 0x18(SP)	
  util.go:11		0xdcc			eb00			JMP 0xdce		
  util.go:11		0xdce			48837c241808		CMPQ $0x8, 0x18(SP)	
  util.go:11		0xdd4			7c02			JL 0xdd8		
  util.go:11		0xdd6			eb51			JMP 0xe29		
  util.go:16		0xdd8			488b542460		MOVQ 0x60(SP), DX	
  util.go:16		0xddd			488b4c2418		MOVQ 0x18(SP), CX	
  util.go:16		0xde2			48c1e103		SHLQ $0x3, CX		
  util.go:16		0xde6			90			NOPL			
  util.go:16		0xde7			4885c9			TESTQ CX, CX		
  util.go:16		0xdea			7d02			JGE 0xdee		
  util.go:16		0xdec			eb6b			JMP 0xe59		
  util.go:16		0xdee			4883f940		CMPQ $0x40, CX		
  util.go:16		0xdf2			4819f6			SBBQ SI, SI		
  util.go:16		0xdf5			488b442418		MOVQ 0x18(SP), AX	
  util.go:16		0xdfa			488b7c2440		MOVQ 0x40(SP), DI	
  util.go:16		0xdff			4c8b442438		MOVQ 0x38(SP), R8	
  util.go:16		0xe04			48d3ea			SHRQ CL, DX		
  util.go:16		0xe07			4821f2			ANDQ SI, DX		
  util.go:16		0xe0a			4839c7			CMPQ AX, DI		
  util.go:16		0xe0d			7702			JA 0xe11		
  util.go:16		0xe0f			eb40			JMP 0xe51		
  util.go:16		0xe11			498d3400		LEAQ 0(R8)(AX*1), SI	
  util.go:16		0xe15			8816			MOVB DL, 0(SI)		
  util.go:16		0xe17			eb00			JMP 0xe19		
  util.go:11		0xe19			488b542418		MOVQ 0x18(SP), DX	
  util.go:11		0xe1e			48ffc2			INCQ DX			
  util.go:11		0xe21			4889542418		MOVQ DX, 0x18(SP)	
  util.go:11		0xe26			90			NOPL			
  util.go:11		0xe27			eba5			JMP 0xdce		
  util.go:18		0xe29			488b442438		MOVQ 0x38(SP), AX	
  util.go:18		0xe2e			488b5c2440		MOVQ 0x40(SP), BX	
  util.go:18		0xe33			488b4c2448		MOVQ 0x48(SP), CX	
  util.go:18		0xe38			4889442420		MOVQ AX, 0x20(SP)	
  util.go:18		0xe3d			48895c2428		MOVQ BX, 0x28(SP)	
  util.go:18		0xe42			48894c2430		MOVQ CX, 0x30(SP)	
  util.go:18		0xe47			488b6c2450		MOVQ 0x50(SP), BP	
  util.go:18		0xe4c			4883c458		ADDQ $0x58, SP		
  util.go:18		0xe50			c3			RET			
  util.go:16		0xe51			4889f9			MOVQ DI, CX		
  util.go:16		0xe54			e800000000		CALL 0xe59		[1:5]R_CALL:runtime.panicIndex		
  util.go:16		0xe59			e800000000		CALL 0xe5e		[1:5]R_CALL:runtime.panicshift<1>	
  util.go:16		0xe5e			90			NOPL			
  util.go:9		0xe5f			4889442408		MOVQ AX, 0x8(SP)	
  util.go:9		0xe64			0f1f00			NOPL 0(AX)		
  util.go:9		0xe67			e800000000		CALL 0xe6c		[1:5]R_CALL:runtime.morestack_noctxt	
  util.go:9		0xe6c			488b442408		MOVQ 0x8(SP), AX	
  util.go:9		0xe71			e9f1feffff		JMP "".Ui64toB(SB)	

TEXT "".BtoUi64(SB) gofile..D:/Ming Program/GO/test-learning/src/util/util.go
  util.go:20		0xe76			4883ec30		SUBQ $0x30, SP		
  util.go:20		0xe7a			48896c2428		MOVQ BP, 0x28(SP)	
  util.go:20		0xe7f			488d6c2428		LEAQ 0x28(SP), BP	
  util.go:20		0xe84			4889442438		MOVQ AX, 0x38(SP)	
  util.go:20		0xe89			48895c2440		MOVQ BX, 0x40(SP)	
  util.go:20		0xe8e			48894c2448		MOVQ CX, 0x48(SP)	
  util.go:20		0xe93			48c744241000000000	MOVQ $0x0, 0x10(SP)	
  util.go:21		0xe9c			48c744241800000000	MOVQ $0x0, 0x18(SP)	
  util.go:22		0xea5			48c744242000000000	MOVQ $0x0, 0x20(SP)	
  util.go:22		0xeae			eb00			JMP 0xeb0		
  util.go:22		0xeb0			48837c242008		CMPQ $0x8, 0x20(SP)	
  util.go:22		0xeb6			7202			JB 0xeba		
  util.go:22		0xeb8			eb50			JMP 0xf0a		
  util.go:26		0xeba			488b542418		MOVQ 0x18(SP), DX	
  util.go:26		0xebf			488b442420		MOVQ 0x20(SP), AX	
  util.go:26		0xec4			488b4c2440		MOVQ 0x40(SP), CX	
  util.go:26		0xec9			488b5c2438		MOVQ 0x38(SP), BX	
  util.go:26		0xece			4839c1			CMPQ AX, CX		
  util.go:26		0xed1			7702			JA 0xed5		
  util.go:26		0xed3			eb49			JMP 0xf1e		
  util.go:26		0xed5			4801c3			ADDQ AX, BX		
  util.go:26		0xed8			0fb61b			MOVZX 0(BX), BX		
  util.go:26		0xedb			488b4c2420		MOVQ 0x20(SP), CX	
  util.go:26		0xee0			48c1e103		SHLQ $0x3, CX		
  util.go:26		0xee4			4883f940		CMPQ $0x40, CX		
  util.go:26		0xee8			4819f6			SBBQ SI, SI		
  util.go:26		0xeeb			48d3e3			SHLQ CL, BX		
  util.go:26		0xeee			4821f3			ANDQ SI, BX		
  util.go:26		0xef1			4809da			ORQ BX, DX		
  util.go:26		0xef4			4889542418		MOVQ DX, 0x18(SP)	
  util.go:26		0xef9			eb00			JMP 0xefb		
  util.go:22		0xefb			488b542420		MOVQ 0x20(SP), DX	
  util.go:22		0xf00			48ffc2			INCQ DX			
  util.go:22		0xf03			4889542420		MOVQ DX, 0x20(SP)	
  util.go:22		0xf08			eba6			JMP 0xeb0		
  util.go:28		0xf0a			488b442418		MOVQ 0x18(SP), AX	
  util.go:28		0xf0f			4889442410		MOVQ AX, 0x10(SP)	
  util.go:28		0xf14			488b6c2428		MOVQ 0x28(SP), BP	
  util.go:28		0xf19			4883c430		ADDQ $0x30, SP		
  util.go:28		0xf1d			c3			RET			
  util.go:26		0xf1e			e800000000		CALL 0xf23		[1:5]R_CALL:runtime.panicIndexU	
  util.go:26		0xf23			90			NOPL			

TEXT "".NormalStringtoB(SB) gofile..D:/Ming Program/GO/test-learning/src/util/util.go
  util.go:31		0xf24			493b6610		CMPQ 0x10(R14), SP		
  util.go:31		0xf28			7660			JBE 0xf8a			
  util.go:31		0xf2a			4883ec50		SUBQ $0x50, SP			
  util.go:31		0xf2e			48896c2448		MOVQ BP, 0x48(SP)		
  util.go:31		0xf33			488d6c2448		LEAQ 0x48(SP), BP		
  util.go:31		0xf38			4889442458		MOVQ AX, 0x58(SP)		
  util.go:31		0xf3d			48895c2460		MOVQ BX, 0x60(SP)		
  util.go:31		0xf42			48c744241800000000	MOVQ $0x0, 0x18(SP)		
  util.go:31		0xf4b			440f117c2420		MOVUPS X15, 0x20(SP)		
  util.go:32		0xf51			488b5c2458		MOVQ 0x58(SP), BX		
  util.go:32		0xf56			488b4c2460		MOVQ 0x60(SP), CX		
  util.go:32		0xf5b			31c0			XORL AX, AX			
  util.go:32		0xf5d			e800000000		CALL 0xf62			[1:5]R_CALL:runtime.stringtoslicebyte<1>	
  util.go:32		0xf62			4889442430		MOVQ AX, 0x30(SP)		
  util.go:32		0xf67			48895c2438		MOVQ BX, 0x38(SP)		
  util.go:32		0xf6c			48894c2440		MOVQ CX, 0x40(SP)		
  util.go:33		0xf71			4889442418		MOVQ AX, 0x18(SP)		
  util.go:33		0xf76			48895c2420		MOVQ BX, 0x20(SP)		
  util.go:33		0xf7b			48894c2428		MOVQ CX, 0x28(SP)		
  util.go:33		0xf80			488b6c2448		MOVQ 0x48(SP), BP		
  util.go:33		0xf85			4883c450		ADDQ $0x50, SP			
  util.go:33		0xf89			c3			RET				
  util.go:31		0xf8a			4889442408		MOVQ AX, 0x8(SP)		
  util.go:31		0xf8f			48895c2410		MOVQ BX, 0x10(SP)		
  util.go:31		0xf94			e800000000		CALL 0xf99			[1:5]R_CALL:runtime.morestack_noctxt	
  util.go:31		0xf99			488b442408		MOVQ 0x8(SP), AX		
  util.go:31		0xf9e			488b5c2410		MOVQ 0x10(SP), BX		
  util.go:31		0xfa3			90			NOPL				
  util.go:31		0xfa4			e97bffffff		JMP "".NormalStringtoB(SB)	
