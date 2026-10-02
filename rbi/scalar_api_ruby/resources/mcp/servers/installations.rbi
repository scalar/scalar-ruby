# typed: strong

module Scalar
  module Resources
    class Mcp
      class Servers
        # MCP
        class Installations
          # Create an installation of an MCP server. `documentAuth` holds the credentials
          # the server presents to the upstream API and is never returned.
          sig do
            params(
              id: String,
              document_auth: T::Hash[Symbol, T.anything],
              name: String,
              slug: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(Scalar::Mcp::McpInstallation)
          end
          def create(id, document_auth:, name:, slug: nil, request_options: {})
          end

          # Get a single installation of an MCP server.
          sig do
            params(
              installation_id: String,
              id: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(Scalar::Mcp::McpInstallation)
          end
          def retrieve(installation_id, id:, request_options: {})
          end

          # Update an installation. Set `isPrivate` and add access groups to put it behind a
          # login.
          sig do
            params(
              installation_id: String,
              id: String,
              document_auth: T::Hash[Symbol, T.anything],
              is_private: T::Boolean,
              login_portal_uid: T.nilable(String),
              mcp_version: T.nilable(String),
              name: String,
              slug: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(Scalar::Mcp::McpInstallation)
          end
          def update(
            # Path param
            installation_id,
            # Path param
            id:,
            # Body param
            document_auth: nil,
            # Body param
            is_private: nil,
            # Body param
            login_portal_uid: nil,
            # Body param
            mcp_version: nil,
            # Body param
            name: nil,
            # Body param
            slug: nil,
            request_options: {}
          )
          end

          # List the installations of an MCP server. An installation is what an MCP client
          # connects to.
          sig do
            params(
              id: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T::Array[Scalar::Mcp::Servers::McpInstallationListItem])
          end
          def list(id, request_options: {})
          end

          # Delete an installation of an MCP server.
          sig do
            params(
              installation_id: String,
              id: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def delete(installation_id, id:, request_options: {})
          end

          # Let an access group reach a private installation.
          sig do
            params(
              installation_id: String,
              id: String,
              access_group_uid: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def create_access_group(
            # Path param
            installation_id,
            # Path param
            id:,
            # Body param
            access_group_uid:,
            request_options: {}
          )
          end

          # Stop an access group reaching a private installation.
          sig do
            params(
              installation_id: String,
              id: String,
              access_group_uid: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def delete_access_group(
            # Path param
            installation_id,
            # Path param
            id:,
            # Body param
            access_group_uid:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Scalar::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
