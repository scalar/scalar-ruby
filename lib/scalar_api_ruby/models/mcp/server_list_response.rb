# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      class ServerListResponseItem < Scalar::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute domain
        #
        #   @return [String, nil]
        required :domain, String, nil?: true

        # @!attribute environments
        #
        #   @return [Array<Scalar::Models::Mcp::ServerListResponseItem::Environment>]
        required :environments,
                 -> do
                   Scalar::Internal::Type::ArrayOf[Scalar::Models::Mcp::ServerListResponseItem::Environment]
                 end

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

        # @!method initialize(created_at:, domain:, environments:, name:, namespace:, slug:, uid:, updated_at:)
        #   @param created_at [Integer]
        #   @param domain [String, nil]
        #   @param environments [Array<Scalar::Models::Mcp::ServerListResponseItem::Environment>]
        #   @param name [String]
        #   @param namespace [String]
        #   @param slug [String]
        #   @param uid [String]
        #   @param updated_at [Integer]

        class Environment < Scalar::Internal::Type::BaseModel
          # @!attribute served
          #
          #   @return [String, nil]
          required :served, String, nil?: true

          # @!attribute slug
          #
          #   @return [String]
          required :slug, String

          # @!method initialize(served:, slug:)
          #   @param served [String, nil]
          #   @param slug [String]
        end
      end

      # @type [Scalar::Internal::Type::Converter]
      ServerListResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::Models::Mcp::ServerListResponseItem }]
    end
  end
end
