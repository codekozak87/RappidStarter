# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

starter_hashes = [

	{:app_name => "RappidStarter", 
		:problem => "Planning app development is slow!", 
		:solution => "Build a rapid app dev highway for all!",
		:user_stories => "1) User should be able to create an App Plan. 2) User should able to edit the Plan across all core app development disciplines. 3) User should be able to wipe their plan. 4) User should be able to keep track of their plan 5) User should be able to mark user stories to determine MVP status. 6) User should be able to check off MVP action items (identified by user).",
		:mock_ups => "A link to images (until they can be uploaded).",
		:layouts => "A link to the layouts (until they can be embedded).",
		:resources => "A place for devs to think about what needs to be created.",
		:associations => "A place for devs to think about how to tie together those resources they created into something meaningful.",
		:other_considerations => "This is a place for teams with unrepresented disciplines to plan for what's still necessary or for teams with all their disciplines to throw in additional thoughts."
	}

]

Starter.destroy_all
starter_hashes.each do |s_hash|
	s = Starter.new
	s.app_name = s_hash[:app_name]
	s.problem = s_hash[:problem]
	s.solution = s_hash[:solution]
	s.user_stories = s_hash[:user_stories]
	s.mock_ups = s_hash[:mock_ups]
	s.layouts = s_hash[:layouts]
	s.resources = s_hash[:resources]
	s.associations = s_hash[:associations] 
	s.other_considerations = s_hash[:other_considerations]
	
end

puts "There are now #{Starter.count} rows in the starters table."