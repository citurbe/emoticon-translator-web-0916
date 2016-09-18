# require modules here
require "yaml"
require 'pry'


=begin

{"angel"=>["O:)", "☜(⌒▽⌒)☞"],
 "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
 "bored"=>[":O", "(ΘεΘ;)"],
 "confused"=>["%)", "(゜.゜)"],
 "embarrased"=>[":$", "(#^.^#)"],
 "fish"=>["><>", ">゜))))彡"],
 "glasses"=>["8D", "(^0_0^)"],
 "grinning"=>["=D", "(￣ー￣)"],
 "happy"=>[":)", "(＾ｖ＾)"],
 "kiss"=>[":*", "(*^3^)/~☆"],
 "sad"=>[":'(", "(Ｔ▽Ｔ)"],
 "surprised"=>[":o", "o_O"],
 "wink"=>[";)", "(^_-)"]}
 

=end


def load_library(path)
  library = YAML.load_file(path)
  output_library = {
  	"get_emoticon" => {},
  	"get_meaning" => {}
  }
 	
 library.each do |title, emoticon_array|
 	output_library["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
 	output_library["get_meaning"][emoticon_array[1]] = title

 end
 output_library
end

def get_japanese_emoticon(path, emoticon)
	
	library = load_library(path)
	output = library["get_emoticon"][emoticon]
	return "Sorry, that emoticon was not found" if output == nil
	output
  # code goes here
end

def get_english_meaning(path, j_emoticon)
	library = load_library(path)
	output = library["get_meaning"][j_emoticon]
	return "Sorry, that emoticon was not found" if output == nil
	output
  # code goes here
end