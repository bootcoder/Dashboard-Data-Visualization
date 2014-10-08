require 'spec_helper'

describe "charts/index" do
  before(:each) do
    assign(:charts, [
      stub_model(Chart,
        :name => "Name",
        :chart_link => "MyText"
      ),
      stub_model(Chart,
        :name => "Name",
        :chart_link => "MyText"
      )
    ])
  end

  it "renders a list of charts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
