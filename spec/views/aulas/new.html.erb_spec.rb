require 'rails_helper'

RSpec.describe "aulas/new", type: :view do
  before(:each) do
    assign(:aula, Aula.new(
      :subject => nil
    ))
  end

  it "renders new aula form" do
    render

    assert_select "form[action=?][method=?]", aulas_path, "post" do

      assert_select "input[name=?]", "aula[subject_id]"
    end
  end
end
