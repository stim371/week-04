
# 
# Here is where you will write the method #display_superheroes.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

#require_relative 'assignment'

def display_superheroes(*array_of_superheroes)
  array_of_superheroes.flatten.uniq.each {|a| puts a }
end
  
#puts display_superheroes(SuperHeroes.first)