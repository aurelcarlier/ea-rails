require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET index' do
    subject { get :index }

    it 'should render the page with a :ok (200) status code' do
      expect(subject).to have_http_status(:ok)
    end

    it 'should render the index template' do
      expect(subject).to render_template('articles/index')
    end
  end
end
