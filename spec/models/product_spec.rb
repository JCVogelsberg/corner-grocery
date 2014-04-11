require 'spec_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :description }
end
