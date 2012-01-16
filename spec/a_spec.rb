
describe 'The global variable $a' do
  before do
    $a = nil
  end
  context 'when the a.rb file is loaded' do
    before do
      load './lib/a.rb'
    end
    it 'is set to 12' do
      $a.should == 12
    end
  end
end

describe 'asdf' do
  it 'returns the string "asdf"' do
    asdf.should == 'asdf'
  end
end