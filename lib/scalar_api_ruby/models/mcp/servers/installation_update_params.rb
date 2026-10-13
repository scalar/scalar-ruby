# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      module Servers
        # @see Scalar::Resources::Mcp::Servers::Installations#update
        class InstallationUpdateParams < Scalar::Internal::Type::BaseModel
          extend Scalar::Internal::Type::RequestParameters::Converter
          include Scalar::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute installation_id
          #
          #   @return [String]
          required :installation_id, String

          # @!attribute mcp_version
          #
          #   @return [String, nil]
          optional :mcp_version, String, api_name: :mcpVersion, nil?: true

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute slug
          #   The environment’s current slug. An environment cannot be renamed, so any other
          #   slug is refused.
          #
          #   @return [String, nil]
          optional :slug, String

          # @!method initialize(id:, installation_id:, mcp_version: nil, name: nil, slug: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Scalar::Models::Mcp::Servers::InstallationUpdateParams} for more details.
          #
          #   @param id [String]
          #
          #   @param installation_id [String]
          #
          #   @param mcp_version [String, nil]
          #
          #   @param name [String]
          #
          #   @param slug [String] The environment’s current slug. An environment cannot be renamed, so any other s
          #
          #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
