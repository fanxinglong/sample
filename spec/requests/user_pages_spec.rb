require 'spec_helper'

describe "用户页面" do

  subject { page }

    describe "个人资料" do
      let(:user) { FactoryGirl.create(:user) }
      before { visit user_path(user) }

      it { should have_content(user.name) }
      it { should have_title(user.name) }
    end

    describe "注册页面" do
      before { visit signup_path }

      it { should have_content('Sign up') }
      it { should have_title(full_title('Sign up')) }
    end
end