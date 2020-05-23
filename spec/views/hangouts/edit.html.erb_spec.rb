require 'rails_helper'

RSpec.describe "hangouts/edit", type: :view do
  before(:each) do
    @hangout = assign(:hangout, Hangout.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit hangout form" do
    render

    assert_select "form[action=?][method=?]", hangout_path(@hangout), "post" do

      assert_select "input[name=?]", "hangout[name]"
    end
  end
end
