require 'rails_helper'

RSpec.describe "grades/edit", type: :view do
  before(:each) do
    @grade = assign(:grade, Grade.create!(
      :nome => "MyString",
      :user => nil
    ))
  end

  it "renders the edit grade form" do
    render

    assert_select "form[action=?][method=?]", grade_path(@grade), "post" do

      assert_select "input[name=?]", "grade[nome]"

      assert_select "input[name=?]", "grade[user_id]"
    end
  end
end
