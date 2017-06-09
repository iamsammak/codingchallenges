require 'rspec'
require 'primes'

describe "#is_prime?" do
  it "returns false if n == 1" do
    expect(is_prime?(1)).to be false
  end

  it "returns false if n == 0" do
    expect(is_prime?(0)).to be false
  end

  it "returns true if n == 2 " do
    expect(is_prime?(2)).to be true
  end

  it "returns false if n is negative" do
    expect(is_prime?(-1)).to be false
  end

  it "returns true if n is prime" do
    expect(is_prime?(3)).to be true
  end

  it "returns false if n is not prime" do
    expect(is_prime?(4)).to be false
  end
end
