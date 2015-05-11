Fabricator(:user) do
  transient owner: false
	email { sequence(:email) { |i| "#{Faker::Name.last_name}_#{i}@example.com" } }
  password "password"

  after_create do |user, attrs|
    user.create_owner if attrs[:owner]
  end

end
