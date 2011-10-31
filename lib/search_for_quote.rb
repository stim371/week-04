# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def search_for_quote(fileinfo)

  list_of_quotes = all_quotes(fileinfo[:file])
  fileinfo.delete(:file)
  
  results =  fileinfo.map {|search_pair| list_of_quotes.select {|line| line =~ search_string(*search_pair) }}.flatten

  results.empty? ? list_of_quotes : results

end

def search_string(crit, val)
  myregex = Regexp.new(/^#{val}/) if crit == :start_with
  myregex = Regexp.new(/#{val}/) if crit == :include
  myregex = Regexp.new(/#{val}$/) if crit == :end_with
  myregex
end