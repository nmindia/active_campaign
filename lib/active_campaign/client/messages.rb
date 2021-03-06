module ActiveCampaign
  class Client
    module Messages
      GET_METHODS = %w(
        delete_list delete list template_add template_delete_list
        template_delete template_edit template_export template_import
        template_list template_view view
      ).freeze unless defined?(GET_METHODS)

      POST_METHODS = %w(add edit).freeze unless defined?(POST_METHODS)

      extend ActiveSupport::Concern

      # TODO: Create proper methods with parameter validation and possible
      # naming fixes since this is one the worst APIs I have ever worked with.
      included do
        define_api_calls(:message, GET_METHODS, POST_METHODS)
      end
    end
  end
end
