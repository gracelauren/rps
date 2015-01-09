require('rspec')
require('beats')

describe('String#beats') do

  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats("scissors")).to(eq("Player One Wins"))
  end

  it("returns true if scissors is the object and paper is the argument") do
    expect("scissors".beats("paper")).to(eq("Player One Wins"))
  end

  it("returns true if paper is the object and rock is the argument") do
    expect("paper".beats("rock")).to(eq("Player One Wins"))
  end

  it("returns false if none of the above combinations occur") do
    expect("scissors".beats("rock")).to(eq("Player Two Wins"))
  end

  it("assigns player two a random argument if player two = 'random'") do
    expect("scissors".beats("random")).to(eq(("Player One Wins")||("Player Two Wins")||("It's a tie!")))
  end

  it("returns It's a tie, if the object and the argument match") do
    expect("rock".beats("rock")).to(eq("It's a tie!"))
  end
end
