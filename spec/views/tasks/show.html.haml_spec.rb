require 'spec_helper'

describe "tasks/show.html.haml" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :name => "Name",
      :done => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end