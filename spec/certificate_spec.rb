require 'date'
require './lib/certificate'

describe Certificate do
  describe '#date=' do
    it 'accepts a date object' do
      Certificate.new.date = Date.new(2012,1,1)
    end
  end
  describe '#date' do
    before do
      @certificate = Certificate.new
    end
    context 'when a date has been assigned' do
      before do
        @certificate.date = Date.new(2012,1,1)
      end
      it 'returns a Date object' do
        @certificate.date.should be_an_instance_of(Date)
      end
      it 'is equal to the date object that was assigned via date=' do
        @certificate.date.should == Date.new(2012,1,1)
      end
    end
    context 'when a date has not been assigned' do
      it 'returns nil' do
        @certificate.date.should be_nil
      end
    end
  end
end