require 'spec_helper'

describe "os/index" do
  before(:each) do
    assign(:os, [
      stub_model(O,
        :produto => "Produto"
      ),
      stub_model(O,
        :produto => "Produto"
      )
    ])
  end

  it "renders a list of os" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Produto".to_s, :count => 2
  end
end
