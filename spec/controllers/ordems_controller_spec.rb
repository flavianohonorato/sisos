require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe OrdemsController do

  # This should return the minimal set of attributes required to create a valid
  # Ordem. As you add validations to Ordem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OrdemsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all ordems as @ordems" do
      ordem = Ordem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:ordems).should eq([ordem])
    end
  end

  describe "GET show" do
    it "assigns the requested ordem as @ordem" do
      ordem = Ordem.create! valid_attributes
      get :show, {:id => ordem.to_param}, valid_session
      assigns(:ordem).should eq(ordem)
    end
  end

  describe "GET new" do
    it "assigns a new ordem as @ordem" do
      get :new, {}, valid_session
      assigns(:ordem).should be_a_new(Ordem)
    end
  end

  describe "GET edit" do
    it "assigns the requested ordem as @ordem" do
      ordem = Ordem.create! valid_attributes
      get :edit, {:id => ordem.to_param}, valid_session
      assigns(:ordem).should eq(ordem)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ordem" do
        expect {
          post :create, {:ordem => valid_attributes}, valid_session
        }.to change(Ordem, :count).by(1)
      end

      it "assigns a newly created ordem as @ordem" do
        post :create, {:ordem => valid_attributes}, valid_session
        assigns(:ordem).should be_a(Ordem)
        assigns(:ordem).should be_persisted
      end

      it "redirects to the created ordem" do
        post :create, {:ordem => valid_attributes}, valid_session
        response.should redirect_to(Ordem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ordem as @ordem" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ordem.any_instance.stub(:save).and_return(false)
        post :create, {:ordem => {}}, valid_session
        assigns(:ordem).should be_a_new(Ordem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ordem.any_instance.stub(:save).and_return(false)
        post :create, {:ordem => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ordem" do
        ordem = Ordem.create! valid_attributes
        # Assuming there are no other ordems in the database, this
        # specifies that the Ordem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ordem.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => ordem.to_param, :ordem => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested ordem as @ordem" do
        ordem = Ordem.create! valid_attributes
        put :update, {:id => ordem.to_param, :ordem => valid_attributes}, valid_session
        assigns(:ordem).should eq(ordem)
      end

      it "redirects to the ordem" do
        ordem = Ordem.create! valid_attributes
        put :update, {:id => ordem.to_param, :ordem => valid_attributes}, valid_session
        response.should redirect_to(ordem)
      end
    end

    describe "with invalid params" do
      it "assigns the ordem as @ordem" do
        ordem = Ordem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ordem.any_instance.stub(:save).and_return(false)
        put :update, {:id => ordem.to_param, :ordem => {}}, valid_session
        assigns(:ordem).should eq(ordem)
      end

      it "re-renders the 'edit' template" do
        ordem = Ordem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ordem.any_instance.stub(:save).and_return(false)
        put :update, {:id => ordem.to_param, :ordem => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ordem" do
      ordem = Ordem.create! valid_attributes
      expect {
        delete :destroy, {:id => ordem.to_param}, valid_session
      }.to change(Ordem, :count).by(-1)
    end

    it "redirects to the ordems list" do
      ordem = Ordem.create! valid_attributes
      delete :destroy, {:id => ordem.to_param}, valid_session
      response.should redirect_to(ordems_url)
    end
  end

end
