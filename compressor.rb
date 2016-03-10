def compress(string)
  i = 0
  new_string = ''
  while i < string.length do
    j = 0
    count = 0
    while j < 9 && string[i] == string [i+j]
      j += 1
    end
    new_string << "#{j}#{string[i]}"
    i += j
  end
  return new_string
end

def decompress(string)
  decompressed_string = ''
  string.scan(/../).each do |pair|
    decompressed_string << (pair[1] * pair[0].to_i)
  end
  return decompressed_string
end
