TEXT main.main(SB) D:/Ming Program/GO/goroutine-learning/main.go
  main.go:11		0x46f600		493b6610		CMPQ 0x10(R14), SP				
  main.go:11		0x46f604		0f86a5000000		JBE 0x46f6af					
  main.go:11		0x46f60a		4883ec40		SUBQ $0x40, SP					
  main.go:11		0x46f60e		48896c2438		MOVQ BP, 0x38(SP)				
  main.go:11		0x46f613		488d6c2438		LEAQ 0x38(SP), BP				
  main.go:12		0x46f618		488d0541720000		LEAQ runtime.types+26720(SB), AX		
  main.go:12		0x46f61f		90			NOPL						
  main.go:12		0x46f620		e87bbef9ff		CALL runtime.newobject(SB)			
  main.go:12		0x46f625		4889442428		MOVQ AX, 0x28(SP)				
  main.go:12		0x46f62a		833dafab0e0000		CMPL $0x0, runtime.writeBarrier(SB)		
  main.go:12		0x46f631		7402			JE 0x46f635					
  main.go:12		0x46f633		eb09			JMP 0x46f63e					
  main.go:12		0x46f635		48c70000000000		MOVQ $0x0, 0(AX)				
  main.go:12		0x46f63c		eb0c			JMP 0x46f64a					
  main.go:12		0x46f63e		4889c7			MOVQ AX, DI					
  main.go:12		0x46f641		31c9			XORL CX, CX					
  main.go:12		0x46f643		e89898feff		CALL runtime.gcWriteBarrierCX(SB)		
  main.go:12		0x46f648		eb00			JMP 0x46f64a					
  main.go:13		0x46f64a		488d050f6a0000		LEAQ runtime.types+24672(SB), AX		
  main.go:13		0x46f651		e84abef9ff		CALL runtime.newobject(SB)			
  main.go:13		0x46f656		4889442430		MOVQ AX, 0x30(SP)				
  main.go:13		0x46f65b		48c7002a000000		MOVQ $0x2a, 0(AX)				
  main.go:14		0x46f662		488b442428		MOVQ 0x28(SP), AX				
  main.go:14		0x46f667		488b4c2430		MOVQ 0x30(SP), CX				
  main.go:14		0x46f66c		31db			XORL BX, BX					
  main.go:14		0x46f66e		e88d4bfeff		CALL sync/atomic.CompareAndSwapPointer(SB)	
  main.go:16		0x46f673		488b4c2428		MOVQ 0x28(SP), CX				
  main.go:16		0x46f678		488b09			MOVQ 0(CX), CX					
  main.go:16		0x46f67b		48894c2420		MOVQ CX, 0x20(SP)				
  main.go:17		0x46f680		8401			TESTB AL, 0(CX)					
  main.go:17		0x46f682		488b09			MOVQ 0(CX), CX					
  main.go:17		0x46f685		48894c2418		MOVQ CX, 0x18(SP)				
  main.go:17		0x46f68a		e8112ffcff		CALL runtime.printlock(SB)			
  main.go:17		0x46f68f		488b442418		MOVQ 0x18(SP), AX				
  main.go:17		0x46f694		e80736fcff		CALL runtime.printint(SB)			
  main.go:17		0x46f699		e86231fcff		CALL runtime.printnl(SB)			
  main.go:17		0x46f69e		6690			NOPW						
  main.go:17		0x46f6a0		e87b2ffcff		CALL runtime.printunlock(SB)			
  main.go:18		0x46f6a5		488b6c2438		MOVQ 0x38(SP), BP				
  main.go:18		0x46f6aa		4883c440		ADDQ $0x40, SP					
  main.go:18		0x46f6ae		c3			RET						
  main.go:11		0x46f6af		e8ec74feff		CALL runtime.morestack_noctxt.abi0(SB)		
  main.go:11		0x46f6b4		e947ffffff		JMP main.main(SB)				
