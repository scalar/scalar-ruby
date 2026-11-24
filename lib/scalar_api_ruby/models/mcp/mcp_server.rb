# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      class McpServer < Scalar::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute domain
        #
        #   @return [String, nil]
        required :domain, String, nil?: true

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute namespace
        #
        #   @return [String]
        required :namespace, String

        # @!attribute slug
        #
        #   @return [String]
        required :slug, String

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute updated_at
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!method initialize(created_at:, domain:, name:, namespace:, slug:, uid:, updated_at:)
        #   @param created_at [Integer]
        #   @param domain [String, nil]
        #   @param name [String]
        #   @param namespace [String]
        #   @param slug [String]
        #   @param uid [String]
        #   @param updated_at [Integer]
      end
    end

    McpServer = Mcp::McpServer
  end
end
