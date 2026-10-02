# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      module Servers
        # @see Scalar::Resources::Mcp::Servers::Installations#create
        class InstallationCreateParams < Scalar::Internal::Type::BaseModel
          extend Scalar::Internal::Type::RequestParameters::Converter
          include Scalar::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute document_auth
          #
          #   @return [Hash{Symbol=>Object}]
          required :document_auth,
                   Scalar::Internal::Type::HashOf[Scalar::Internal::Type::Unknown],
                   api_name: :documentAuth

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute slug
          #
          #   @return [String, nil]
          optional :slug, String

          # @!method initialize(id:, document_auth:, name:, slug: nil, request_options: {})
          #   @param id [String]
          #   @param document_auth [Hash{Symbol=>Object}]
          #   @param name [String]
          #   @param slug [String]
          #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
