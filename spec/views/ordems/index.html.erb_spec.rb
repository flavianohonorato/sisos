require 'spec_helper'

describe "ordems/index" do
  before(:each) do
    assign(:ordems, [
      stub_model(Ordem,
        :description => "MyText",
        :status => "Status",
        :os => nil,
        :category => nil
      ),
      stub_model(Ordem,
        :description => "MyText",
        :status => "Status",
        :os => nil,
        :category => nil
      )
    ])
  end

  it "renders a list of ordems" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
