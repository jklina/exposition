module Controllers
  module Pagination
    def paginates(factory:, increment:)
      factory_string = factory.to_s
      factory = factory_string.underscore.to_sym
      factory_plural = factory_string.pluralize.underscore.to_sym
      number_of_results_for_two_pages = increment + 1
      results =
        FactoryGirl.create_list(factory, number_of_results_for_two_pages)

      yield

      expect(assigns(factory_plural).count).to eq(increment)
    end
  end
end

