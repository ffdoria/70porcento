require 'rails_helper'

RSpec.describe "aulas/show", type: :view do
  before(:each) do
    @aula = assign(:aula, Aula.create!(
      :subject => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
