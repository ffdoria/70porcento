require 'rails_helper'

RSpec.describe "atividades/new", type: :view do
  before(:each) do
    assign(:atividade, Atividade.new(
      :tipo => "MyString",
      :comentarios => "MyString",
      :subject => nil
    ))
  end

  it "renders new atividade form" do
    render

    assert_select "form[action=?][method=?]", atividades_path, "post" do

      assert_select "input[name=?]", "atividade[tipo]"

      assert_select "input[name=?]", "atividade[comentarios]"

      assert_select "input[name=?]", "atividade[subject_id]"
    end
  end
end
