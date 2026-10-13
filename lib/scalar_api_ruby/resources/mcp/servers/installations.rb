# frozen_string_literal: true

module Scalar
  module Resources
    class Mcp
      class Servers
        # MCP
        class Installations
          # @deprecated
          #
          # Get a single installation of an MCP server. Deprecated: address the environment
          # by slug with the `/environments/:environment` form.
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

          # @deprecated
          #
          # Some parameter documentations has been truncated, see
          # {Scalar::Models::Mcp::Servers::InstallationUpdateParams} for more details.
          #
          # Update an installation. Deprecated: address the environment by slug with the
          # `/environments/:environment` form.
          #
          # @overload update(installation_id, id:, mcp_version: nil, name: nil, slug: nil, request_options: {})
          #
          # @param installation_id [String] Path param
          #
          # @param id [String] Path param
          #
          # @param mcp_version [String, nil] Body param
          #
          # @param name [String] Body param
          #
          # @param slug [String] Body param: The environment’s current slug. An environment cannot be renamed, so
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

          # @deprecated
          #
          # Delete an installation of an MCP server. Deprecated: address the environment by
          # slug with the `/environments/:environment` form.
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

          # @deprecated
          #
          # Let an access group reach a private installation. Requires a team admin.
          # Deprecated: address the environment by slug with the
          # `/environments/:environment` form.
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

          # @deprecated
          #
          # Stop an access group reaching a private installation. Requires a team admin.
          # Deprecated: address the environment by slug with the
          # `/environments/:environment` form.
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
