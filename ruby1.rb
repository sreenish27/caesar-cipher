def caesar_cipher(sentence, shift)
  final_string = ""
  sentence.each_char do |c|
    if c.ord >= 'A'.ord && c.ord <= 'Z'.ord
      if c.ord + shift > 'Z'.ord 
        new_ord = c.ord + shift - 26
        final_string += new_ord.chr
      else
        new_ord = c.ord + shift
        final_string += new_ord.chr
      end
    elsif c.ord >= 'a'.ord && c.ord <= 'z'.ord
      if c.ord + shift > 'z'.ord 
        new_ord = c.ord + shift - 26
        final_string += new_ord.chr
      else
        new_ord = c.ord + shift
        final_string += new_ord.chr
      end
    else
      final_string += c
    end
  end
  return final_string
end
