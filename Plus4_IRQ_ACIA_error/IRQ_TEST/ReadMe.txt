Update:  A third and fourth program have been added, and
included in the .D64 image.  The third program is the same
as the second, with some delay added on either side of
writing the transmit byte, just to see if that makes any
difference.  The fourth program adopts a different way
of preventing the double interrupts - reading the status
register again after writing the transmit byte.  That may
release the IRQ line and prevent the second interrupt.


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

