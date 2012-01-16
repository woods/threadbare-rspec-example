require 'date'
require './lib/certificate'

describe 'Our certificate program' do
  before do
    $date = nil
  end
  describe 'set_date' do
    it 'accepts a date object' do
      set_date(Date.new(2012,1,1))
    end
  end
  describe '#date' do
    context 'when a date has been assigned' do
      before do
        set_date(Date.new(2012,1,1))
      end
      it 'returns a Date object' do
        date.should be_an_instance_of(Date)
      end
      it 'is equal to the date object that was assigned via date=' do
        date.should == Date.new(2012,1,1)
      end
    end
    context 'when a date has not been assigned' do
      it 'returns nil' do
        date.should be_nil
      end
    end
  end
end