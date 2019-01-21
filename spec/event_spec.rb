require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
    it 'creates an event' do
      event = Event.new("2010-10-31 12:00", 30, "Mes grosses couilles poilues", ["truc@machin.com", "bidule@chose.fr"])

      expect(event.class).to eq(Event)
      expect(event.postpost_24h).not_to be_nil

		end
	end

end