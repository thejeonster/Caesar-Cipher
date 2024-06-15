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
        key_val = $conversion_hash[phrase[i].downcase] + num 
        $new_word << $inverted_conversion[key_val] 
    end
    puts $new_word
end 

caesar_cipher("Hello", 5)
