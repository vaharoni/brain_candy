class AddDifficultyLevelToBrainCandies < ActiveRecord::Migration
  def change
    add_column :brain_candies, :difficulty_level_id, :integer
  end
end
