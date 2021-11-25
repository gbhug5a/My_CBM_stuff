The source code printout was not originally the final version of the program, but I believe all the changes have been entered on it in pencil.

It was originally written for the C-16 and +4.  The changes needed for the C64 version are shown in ":comments".

This code came from a disassembly of the C-16 built-in monitor code.  That process produces non-meaningful labels, and of course no comments at all.  The hand-written notes are just my attempt to figure out what's going on.

The first part of the code is actually part of the BASIC loader.  It moves the monitor code to the location you choose, and modifies the absolute addresses accordingly.  The actual final monitor code begins at label MNMSG on page 3.

As for the A and D commands, it appears the key is the section that determine's the opcode's mnemonic, addressing mode, and instruction length.  That takes place at LF752, which at some point calls LF7D4 and INSTR.
