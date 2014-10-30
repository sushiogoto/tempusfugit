require 'rails_helper'

RSpec.describe "weeks/new", :type => :view do
  before(:each) do
    assign(:week, Week.new(
      :mood => 1,
      :significance => 1,
      :journal => "MyText"
    ))
  end

  it "renders new week form" do
    render

    assert_select "form[action=?][method=?]", weeks_path, "post" do

      assert_select "input#week_mood[name=?]", "week[mood]"

      assert_select "input#week_significance[name=?]", "week[significance]"

      assert_select "textarea#week_journal[name=?]", "week[journal]"
    end
  end
end
