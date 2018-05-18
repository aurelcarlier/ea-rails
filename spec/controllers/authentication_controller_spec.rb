require 'rails_helper'

RSpec.describe AuthenticationController, type: :controller do
  describe 'render the login page' do
    subject { get :index }

    it 'should render the page with a :ok (200) status code' do
      expect(subject).to have_http_status(:ok)
    end

    it 'should render the login template' do
      expect(subject).to render_template('authentication/index')
    end
  end

  describe 'login process' do
    let(:user) { create :adminUser }

    context 'on right credentials' do
      subject! { post :login, params: { email: user.email, password: user.password } }

      it 'should success' do
        expect(assigns(:current_user)).not_to be_nil
        expect(flash[:info]).to eq('Vous êtes connecté.')
        expect(session[:user_id]).to eq(user.id)
        expect(subject).to redirect_to('/admin')
      end
    end

    context 'on wrong credentials' do
      subject! { post :login, params: { email: 'bli@blo.blu', password: 'lalala' } }

      it 'should fail' do
        expect(assigns(:current_user)).to be_nil
        expect(flash[:info]).to eq('Échec de la connexion.')
        expect(session[:user_id]).to be_nil
        expect(subject).to redirect_to('/login')
      end
    end
  end

  describe 'logout process' do
    subject! { delete :logout }

    it 'should deconnect the current user from the current session' do
      expect(session[:user_id]).to be_nil
    end

    it 'should redirect to ' do
      expect(subject).to redirect_to('/login')
    end
  end
end
