require 'rails_helper'

RSpec.describe "subjects/show", type: :view do
  before(:each) do
    @subject = assign(:subject, Subject.create!(
      :nome => "Nome",
      :codigo => "Codigo",
      :creditos => "Creditos",
      :presenca => 2.5,
      :dia_semana => "Dia Semana",
      :grade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Creditos/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Dia Semana/)
    expect(rendered).to match(//)
  end
end
