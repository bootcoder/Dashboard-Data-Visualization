require 'spec_helper'

describe "charts/show" do
  before(:each) do
    @chart = assign(:chart, stub_model(Chart,
      :name => "Name",
      :chart_link => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
