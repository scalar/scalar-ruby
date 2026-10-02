# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      module Servers
        # @see Scalar::Resources::Mcp::Servers::Installations#delete
        class InstallationDeleteParams < Scalar::Internal::Type::BaseModel
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

          # @!method initialize(id:, installation_id:, request_options: {})
          #   @param id [String]
          #   @param installation_id [String]
          #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
