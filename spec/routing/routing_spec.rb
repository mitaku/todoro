require 'spec_helper'

describe "routing" do
  it { should route(:get, "/").to(:controller => :welcome, :action => :index)}

  it { should route(:get, "/tasks").to(:controller => :tasks, :action => :index)}
  it { should route(:post, "/tasks").to(:controller => :tasks, :action => :create)}
  it { should route(:get, "/tasks/new").to(:controller => :tasks, :action => :new)}
  it { should route(:put, "/tasks/1").to(:controller => :tasks, :action => :update, :id => 1)}
  it { should route(:delete, "/tasks/1").to(:controller => :tasks, :action => :destroy, :id => 1)}
end
