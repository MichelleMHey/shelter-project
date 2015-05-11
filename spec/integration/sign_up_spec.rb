describe "Sign Up" do
  context "as owner" do
    it "signs up successfully and creates an owner" do
      visit new_user_registration_path
      fill_in "user_email", with: "michelle@example.com"
      fill_in "user_password", with: "password"
      fill_in "user_password_confirmatin", with: "password"
      expect { click_button "SIGN UP" }.to change(User, :count).by 1
      expect(page.current_path).to eq  new_owners_owner_path
    end 
  end
end