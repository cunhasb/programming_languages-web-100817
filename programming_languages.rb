#require 'pry'
def reformat_languages(languages)
  # your code here
  #hash = languages
  new_hash = {}
  languages.each do |style, values|
    values.each do |lang,attributes|  
      if new_hash.key?(lang)
        new_hash[lang][:style] << style
      else
        new_hash[lang]=attributes
        new_hash[lang][:style] = [style]
      end
    end
  end
new_hash
end
#binding.pry
