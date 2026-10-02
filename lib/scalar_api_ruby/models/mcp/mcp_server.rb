# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      # @see Scalar::Resources::Mcp::Servers#retrieve
      class McpServer < Scalar::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute auto_add_operations
        #
        #   @return [Boolean]
        required :auto_add_operations, Scalar::Internal::Type::Boolean, api_name: :autoAddOperations

        # @!attribute created_at
        #
        #   @return [String]
        required :created_at, String, api_name: :createdAt

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute slug
        #
        #   @return [String]
        required :slug, String

        # @!attribute updated_at
        #
        #   @return [String]
        required :updated_at, String, api_name: :updatedAt

        # @!method initialize(id:, auto_add_operations:, created_at:, name:, slug:, updated_at:)
        #   @param id [String]
        #   @param auto_add_operations [Boolean]
        #   @param created_at [String]
        #   @param name [String]
        #   @param slug [String]
        #   @param updated_at [String]
      end
    end

    McpServer = Mcp::McpServer
  end
end
