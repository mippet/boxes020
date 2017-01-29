require 'rails_helper'

RSpec.describe Box, type: :model do
  it { should have_many(:products) }
  it { should validate_presence_of(:title) }
end
