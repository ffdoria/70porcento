require 'rails_helper'

RSpec.describe "grades/new", type: :view do
  before(:each) do
    assign(:grade, Grade.new(
      :nome => "MyString",
      :user => nil
    ))
  end

  it "renders new grade form" do
    render

    assert_select "form[action=?][method=?]", grades_path, "post" do

      assert_select "input[name=?]", "grade[nome]"

      assert_select "input[name=?]", "grade[user_id]"
    end
  end
end
