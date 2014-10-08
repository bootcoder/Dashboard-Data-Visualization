require 'spec_helper'

describe "charts/edit" do
  before(:each) do
    @chart = assign(:chart, stub_model(Chart,
      :name => "MyString",
      :chart_link => "MyText"
    ))
  end

  it "renders the edit chart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chart_path(@chart), "post" do
      assert_select "input#chart_name[name=?]", "chart[name]"
      assert_select "textarea#chart_chart_link[name=?]", "chart[chart_link]"
    end
  end
end
