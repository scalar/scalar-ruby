# frozen_string_literal: true

module Scalar
  module Resources
    class Mcp
      class Servers
        # MCP
        class Installations
          # Create an installation of an MCP server. `documentAuth` holds the credentials
          # the server presents to the upstream API and is never returned.
          #
          # @overload create(id, document_auth:, name:, slug: nil, request_options: {})
          #
          # @param id [String]
          # @param document_auth [Hash{Symbol=>Object}]
          # @param name [String]
          # @param slug [String]
          # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Scalar::Models::Mcp::McpInstallation]
          #
          # @see Scalar::Models::Mcp::Servers::InstallationCreateParams
          def create(id, params)
            parsed, options = Scalar::Mcp::Servers::InstallationCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["v1/mcp/servers/%1$s/installations", id],
              body: parsed,
              model: Scalar::Mcp::McpInstallation,
              options: options
            )
          end

          # Get a single installation of an MCP server.
          #
          # @overload retrieve(installation_id, id:, request_options: {})
          #
          # @param installation_id [String]
          # @param id [String]
          # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Scalar::Models::Mcp::McpInstallation]
          #
          # @see Scalar::Models::Mcp::Servers::InstallationRetrieveParams
          def retrieve(installation_id, params)
            parsed, options = Scalar::Mcp::Servers::InstallationRetrieveParams.dump_request(params)
            id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument #{_1}") }
            @client.request(
              method: :get,
              path: ["v1/mcp/servers/%1$s/installations/%2$s", id, installation_id],
              model: Scalar::Mcp::McpInstallation,
              options: options
            )
          end

          # Update an installation. Set `isPrivate` and add access groups to put it behind a
          # login.
          #
          # @overload update(installation_id, id:, document_auth: nil, is_private: nil, login_portal_uid: nil, mcp_version: nil, name: nil, slug: nil, request_options: {})
          #
          # @param installation_id [String] Path param
          #
          # @param id [String] Path param
          #
          # @param document_auth [Hash{Symbol=>Object}] Body param
          #
          # @param is_private [Boolean] Body param
          #
          # @param login_portal_uid [String, nil] Body param
          #
          # @param mcp_version [String, nil] Body param
          #
          # @param name [String] Body param
          #
          # @param slug [String] Body param
          #
          # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Scalar::Models::Mcp::McpInstallation]
          #
          # @see Scalar::Models::Mcp::Servers::InstallationUpdateParams
          def update(installation_id, params)
            parsed, options = Scalar::Mcp::Servers::InstallationUpdateParams.dump_request(params)
            id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument #{_1}") }
            @client.request(
              method: :patch,
              path: ["v1/mcp/servers/%1$s/installations/%2$s", id, installation_id],
              body: parsed,
              model: Scalar::Mcp::McpInstallation,
              options: options
            )
          end

          # List the installations of an MCP server. An installation is what an MCP client
          # connects to.
          #
          # @overload list(id, request_options: {})
          #
          # @param id [String]
          # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Scalar::Models::Mcp::Servers::McpInstallationListItem>]
          #
          # @see Scalar::Models::Mcp::Servers::InstallationListParams
          def list(id, params = {})
            @client.request(
              method: :get,
              path: ["v1/mcp/servers/%1$s/installations", id],
              model: Scalar::Internal::Type::ArrayOf[Scalar::Mcp::Servers::McpInstallationListItem],
              options: params[:request_options]
            )
          end

          # Delete an installation of an MCP server.
          #
          # @overload delete(installation_id, id:, request_options: {})
          #
          # @param installation_id [String]
          # @param id [String]
          # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Scalar::Models::Mcp::Servers::InstallationDeleteParams
          def delete(installation_id, params)
            parsed, options = Scalar::Mcp::Servers::InstallationDeleteParams.dump_request(params)
            id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument #{_1}") }
            @client.request(
              method: :delete,
              path: ["v1/mcp/servers/%1$s/installations/%2$s", id, installation_id],
              model: Scalar::Internal::Type::Unknown,
              options: options
            )
          end

          # Let an access group reach a private installation.
          #
          # @overload create_access_group(installation_id, id:, access_group_uid:, request_options: {})
          #
          # @param installation_id [String] Path param
          #
          # @param id [String] Path param
          #
          # @param access_group_uid [String] Body param
          #
          # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Scalar::Models::Mcp::Servers::InstallationCreateAccessGroupParams
          def create_access_group(installation_id, params)
            parsed, options = Scalar::Mcp::Servers::InstallationCreateAccessGroupParams.dump_request(params)
            id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument #{_1}") }
            @client.request(
              method: :post,
              path: ["v1/mcp/servers/%1$s/installations/%2$s/access-group", id, installation_id],
              body: parsed,
              model: Scalar::Internal::Type::Unknown,
              options: options
            )
          end

          # Stop an access group reaching a private installation.
          #
          # @overload delete_access_group(installation_id, id:, access_group_uid:, request_options: {})
          #
          # @param installation_id [String] Path param
          #
          # @param id [String] Path param
          #
          # @param access_group_uid [String] Body param
          #
          # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Scalar::Models::Mcp::Servers::InstallationDeleteAccessGroupParams
          def delete_access_group(installation_id, params)
            parsed, options = Scalar::Mcp::Servers::InstallationDeleteAccessGroupParams.dump_request(params)
            id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument #{_1}") }
            @client.request(
              method: :delete,
              path: ["v1/mcp/servers/%1$s/installations/%2$s/access-group", id, installation_id],
              body: parsed,
              model: Scalar::Internal::Type::Unknown,
              options: options
            )
          end

          # @api private
          #
          # @param client [Scalar::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
