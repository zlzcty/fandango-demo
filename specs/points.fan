import struct

<start>         ::= <length> "\n" <content>
<length>        ::= <int32_str> := str(len(<content>))
<content>       ::= <point>+
<point>         ::= <float64_str> "\n"


<int32_str>     ::= <byte>+     := str(struct.unpack('>i', bytes(<int32>))[0])
<int32>         ::= <byte>{4}   := struct.pack('>i', int(<int32_str>))

<float64_str>   ::= <byte>+     := str(struct.unpack('>d', bytes(<float64>))[0])
<float64>       ::= <byte>{8}   := struct.pack('>d', float(<float64_str>))
