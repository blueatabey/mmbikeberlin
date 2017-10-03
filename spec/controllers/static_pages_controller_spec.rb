require 'rails_helper'

describe StaticPagesController, type: :controller do
	context 'GET #index' do
		before do
			get :index
		end	

		it 'responds successfully with an HTTP 200 status code' do
			expect(response).to be_ok
		end
		
		it 'renders the index template' do	
			expect(response).to render_template('index')
		end
	end		
end