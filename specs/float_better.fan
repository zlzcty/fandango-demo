import struct

<start>         ::= <float64_str>

<float64_str>   ::= <byte>+     := str(struct.unpack('>d', bytes(<float64>))[0])
<float64>       ::= <byte>{8}   := struct.pack('>d', float(<float64_str>))

# Converts bytes to float string representation, and back