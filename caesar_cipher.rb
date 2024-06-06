def isUpcase(str)
    return str == str.upcase ? true : false
end

def isFound(string, array)
    return array.include?(string.downcase)
end

def foundIndex(letter, array, factor)
    index = array.index(letter)
    actualIndex = index + factor
    if (actualIndex > array.length)
        return actualIndex - array.length
    else
        return actualIndex
    end
end

def caesar_cipher(string, factor)
    alphabet = ('a'..'z').to_a
    i = 0;
    encrypted = []
    splitted_string = string.chars
    splitted_string.each_with_index do |item, index|
        if (isFound(item, alphabet))
            indexAlphabet = foundIndex(item.downcase, alphabet, factor);
            if (isUpcase(item))
                encrypted.push(alphabet[indexAlphabet].upcase)
            else
                encrypted.push(alphabet[indexAlphabet])
            end
        else
            encrypted.push(item)
        end
        i += 1
        break if i >= splitted_string.length
    end
    return encrypted.join();
end

# puts caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"