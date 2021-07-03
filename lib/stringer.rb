require "stringer/version"
module Stringer
  def self.spacify *strings
    string = ""
    strings.each_with_index do |s, i|
      if i == 0
        string += "" + s 
      else
        string += " " + s
      end
    end
    string
  end

  def self.minify string, length
    if string.length > length
      string = string[0,length] + + "..."
    end
    string
  end

  def self.replacify string, old_s, new_s
    string[old_s] = new_s
    string
  end

  def self.tokenize string
   string.split(/ /)
  end

  def self.removify string, remove
    string.slice! " "+remove
    string
  end

end