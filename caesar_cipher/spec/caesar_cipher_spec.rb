require 'spec_helper'
require 'caesar_cipher'

describe CaesarCipher do
  let(:caesar_cipher) {CaesarCipher.new}
  w = "hello"

  it "result returns as a string" do
    caesar_cipher.codify(w, 0)
    expect(caesar_cipher.result.class).to eq String 
  end

  it "contents of caesar array don't match contents of english array" do
    caesar_cipher.codify(w, 1)
    expect(caesar_cipher.result).not_to eq w 
  end

  it "result returns array of the same length as english" do
    caesar_cipher.codify(w, 0)
    expect(caesar_cipher.result.length).to eq w.length
  end

  it "translates correctly via 1 degree positive change" do
    caesar_cipher.codify(w, 1)
    expect(caesar_cipher.result).to eq "ifmmp"
  end

end
