# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DifficultyLevel.transaction do
  DifficultyLevel.delete_all
  [:super_easy, :easy, :medium, :hard, :impossible].each_with_index do |d, i|
    DifficultyLevel.new do |dl|
      dl.id = i + 1
      dl.name = d.to_s.titleize
      dl.save!
    end
  end
end