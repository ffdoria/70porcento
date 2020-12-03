require 'rails_helper'

RSpec.describe "atividades/index", type: :view do
  before(:each) do
    assign(:atividades, [
      Atividade.create!(
        :tipo => "Tipo",
        :comentarios => "Comentarios",
        :subject => nil
      ),
      Atividade.create!(
        :tipo => "Tipo",
        :comentarios => "Comentarios",
        :subject => nil
      )
    ])
  end

  it "renders a list of atividades" do
    render
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Comentarios".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
