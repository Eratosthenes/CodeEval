bytes = [1].pack('S').unpack('C*')
puts bytes[0] == 0 ? 'BigEndian' : 'LittleEndian'
