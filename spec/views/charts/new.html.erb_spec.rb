require 'spec_helper'

describe "charts/new" do
  before(:each) do
    assign(:chart, stub_model(Chart,
      :name => "MyString",
      :chart_link => "MyText"
    ).as_new_record)
  end

  it "renders new chart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", charts_path, "post" do
      assert_select "input#chart_name[name=?]", "chart[name]"
      assert_select "textarea#chart_chart_link[name=?]", "chart[chart_link]"
    end
  end
end
