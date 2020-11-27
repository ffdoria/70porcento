require 'rails_helper'

RSpec.describe "subjects/index", type: :view do
  before(:each) do
    assign(:subjects, [
      Subject.create!(
        :nome => "Nome",
        :codigo => "Codigo",
        :creditos => "Creditos",
        :presenca => 2.5,
        :dia_semana => "Dia Semana",
        :grade => nil
      ),
      Subject.create!(
        :nome => "Nome",
        :codigo => "Codigo",
        :creditos => "Creditos",
        :presenca => 2.5,
        :dia_semana => "Dia Semana",
        :grade => nil
      )
    ])
  end

  it "renders a list of subjects" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Creditos".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Dia Semana".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
