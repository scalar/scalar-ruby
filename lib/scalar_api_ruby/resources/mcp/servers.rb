# frozen_string_literal: true

module Scalar
  module Resources
    class Mcp
      # MCP
      class Servers
        # MCP
        # @return [Scalar::Resources::Mcp::Servers::Installations]
        attr_reader :installations

        # Create an MCP server over one or more API document versions. The response
        # carries the server and its first installation.
        #
        # @overload create(name:, project_uids: nil, slug: nil, version_uids: nil, request_options: {})
        #
        # @param name [String]
        # @param project_uids [Array<String>]
        # @param slug [String]
        # @param version_uids [Array<String>]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Scalar::Models::Mcp::ServerCreateResponse]
        #
        # @see Scalar::Models::Mcp::ServerCreateParams
        def create(params)
          parsed, options = Scalar::Mcp::ServerCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/mcp/servers",
            body: parsed,
            model: Scalar::Models::Mcp::ServerCreateResponse,
            options: options
          )
        end

        # Get a single MCP server by its id.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Scalar::Models::Mcp::McpServer]
        #
        # @see Scalar::Models::Mcp::ServerRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["v1/mcp/servers/%1$s", id],
            model: Scalar::Mcp::McpServer,
            options: params[:request_options]
          )
        end

        # Update MCP server metadata and which tools it exposes.
        #
        # @overload update(id, auto_add_operations: nil, docs_pages: nil, name: nil, operations: nil, slug: nil, request_options: {})
        #
        # @param id [String]
        # @param auto_add_operations [Boolean]
        # @param docs_pages [Array<String>]
        # @param name [String]
        # @param operations [Array<String>]
        # @param slug [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Scalar::Models::Mcp::McpServer]
        #
        # @see Scalar::Models::Mcp::ServerUpdateParams
        def update(id, params = {})
          parsed, options = Scalar::Mcp::ServerUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/mcp/servers/%1$s", id],
            body: parsed,
            model: Scalar::Mcp::McpServer,
            options: options
          )
        end

        # List every MCP server on the team.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Scalar::Models::Mcp::McpServer>]
        #
        # @see Scalar::Models::Mcp::ServerListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "v1/mcp/servers",
            model: Scalar::Internal::Type::ArrayOf[Scalar::Mcp::McpServer],
            options: params[:request_options]
          )
        end

        # Delete an MCP server and every installation it serves.
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Mcp::ServerDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["v1/mcp/servers/%1$s", id],
            model: Scalar::Internal::Type::Unknown,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Scalar::Client]
        def initialize(client:)
          @client = client
          @installations = Scalar::Resources::Mcp::Servers::Installations.new(client: client)
        end
      end
    end
  end
end
