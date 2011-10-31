

# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def url_builder(url, params = { :results => 10 })
  url + "?" << params.delete_if { |key, value| value == nil }.map { |hash_item| hash_item.join("=")}.join("&")
end