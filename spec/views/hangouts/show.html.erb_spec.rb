require 'rails_helper'

RSpec.describe "hangouts/show", type: :view do
  before(:each) do
    @hangout = assign(:hangout, Hangout.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
