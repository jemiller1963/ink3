require 'rails_helper'

RSpec.describe "hangouts/new", type: :view do
  before(:each) do
    assign(:hangout, Hangout.new(
      :name => "MyString"
    ))
  end

  it "renders new hangout form" do
    render

    assert_select "form[action=?][method=?]", hangouts_path, "post" do

      assert_select "input[name=?]", "hangout[name]"
    end
  end
end
