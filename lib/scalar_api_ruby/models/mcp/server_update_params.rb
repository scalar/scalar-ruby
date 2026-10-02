# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      # @see Scalar::Resources::Mcp::Servers#update
      class ServerUpdateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute auto_add_operations
        #
        #   @return [Boolean, nil]
        optional :auto_add_operations, Scalar::Internal::Type::Boolean, api_name: :autoAddOperations

        # @!attribute docs_pages
        #
        #   @return [Array<String>, nil]
        optional :docs_pages, Scalar::Internal::Type::ArrayOf[String], api_name: :docsPages

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute operations
        #
        #   @return [Array<String>, nil]
        optional :operations, Scalar::Internal::Type::ArrayOf[String]

        # @!attribute slug
        #
        #   @return [String, nil]
        optional :slug, String

        # @!method initialize(id:, auto_add_operations: nil, docs_pages: nil, name: nil, operations: nil, slug: nil, request_options: {})
        #   @param id [String]
        #   @param auto_add_operations [Boolean]
        #   @param docs_pages [Array<String>]
        #   @param name [String]
        #   @param operations [Array<String>]
        #   @param slug [String]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
