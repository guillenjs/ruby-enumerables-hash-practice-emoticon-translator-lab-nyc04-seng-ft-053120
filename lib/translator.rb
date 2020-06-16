# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)
  emoticons = YAML.load_file(file_path)
    emoticons.each_with_object({}) do |(key, value), result|
        if !result[key]
          result[key] = {"english": value[0], "japanese": value[1] }
        end
        result
      end
end

def get_japanese_emoticon(file_path, emoticons)
  # code goes here
  emoticon_hash = load_library(file_path)
  # emoticon_hash.each do |key, value|
  #   value.each do |inner_key, inner_value|
  #     if emoticons == inner_value
  #       key
  #     else
  #       nil
  #     end
  #   end
  # end

end

def get_english_meaning(file_path, emoticons)
  # code goes here

  emoticons_list = load_library(file_path)
emoji = emoticons
  emoticons_list.each do|key, value|
    value.each do|inner_key, inner_value|
      if emoji == inner_value
         return key
       else
          "Sorry, that emoticon was not found"
       end
    end
  end
end
