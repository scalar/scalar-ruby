# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      module Servers
        class McpInstallationListItem < Scalar::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute mcp_version
          #
          #   @return [String, nil]
          required :mcp_version, String, api_name: :mcpVersion, nil?: true

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute slug
          #
          #   @return [String]
          required :slug, String

          # @!method initialize(id:, mcp_version:, name:, slug:)
          #   @param id [String]
          #   @param mcp_version [String, nil]
          #   @param name [String]
          #   @param slug [String]
        end
      end
    end
  end
end
