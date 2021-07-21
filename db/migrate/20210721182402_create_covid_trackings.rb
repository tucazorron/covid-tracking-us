class CreateCovidTrackings < ActiveRecord::Migration[6.1]
  def change
    create_table :covid_trackings do |t|
      t.string :date
      t.integer :total_deaths
      t.integer :total_hospitalized
      t.integer :daily_deaths
      t.integer :daily_hospitalized

      t.timestamps
    end
  end
end
