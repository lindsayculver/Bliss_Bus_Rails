require 'rails_helper'

describe Post do
  it { should validate_presence_of :name }
  it { should validate_presence_of :text }
  it { should_belong_to :bus }
end
