require 'rails_helper'

RSpec.describe "atividades/show", type: :view do
  before(:each) do
    @atividade = assign(:atividade, Atividade.create!(
      :tipo => "Tipo",
      :comentarios => "Comentarios",
      :subject => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Comentarios/)
    expect(rendered).to match(//)
  end
end
