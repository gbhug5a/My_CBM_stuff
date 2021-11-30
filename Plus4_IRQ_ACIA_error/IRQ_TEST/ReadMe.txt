There are two programs here for the Plus/4 to test the
behavior of the 6551 ACIA transmit interrupts.  Each
program counts the number of ACIA interrupts that take
place while transmitting 256 characters at 2400 baud.

The first program handles everything normally, but my
suspicion is that this will result in double interrupts
for each character.  If that's the case, the program
will report about 512 interrupts.

The second program attempts to prevent the double
interrupts, if they occur at all, by disabling
transmit interrupts while the byte is being written
to the ACIA, then re-enabling them after. If this works,
it will report about 256 interrupts.

These programs should be run on a Plus/4 with nothing
installed in the User Port - no modem or anything else.

Included are the .PRG files, ascii listings of those files,
a .D64 disk image containg the two .PRGs, and the source
code for the ML portions (the DATA statements).

