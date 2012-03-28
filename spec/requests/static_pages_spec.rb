#encoding : utf-8
require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Blog53') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Yardım') }
    it { should have_selector('title', text: full_title('Yardım')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'Hakkında') }
    it { should have_selector('title', text: full_title('Hakkımızda')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'İletişim') }
    it { should have_selector('title', text: full_title('İletişim')) }
  end
end
