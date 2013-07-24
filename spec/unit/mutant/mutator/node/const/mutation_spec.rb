require 'spec_helper'

describe Mutant::Mutator::Node::NamedValue::Access, 'const' do

  before do
    Mutant::Random.stub(:hex_string => :random)
  end

  let(:source) { 'A::B' }

  let(:mutations) do
    mutants = []
    mutants << 'nil'
    mutants << 'nil::B'
  end

  it_should_behave_like 'a mutator'
end
