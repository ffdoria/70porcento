require 'rails_helper'

RSpec.describe "aulas/edit", type: :view do
  before(:each) do
    @aula = assign(:aula, Aula.create!(
      :subject => nil
    ))
  end

  it "renders the edit aula form" do
    render

    assert_select "form[action=?][method=?]", aula_path(@aula), "post" do

      assert_select "input[name=?]", "aula[subject_id]"
    end
  end
end
