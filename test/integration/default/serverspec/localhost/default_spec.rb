# Encoding: UTF-8

require_relative '../spec_helper.rb'

describe 'devopracy-base::default' do
  base_packages = [
    'fish',
    'wget',
    'git',
    'vim',
    'tmux',
    'lynx',
    'jq',
    'htop'
  ]

  base_packages.each do |p|
    describe package(p) do
      it 'is installed' do 
        expect(subject).to be_installed
      end 
    end
  end

end
