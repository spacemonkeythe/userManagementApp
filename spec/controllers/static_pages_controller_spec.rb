require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET home" do
    it "returns HTTP success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "renders the home page" do
      get :home
      expect(response).to render_template("home")
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end

    it "renders the help page" do
      get :help
      expect(response).to render_template("help")
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end

    it "renders the about page" do
      get :about
      expect(response).to render_template("about")
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end

    it "renders the contact page" do
      get :contact
      expect(response).to render_template("contact")
    end
  end

end
