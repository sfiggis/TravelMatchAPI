class AddJourneyProfileIndexToJourneys < ActiveRecord::Migration[5.1]
  def change
    add_reference :journeys, :journey_profile, index: true
  end
end
