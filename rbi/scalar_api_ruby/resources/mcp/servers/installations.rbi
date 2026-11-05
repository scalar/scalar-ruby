# typed: strong

module Scalar
  module Resources
    class Mcp
      class Servers
        # MCP
        class Installations
          # Get a single installation of an MCP server. Deprecated: address the environment
          # by slug with the `/environments/:environment` form.
          sig do
            params(
              installation_id: String,
              id: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(Scalar::Mcp::McpInstallation)
          end
          def retrieve(installation_id, id:, request_options: {})
          end

          # Update an installation. Deprecated: address the environment by slug with the
          # `/environments/:environment` form.
          sig do
            params(
              installation_id: String,
              id: String,
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
            mcp_version: nil,
            # Body param
            name: nil,
            # Body param: The environment’s current slug. An environment cannot be renamed, so
            # any other slug is refused.
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

          # Delete an installation of an MCP server. Deprecated: address the environment by
          # slug with the `/environments/:environment` form.
          sig do
            params(
              installation_id: String,
              id: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def delete(installation_id, id:, request_options: {})
          end

          # Let an access group reach a private installation. Requires a team admin.
          # Deprecated: address the environment by slug with the
          # `/environments/:environment` form.
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

          # Stop an access group reaching a private installation. Requires a team admin.
          # Deprecated: address the environment by slug with the
          # `/environments/:environment` form.
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
