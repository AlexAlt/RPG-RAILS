require 'rails_helper'

describe Inventory do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :amount }

  it { should have_many :items }
  it { should belong_to :user }
end
