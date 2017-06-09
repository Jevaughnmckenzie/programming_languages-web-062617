def reformat_languages(languages)
  # your code here

  new_hash = {}

  languages.each do |style, language_hash|

    language_hash.each do |language, type_hash|



      if new_hash[language]
        new_hash[language][:style] << style
      else
        new_hash[language] = type_hash
        new_hash[language][:style] = [style]
      end

    end

  end

  # binding.pry
  new_hash
end
