class CreateBrainCandies < ActiveRecord::Migration
  def change
    create_table :brain_candies do |t|
      t.string :name

      t.timestamps
    end
  end
end
