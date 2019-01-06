# require modules here
require 'yaml'


def load_library(file)
  # code goes here

  emoji = YAML.load_file(file)

  emoji_hash = {}
  
  emoji_hash["get_emoticon"] = {}
  emoji_hash["get_meaning"] = {}
  
    emoji.each do |words, emoji_set|
        
        english = emoji_set[0]
        japanese = emoji_set[1]
        emoji_hash["get_emoticon"][english] = japanese
        emoji_hash["get_meaning"][japanese] = words
    end
    emoji_hash
end


def get_japanese_emoticon(file, emoji)
    
  # code goes here
  emoji_hash = load_library(file)
  
  emoji_result = emoji_hash["get_emoticon"][emoji]
  
      if emoji_result == nil
          emoji_result = "Sorry, that emoticon was not found"
      end
  
  emoji_result
end


def get_english_meaning(file, emoji)
  # code goes here
  
  emoji_hash = load_library(file)
  
  emoji_result = emoji_hash["get_meaning"][emoji]
  
    if emoji_result == nil
      emoji_result = "Sorry, that emoticon was not found"
    end
  
  emoji_result
end
