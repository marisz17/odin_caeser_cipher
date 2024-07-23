def caesar_cipher(string, shift_number)
  def keep_same_case(character, shift_number)
    def new_key(character, shift_number)
      alphabet = Array("a".."z")
      character_index = alphabet.index(character)
      new_alphabet = alphabet.shift(shift_number).unshift(alphabet).flatten!
      character_index ? new_alphabet[character_index] : character
    end
  
    if character.ord >= 65 && character.ord < 91
      return new_key(character.downcase,shift_number).upcase
    else
      return new_key(character, shift_number)
    end
  end
  string.split("").map {|character| keep_same_case(character, shift_number)}.join("")
end

p caesar_cipher("What a string!", 5)