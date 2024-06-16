$conversion_hash = {
    'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6,
    'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10, 'k' => 11, 'l' => 12,
    'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' => 18,  
    's' => 19, 't' => 20, 'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24,
    'y' => 25, 'z' => 26
}

$inverted_conversion = $conversion_hash.invert 
$new_word = ''
def caesar_cipher(phrase, num) 
    word_len = phrase.length - 1
    for i in 0..word_len
        if $conversion_hash.keys.include?(phrase[i]) == true
            if phrase[i] == phrase[i].upcase
                key_val = $conversion_hash[phrase[i].downcase] + num 
                    if key_val > 26
                        key_val = key_val - 26 
                        $new_word << $inverted_conversion[key_val].upcase
                    else 
                        $new_word << $inverted_conversion[key_val].upcase 
                    end 
            else 
                key_val = $conversion_hash[phrase[i].downcase] + num
                    if key_val > 26
                        key_val = key_val - 26 
                        $new_word << $inverted_conversion[key_val].to_s
                    else         
                        $new_word << $inverted_conversion[key_val].to_s 
                    end 
            end
        else 
            if phrase[i] == ' '
                $new_word << ' '
            else 
                $new_word << phrase[i]
            end 
        end 
    end
    puts $new_word
end 

caesar_cipher("Hello, my name is Junho", 5)
