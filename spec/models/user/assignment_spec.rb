require "spec_helper"

describe User, "assignment" do
	# subject {
	# 	User.new({
	# 		:name => "Flaviano Honorato",
	# 		:email => "flaviano.honorato@gmail.com",
	# 		:password => "test"
	# 		:password_confirmation => "test"
	# 		})
	# }

	# its(:name) { should eql("Flaviano Honorato") }
	# its(:email) { should eql("flaviano.honorato@gmail") }
	# its(:password) { should eql("test") }
	# its(:password_confirmation) { should eql("test") }

	it "doesn't throw exception" do
		expect {
			User.create!({
				:name => "Flaviano Honorato",
				:email => "flaviano.honorato@gmail.com",
				:password => "test",
				:password_confirmation => "test"
			})
			}.to_not raise_error
	end
end