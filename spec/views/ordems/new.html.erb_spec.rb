require 'spec_helper'

describe "ordems/new" do
  before(:each) do
    assign(:ordem, stub_model(Ordem,
      :description => "MyText",
      :status => "MyString",
      :os => nil,
      :category => nil
    ).as_new_record)
  end

  it "renders new ordem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ordems_path, :method => "post" do
      assert_select "textarea#ordem_description", :name => "ordem[description]"
      assert_select "input#ordem_status", :name => "ordem[status]"
      assert_select "input#ordem_os", :name => "ordem[os]"
      assert_select "input#ordem_category", :name => "ordem[category]"
    end
  end
end
