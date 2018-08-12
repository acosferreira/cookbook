require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET /recipes_list' do
    context 'when there are recipes' do
      let(:milk) { FactoryGirl.create(:ingredient) }
      let(:desert) { FactoryGirl.create(:kind) }
      before do
        Recipe.create(name: 'mash',
                                 how_to_do: 'cook the milk for 5 min',
                                 kind: desert,
                                 ingredients: [ milk ])
         get recipes_list_path
      end

      it 'returns list of recipes' do
        expect(JSON.parse(response.body).count).to eql(1)
      end
    end
  end
end
