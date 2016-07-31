// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//C-Style code:
//R2 = 0;
//for (i=0;i++;i<=R0) {
//R2 = R2 + R1;
//}

//Assembler code:

//<-- Initialiaze variables -->
//Set R2 to zero
@R2
M=0

//Number how much R1 should be added to itself
@R0
D=M
@i
M=D

//Multiplication loop
(LOOP)
	//Check if loop should be exited (if R1 has beed added enough times to itself)
	@i
	D=M
	@END
	D;JLE //could have also used JEQ, but for safety reasons used JLE
	
	//Decrease counter
	@i
	M=M-1
	
	//Do "multiplication":
	@R2
	D=M
	@R1
	D=D+M
	@R2
	M=D
	
	//Jump back to beginning
	@LOOP
	0;JMP
(END)
	@END
	0;JMP //Inifinite loop, progamms comes to a stop


