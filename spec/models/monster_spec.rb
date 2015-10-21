require 'rails_helper'

describe Monster do
  it { should validate_presence_of :name }
  it { should validate_presence_of :attack }
  it { should validate_presence_of :place_id }
  it { should belong_to :place }
end
