# 
# Here is where you will write the method #find_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def find_quote(filename, *a)

  if File.exists? filename
    file = File.open(filename).readlines
    if a.empty? || a.first > file.length
      file[rand(file.length)]
    else
      file[a.first.to_i].chomp
    end
  else
    "Could not find a quote at this time"
  end

end