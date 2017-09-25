require 'rails_helper'
include RandomData

RSpec.describe SponsoredpostsController, type: :controller do
  let (:my_sp) do
    Sponsoredpost.create(
      id: 1,
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph,
      price: 101
    )
  end

  describe "GET show" do
    it "returns http success" do
      get :show, {id: my_sp.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: my_sp.id}
      expect(response).to render_template :show
    end

    it "assigns my_sp to @sponsoredpost" do
      get :show, {id: my_sp.id}
      expect(assigns(:sponsoredpost)).to eq(my_sp)
    end
  end

#   describe "GET #new" do
#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#   end
#
#   describe "GET #edit" do
#     it "returns http success" do
#       get :edit
#       expect(response).to have_http_status(:success)
#     end
#   end
#
end
