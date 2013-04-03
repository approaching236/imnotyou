require 'spec_helper'

describe Show do
  it 'should have required fields' do
    show = create_valid_show
    show.should be_valid
  end
end

def create_valid_show
  show = Show.new
  show.all_ages = false
  show.bands = 'Animal Collective'
  show.cover = '10.00'
  show.date = '10/11/14'
  show.venue = 'casbah'
  show
end
