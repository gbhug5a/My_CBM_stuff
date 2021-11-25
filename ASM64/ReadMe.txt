
ASM64 is a symbolic native assembler for the C64.  Source
code is entered as text, without line numbers, into an
editor based on the SpeedScript word processor.  Source code
would look like this:

split   lda rnum     :init temp with rnum
        sta temp
        lda rnum+1
        sta temp+1
        ldx #$11     :set count for shifting
        lda #0       :init Acc to 0 - MSB of product
        beq shift2   :shift out low bit to start
mloop   bcc shift    :was shifted out bit a 1?
        clc          :yes
        adc size     :add size before next shift
shift   ror          :shift everything to the right
shift2  ror temp+1
        ror temp
        dex
        bne mloop    :loop till all bits processed

ASM64 does a two-pass assembly.  While multiple linked
source code files may be used, the maximum output object
code is 12K bytes.  There is no provision for macros or
libraries, and only the original standard 6502 opcodes are
supported.  As with the original SpeedScript, only drive 8
is used.  Except for the initial SYS command, the entire
program is ML.  The source code for ASM64 itself is also
provided, so you may revise the assembler as you like.

Included here are:

1. ASM64.PRG - the executable assember.  Load and Run.
2. ASM64.SC1 thru .SC4 - Source code for ASM64.
3. ASM64HLP.ASC, .PET, .SC - Instructions in Ascii, Petscii,
    and SpeedScript (or Assembler) text file format, which
    is actually screen code saved as a PRG file.
4. This ReadMe file.

This C64 version of the assembler also has built-in a copy
of MLMON64, a machine language monitor program.  You can
exit the assembler, go into Monitor, and examine, move,
save, etc. the object code.
