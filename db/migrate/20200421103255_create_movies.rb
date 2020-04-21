class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :rating
      t.date :release_date

      t.timestamps
    end
  end
end
