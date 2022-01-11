require './lib/activity'
require 'pry'
RSpec.describe Activity do
  before(:each) do
  @activity = Activity.new("Brunch")
  end
  it 'exists' do
    expect(@activity).to be_a(Activity)
  end

  it 'has empty hash of partisipants' do
    expect(@activity.participants).to eq({})
  end

  it 'can add participants to hash, with name key and intiger value' do
      @activity.add_participant("Maria", 20)
    expect(@activity.participants).to eq({"Maria" => 20})
  end

  it 'can calculate total cost of activity' do
    @activity.add_participant("Maria", 20)
    expect(@activity.total_cost).to eq(20)
  end

  it 'can add multipule participants' do
    @activity.add_participant("Maria", 20)
    @activity.add_participant("Luther", 40)
    expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
  end

  it 'can calulate total cost for many partisipants' do
    @activity.add_participant("Maria", 20)
    @activity.add_participant("Luther", 40)
    expect(@activity.total_cost).to eq(60)
  end

end
