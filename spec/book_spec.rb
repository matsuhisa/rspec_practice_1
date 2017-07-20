require 'spec_helper'

RSpec.describe Book do
  it "message return hello" do
    expect(Book.new.message).to eq "hello"
  end
end
