require 'rails_helper'

RSpec.describe "hangouts/index", type: :view do
  before(:each) do
    assign(:hangouts, [
      Hangout.create!(
        :name => "Name"
      ),
      Hangout.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of hangouts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
