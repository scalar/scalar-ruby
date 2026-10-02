# typed: strong

module Scalar
  module Models
    McpInstallation = Mcp::McpInstallation

    module Mcp
      class McpInstallation < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Scalar::Mcp::McpInstallation, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Array[String]) }
        attr_accessor :access_groups

        sig { returns(T::Boolean) }
        attr_accessor :credential_redaction_enabled

        sig { returns(T::Boolean) }
        attr_accessor :is_private

        sig { returns(T.nilable(String)) }
        attr_accessor :login_portal_uid

        sig { returns(String) }
        attr_accessor :mcp_server_id

        sig { returns(T.nilable(String)) }
        attr_accessor :mcp_version

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Boolean) }
        attr_accessor :pii_redaction_enabled

        sig { returns(String) }
        attr_accessor :slug

        sig do
          params(
            id: String,
            access_groups: T::Array[String],
            credential_redaction_enabled: T::Boolean,
            is_private: T::Boolean,
            login_portal_uid: T.nilable(String),
            mcp_server_id: String,
            mcp_version: T.nilable(String),
            name: String,
            pii_redaction_enabled: T::Boolean,
            slug: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          access_groups:,
          credential_redaction_enabled:,
          is_private:,
          login_portal_uid:,
          mcp_server_id:,
          mcp_version:,
          name:,
          pii_redaction_enabled:,
          slug:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              access_groups: T::Array[String],
              credential_redaction_enabled: T::Boolean,
              is_private: T::Boolean,
              login_portal_uid: T.nilable(String),
              mcp_server_id: String,
              mcp_version: T.nilable(String),
              name: String,
              pii_redaction_enabled: T::Boolean,
              slug: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
