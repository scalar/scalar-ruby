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

          # @!attribute document_auth
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :document_auth,
                   Scalar::Internal::Type::HashOf[Scalar::Internal::Type::Unknown],
                   api_name: :documentAuth

          # @!attribute is_private
          #
          #   @return [Boolean, nil]
          optional :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

          # @!attribute login_portal_uid
          #
          #   @return [String, nil]
          optional :login_portal_uid, String, api_name: :loginPortalUid, nil?: true

          # @!attribute mcp_version
          #
          #   @return [String, nil]
          optional :mcp_version, String, api_name: :mcpVersion, nil?: true

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute slug
          #
          #   @return [String, nil]
          optional :slug, String

          # @!method initialize(id:, installation_id:, document_auth: nil, is_private: nil, login_portal_uid: nil, mcp_version: nil, name: nil, slug: nil, request_options: {})
          #   @param id [String]
          #   @param installation_id [String]
          #   @param document_auth [Hash{Symbol=>Object}]
          #   @param is_private [Boolean]
          #   @param login_portal_uid [String, nil]
          #   @param mcp_version [String, nil]
          #   @param name [String]
          #   @param slug [String]
          #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
