require 'rails_helper'

RSpec.describe "presencas/edit", type: :view do
  before(:each) do
    @presenca = assign(:presenca, Presenca.create!(
      :compareceu => "",
      :aula => nil
    ))
  end

  it "renders the edit presenca form" do
    render

    assert_select "form[action=?][method=?]", presenca_path(@presenca), "post" do

      assert_select "input[name=?]", "presenca[compareceu]"

      assert_select "input[name=?]", "presenca[aula_id]"
    end
  end
end
