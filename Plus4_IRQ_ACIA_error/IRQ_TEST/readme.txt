This PLus/4 program attempts to quantify the delay which occurs
between the writing of a new byte to the 6551 transmit data register
and the generation of a new interrupt by the 6551.  It is believed
this delay may be 1/16th of a bit period, which means it is dependent
on the baud rate.  The program tests the delay for 1200, 2400, 4800,
9600 and 19200 baud, and does so once with the screen blanked, and
again with the screen restored.  The processor clock should differ
between the two screen states.

The basic program increases the number of iterations of a delay loop
in the ML portion (see the .src file) until the reading of the status
register (ora $fd01) occurs *after* the interrupt is generated, which
effectively cancels that interrupt.

