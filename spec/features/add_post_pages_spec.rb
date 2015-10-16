require 'rails_helper'

describe "adding a post process" do
  it "adds a new post" do
    bus = Bus.create(:name => 'School Bus', :image_url => '/images/schoolbus.png')
    visit bus_path(bus)
    click_on "Add a post"
    fill_in 'Name', :with => 'Renovating'
    fill_in 'Text', :with => 'I will show you how I renovated this bus!'
    click_on 'Create Post'
    expect(page).to have_content 'I will show you how I renovated this bus!'
  end
end

describe "deleting a post process" do
  it "deletes a post" do
    bus = Bus.create(:name => 'School Bus', :image_url => '/images/schoolbus.png')
    visit beard_path(bus)
    click_on "Add a post"
    fill_in 'Name', :with => 'Renovating'
    fill_in 'Text', :with => 'I will show you how I renovated this bus!'
    click_on 'Create Post'
    click_on 'Delete'
    expect(page).to_not have_content 'I will show you how I renovated this bus!'
  end
end
