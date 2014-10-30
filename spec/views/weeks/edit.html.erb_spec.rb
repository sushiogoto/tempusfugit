require 'rails_helper'

RSpec.describe "weeks/edit", :type => :view do
  before(:each) do
    @week = assign(:week, Week.create!(
      :mood => 1,
      :significance => 1,
      :journal => "MyText"
    ))
  end

  it "renders the edit week form" do
    render

    assert_select "form[action=?][method=?]", week_path(@week), "post" do

      assert_select "input#week_mood[name=?]", "week[mood]"

      assert_select "input#week_significance[name=?]", "week[significance]"

      assert_select "textarea#week_journal[name=?]", "week[journal]"
    end
  end
end
