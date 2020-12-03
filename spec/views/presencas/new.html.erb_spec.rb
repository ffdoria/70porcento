require 'rails_helper'

RSpec.describe "presencas/new", type: :view do
  before(:each) do
    assign(:presenca, Presenca.new(
      :compareceu => "",
      :aula => nil
    ))
  end

  it "renders new presenca form" do
    render

    assert_select "form[action=?][method=?]", presencas_path, "post" do

      assert_select "input[name=?]", "presenca[compareceu]"

      assert_select "input[name=?]", "presenca[aula_id]"
    end
  end
end
