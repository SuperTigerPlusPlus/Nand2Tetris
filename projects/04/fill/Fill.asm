// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

//C-Style code
//while(true) {
//while(buttonPressed()){
//paintScreenBlack();
//}
//paintScreenWhite();
//}

//Assembler code
//while(true) - loop
(START)
	//Check, if button was pressed
	//If Button==0 (no button pressed) than paint white and back to start
	@KBD
	D=M
	
	//Jump to paintwhite, if nothing pressed
	@PAINTWHITE
	D;JEQ
	//else, jump to paintblack (jumping is unnecessary, because the next block)
	//is (paintblack). I left it in for clearity. 
	@PAINTBLACK
	0;JMP
	
	//Paint screen back
	(PAINTBLACK)
	
	@SCREEN
	D=A
	@POSITION //This stores the position on the screen
	//(unit is 16 bit-words)
	M=D
	
	(BLACKLOOP) //go through whole display
		@32767 //15-bits only is the maximum of @-command
		//Therefore this is only 0111 1111 1111 1111,
		//but we need 1111 1111 1111 1111
		D=A
		D=D+A
		D=D+1 //now we  have 1111 1111 1111 1111
		@POSITION
		A=M
		M=D //paint word
		
		//Move to next word
		@POSITION
		M=M+1
		
		//Check if Blackloop should be ended
		@24576 //8192 is the number of words that represent the screen
		//screen starts at 16384. So end of screen is at: 8192+16384=24576
		D=A
		@POSITION
		D=D-M
		@BLACKLOOP
		D;JGT
	
	//Back to start
	@START
	0;JMP
	
	//Paint screen back
	(PAINTWHITE)
	
	@SCREEN
	D=A
	@POSITION //This stores the position on the screen
	//(unit is 16 bit-words)
	M=D
	
	(WHITELOOP) //go through whole display
		@0 //this equals 0000 0000 0000 0000 (aka white word/screen)
		D=A
		@POSITION
		A=M
		M=D //paint word
		
		//Move to next word
		@POSITION
		M=M+1
		
		//Check if Whiteloop should be ended
		@24576 //8192 is the number of words that represent the screen
		//screen starts at 16384. So end of screen is at: 8192+16384=24576
		D=A
		@POSITION
		D=D-M
		@WHITELOOP
		D;JGT
	
	//Back to start
	@START
	0;JMP