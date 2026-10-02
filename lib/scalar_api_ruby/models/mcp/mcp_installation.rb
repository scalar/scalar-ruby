# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      class McpInstallation < Scalar::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute access_groups
        #
        #   @return [Array<String>]
        required :access_groups, Scalar::Internal::Type::ArrayOf[String], api_name: :accessGroups

        # @!attribute credential_redaction_enabled
        #
        #   @return [Boolean]
        required :credential_redaction_enabled,
                 Scalar::Internal::Type::Boolean,
                 api_name: :credentialRedactionEnabled

        # @!attribute is_private
        #
        #   @return [Boolean]
        required :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

        # @!attribute login_portal_uid
        #
        #   @return [String, nil]
        required :login_portal_uid, String, api_name: :loginPortalUid, nil?: true

        # @!attribute mcp_server_id
        #
        #   @return [String]
        required :mcp_server_id, String, api_name: :mcpServerId

        # @!attribute mcp_version
        #
        #   @return [String, nil]
        required :mcp_version, String, api_name: :mcpVersion, nil?: true

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute pii_redaction_enabled
        #
        #   @return [Boolean]
        required :pii_redaction_enabled, Scalar::Internal::Type::Boolean, api_name: :piiRedactionEnabled

        # @!attribute slug
        #
        #   @return [String]
        required :slug, String

        # @!method initialize(id:, access_groups:, credential_redaction_enabled:, is_private:, login_portal_uid:, mcp_server_id:, mcp_version:, name:, pii_redaction_enabled:, slug:)
        #   @param id [String]
        #   @param access_groups [Array<String>]
        #   @param credential_redaction_enabled [Boolean]
        #   @param is_private [Boolean]
        #   @param login_portal_uid [String, nil]
        #   @param mcp_server_id [String]
        #   @param mcp_version [String, nil]
        #   @param name [String]
        #   @param pii_redaction_enabled [Boolean]
        #   @param slug [String]
      end
    end

    McpInstallation = Mcp::McpInstallation
  end
end
