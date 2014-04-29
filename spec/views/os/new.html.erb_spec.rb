require 'spec_helper'

describe "os/new" do
  before(:each) do
    assign(:o, stub_model(O,
      :produto => "MyString"
    ).as_new_record)
  end

  it "renders new o form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => os_path, :method => "post" do
      assert_select "input#o_produto", :name => "o[produto]"
    end
  end
end
