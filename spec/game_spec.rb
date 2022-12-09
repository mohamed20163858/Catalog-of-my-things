require './game'

describe Game do
  let(:game) { Game.new('Mario', true, '2022-10-10', '2002-10-10', true) }

  it 'has an name' do
    expect(game.name).to eq('Mario')
  end

  it 'has a multiplayer' do
    expect(game.multiplayer).to eq(true)
  end

  it 'test the existence of Game class' do
    expect(game).to be_instance_of(Game)
  end
end
