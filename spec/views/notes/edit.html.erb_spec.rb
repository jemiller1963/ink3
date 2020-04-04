require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :title => "MyString",
      :body => "MyText",
      :active => false,
      :user => nil
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "input[name=?]", "note[title]"

      assert_select "textarea[name=?]", "note[body]"

      assert_select "input[name=?]", "note[active]"

      assert_select "input[name=?]", "note[user_id]"
    end
  end
end
