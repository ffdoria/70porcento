require 'rails_helper'

RSpec.describe "subjects/edit", type: :view do
  before(:each) do
    @subject = assign(:subject, Subject.create!(
      :nome => "MyString",
      :codigo => "MyString",
      :creditos => "MyString",
      :presenca => 1.5,
      :dia_semana => "MyString",
      :grade => nil
    ))
  end

  it "renders the edit subject form" do
    render

    assert_select "form[action=?][method=?]", subject_path(@subject), "post" do

      assert_select "input[name=?]", "subject[nome]"

      assert_select "input[name=?]", "subject[codigo]"

      assert_select "input[name=?]", "subject[creditos]"

      assert_select "input[name=?]", "subject[presenca]"

      assert_select "input[name=?]", "subject[dia_semana]"

      assert_select "input[name=?]", "subject[grade_id]"
    end
  end
end
