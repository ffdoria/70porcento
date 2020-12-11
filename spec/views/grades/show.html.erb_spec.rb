require 'rails_helper'

RSpec.describe "grades/show", type: :view do
  before(:each) do
    @grade = assign(:grade, Grade.create!(
      :nome => "Nome",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(//)
  end
end
