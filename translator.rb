MORSE_CODE_TABLE = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y", 
  "--.." => "Z",  
  "-----" => "0",
  ".----" => "1",
  "..---" => "2",
  "...--" => "3",
  "....-" => "4",
  "....." => "5",
  "-...." => "6",
  "--..." => "7",
  "---.." => "8",
  "----." => "9",
}

def input_morse_code (user_input)
  m_code = user_input.split("   ")
  m_code.map! { |n| change_into_word(n) }
  puts m_code.join
end

def change_into_word(word)
  letter_arr = word.split
  letter_arr.map! do  |n| n = MORSE_CODE_TABLE[n] end
  return letter_arr.join + " "
end
 


puts "Please enter some morse code in the terminal: "

user_input = gets.chomp

input_morse_code(user_input)
