require 'rails_helper'

describe "adding a bus process" do
  it "adds a new bus" do
    visit buses_path
    click_on 'Add Bus'
    fill_in 'Name', :with => 'School Bus'
    fill_in 'Image', :with => '/images/schoolbus.png'
    click_on 'Create Bus'
    expect(page).to have_content 'Bliss Bus Blog'
  end

  it "gives an error when a field is left empty" do
    visit new_bus_path
    fill_in 'Name', :with => 'School Bus'
    click_on 'Create Bus'
    expect(page).to have_content 'You have these errors:'
  end
end

describe "updating a bus" do
  it "edits a bus by given info" do
    bus = Bus.create(:name => 'School Bus', :image_url => '/images/schoolbus.png')
    visit bus_path(bus)
    click_on 'Edit Bus'
    fill_in 'Name', :with => 'Cool Bus'
    click_on 'Update Bus'
    expect(page).to have_content 'Cool Bus'
  end
end

describe "deleting a bus process" do
  it "deletes a bus" do
    bus = Bus.create(:name => 'Cool Bus', :image_url => '/images/schoolbus.png')
    visit bus_path(bus)
    click_on 'Delete Bus'
    expect(page).to_not have_content 'Cool Bus'
  end
end
