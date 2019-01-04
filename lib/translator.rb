# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  return_hash = {'get_meaning' => {}, 'get_emoticon' => {}}
  library.each do |meaning, emoticon|
    return_hash['get_meaning'][emoticon[1]] = meaning
    return_hash['get_emoticon'][emoticon[0]] = emoticon[1]
  end
  return_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  library = load_library(path)
  if library['get_emoticon'].include?(emoticon)
    library['get_emoticon'][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, meaning)
  # code goes here
  library = load_library(path)
  if library['get_meaning'].include?(meaning)
    library['get_meaning'][meaning]
  else
    "Sorry, that emoticon was not found"
  end
end
