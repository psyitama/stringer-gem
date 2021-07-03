require "spec_helper"
describe Stringer do
  it "Concatenates undefined number of strings with a space." do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "Minify the string with the given length and if the string shorter than the given length should return the string itself." do
    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
    expect(Stringer.minify("Hello", 10)).to eq("Hello")
  end

  it "Iterates over a string and replaces each instance of that word with the replacement provided." do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end

  it "Iterates over a string and adds each word into an array, then returns that array." do
    expect(Stringer.tokenize "I love to code").to eq(["I", "love", "to", "code"])
  end

  it "Remove each instance of the second parameter within the original string." do
    expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
  end
end