require 'spec_helper'

describe JeRobot2::Robot do

  context 'when facing NORTH' do
    subject { JeRobot2::Robot.new(0, 0, 'NORTH') }

    it 'moves north' do
      subject.move
      expect(subject.y).to eq(1)
    end

    it 'turns left to face west' do
      subject.turn_left
      expect(subject.facing).to eq('WEST')
    end

    it 'turns right to face east' do
      subject.turn_right
      expect(subject.facing).to eq('EAST')
    end
  end

  context 'when facing SOUTH' do
    subject { JeRobot2::Robot.new(0, 0, 'SOUTH') }

    it 'moves south' do
      subject.move
      expect(subject.y).to eq(-1)
    end

    it 'turns left to face east' do
      subject.turn_left
      expect(subject.facing).to eq('EAST')
    end

    it 'turns right to face west' do
      subject.turn_right
      expect(subject.facing).to eq('WEST')
    end
  end

  context 'when facing EAST' do
    subject { JeRobot2::Robot.new(0, 0, 'EAST') }

    it 'moves east' do
      subject.move
      expect(subject.x).to eq(1)
    end

    it 'turns left to face north' do
      subject.turn_left
      expect(subject.facing).to eq('NORTH')
    end

    it 'turns right to face south' do
      subject.turn_right
      expect(subject.facing).to eq('SOUTH')
    end
  end

  context 'when facing WEST' do
    subject { JeRobot2::Robot.new(0, 0, 'WEST') }

    it 'moves west' do
      subject.move
      expect(subject.x).to eq(-1)
    end

    it 'turns left to face south' do
      subject.turn_left
      expect(subject.facing).to eq('SOUTH')
    end

    it 'turns right to face north' do
      subject.turn_right
      expect(subject.facing).to eq('NORTH')
    end
  end

  it "moves 3 spaces east" do
    3.times { subject.move_east }
    expect(subject.x).to eq(3)
  end

  it 'moves 4 spaces east' do
    4.times { subject.move_east }
    expect(subject.x).to eq(4)
  end

  it 'moves 3 spaces west' do
    3.times { subject.move_west }
    expect(subject.x).to eq(-3)
  end

  it 'moves 4 spaces west' do
    4.times { subject.move_west }
    expect(subject.x).to eq(-4)
  end

  it 'moves 3 spaces north' do
    3.times { subject.move_north}
    expect(subject.y).to eq(3)
  end

  it 'moves 4 spaces north' do
    4.times { subject.move_north}
    expect(subject.y).to eq(4)
  end

  it 'moves 3 spaces south' do
    3.times { subject.move_south}
    expect(subject.y).to eq(-3)
  end

  it 'moves 4 spaces south' do
    4.times { subject.move_south}
    expect(subject.y).to eq(-4)
  end

end
