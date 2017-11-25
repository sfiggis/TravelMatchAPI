class CreateJourneyProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :journey_profiles do |t|
      t.references :user, foreign_key: true
      t.float :budget
      t.datetime :duration
    end
  end
end
