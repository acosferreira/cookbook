require 'rails_helper'

RSpec.describe RecipesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/recipes_list').to route_to('recipes#list')
    end
  end
end
