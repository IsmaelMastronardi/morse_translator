def input_morse_code (user_input)
  m_code = user_input.split("   ")
  m_code.map! { |n| change_into_word(n) }
  puts m_code.join
end

def change_into_word(word)
  letterArr = word.split
  letterArr.map! do  |n| n = MORSE_CODE_TABLE[n] end
  return letterArr.join + " "
end
 


puts "Please enter some morse code in the terminal: "

user_input = gets.chomp

input_morse_code(user_input)
# input_morse_code('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

