require 'spec_helper'

describe JeRobot2::CLI do
  subject { JeRobot2::CLI.new }

  context 'load commands' do
    it 'loads commands from a file' do
      path = File.dirname(__FILE__) + "/fixtures/commands.txt"
        commands = subject.load_commands(path)
        expect(commands).to eq([
        [:place, 0, 0, "NORTH"],
        [:move],
        [:turn_right],
        [:turn_left],
        [:report]
        ])
    end
  end
end
