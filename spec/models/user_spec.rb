require 'rails_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :attack }
  it { should validate_presence_of :password_salt }
  it { should validate_presence_of :password_salt }
  it { should have_one :inventory }
end
