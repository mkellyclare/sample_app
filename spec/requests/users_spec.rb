require 'spec_helper'

describe "Users" do

  describe "signup" do

    describe "failure" do

      it "should not make a new user" do
        lambda do
            visit signup_path
            fill_in "Name",            :with => ""
            fill_in "Email",           :with => ""
            fill_in "Password",        :with => ""
            fill_in "Confirmation",    :with => ""
            click_button

            response.should render_template('users/new')
            response.should have_selector("div#error_explanation")
        end.should_not change(User, :count)
      end
    end
    
    describe "failure" do

      it "should not make a new user" do
        lambda do
            visit signup_path
            fill_in "Name",            :with => "mike kelly"
            fill_in "Email",           :with => "mike@kelly.com"
            fill_in "Password",        :with => "pass1234"
            fill_in "Confirmation",    :with => "pass1234"
            click_button

            response.should render_template('users/new')
        end.should change(User, :count).by(1)
      end
    end
  end
end
