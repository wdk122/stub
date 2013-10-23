require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Stub') }
    it { should have_title(full_title('')) }
    it { should_not have_title('Home |') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Terms page" do
    before { visit terms_path }

    it { should have_content('Terms') }
    it { should have_title(full_title('Terms')) }
  end

  describe "Privacy page" do
    before { visit privacy_path }

    it { should have_content('Privacy') }
    it { should have_title(full_title('Privacy')) }
  end
end