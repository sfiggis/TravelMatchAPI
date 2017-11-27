class ChangeJourneyProfileDurationToInt < ActiveRecord::Migration[5.1]
  def change
    remove_column :journey_profiles, :duration
    add_column :journey_profiles, :duration, :integer
  end
end
