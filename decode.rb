Morse_code = {
    '.-' => 'a',
    '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}

def decode_char(char)
    Morse_code[char].upcase
end

def decode_word(word)
    word.split.map { |char| decode_char(char) }.join('')
end

def decode(sentence)
    sentence.split('  ').map { |word| decode_word(word) }.join('  ')
end

puts decode_char(".-") 
puts decode_word("-- -.--")
puts decode("-- -.--   -. .- -- .")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")