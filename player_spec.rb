require_relative 'player'

describe Player do

  before do
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
  end

  it "has a capitalized name" do
    expect(@player.name).to eq("Larry")
  end

  it "has an initial health" do
    expect(@player.health).to eq(150)
  end

  it "has a string representation" do
    expect(@player.to_s).to eq("I am Larry with health of 150 and Score of 155")
  end

  it "computes a score as a sum of its health and length of name" do
    expect(@player.score).to eq(155)
  end

  it "increases health by 15 when w00ted" do
    @player.w00t
    expect(@player.health).to eq(165)
  end

  it "decreases health by 10 when blammed" do
    @player.blam
    expect(@player.health).to eq(140)
  end
end
