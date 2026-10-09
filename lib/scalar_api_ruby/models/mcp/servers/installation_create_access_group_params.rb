# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      module Servers
        # @see Scalar::Resources::Mcp::Servers::Installations#create_access_group
        class InstallationCreateAccessGroupParams < Scalar::Internal::Type::BaseModel
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

          # @!attribute access_group_uid
          #
          #   @return [String]
          required :access_group_uid, String, api_name: :accessGroupUid

          # @!method initialize(id:, installation_id:, access_group_uid:, request_options: {})
          #   @param id [String]
          #   @param installation_id [String]
          #   @param access_group_uid [String]
          #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
