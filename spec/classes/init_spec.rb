require 'spec_helper'
describe 'selajnux' do

  context 'with defaults for all parameters' do
    it { should contain_class('selajnux') }
  end
end
