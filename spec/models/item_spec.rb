require 'rails_helper'

describe Item do
  it { should validate_presence_of :name }
  it { should validate_presence_of :value }

  it { should belong_to :inventory }
end
