require 'pry'

def starts_with_a_vowel?(word)
    word.scan(/\b[aeiouAEIOU]/) == [] ? false : true
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/un\w*ing/)
end

def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.scan(/^[A-Z].*[.?!"']$/) == [] ? false : true
end

def valid_phone_number?(phone)
    # p phone
    phone.scan(/\(?\d{3}[-) ]?\d{3}[- ]?\d{4}/) == [] ? false : true
    # phone.scan(/^(?:\+?(\d{1,3}))?[-. (]?(\d{2,3})[-. )]?(\d{3,4})[-. ]?(\d{4})(?: (#|x|ext|extiontion)\.?\s?(\d+))?$/) == [] ? false : true
    # phone.scan(/^\s(?:+?(\d{1,3}))?[-. (](\d{3})[-. )](\d{3})[-. ](\d{4})(?: x(\d+))?\s$/) == [] ? false : true # not passing
end
