require 'spec_helper'

describe UsersController do

  it "should call a page with an arg of PER_PAGE (e.g. 50 users) on User when index request is called" do
    User.should_receive(:page).with(User::PER_PAGE)
    get :index
  end



 

    # low_control_object.should_receive(:eat).and_return false

    # a.call_method_on_thing.should == "do a thing"


  


end
