# frozen_string_literal: true

module Scalar
  module Resources
    class Mcp
      # MCP
      class Servers
        # Create an MCP server linking the API documents of the named versions and the
        # named docs projects. The server builds from each linked document’s versions, not
        # only the version named.
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

        # List every MCP server on the team, each with its environments and the version
        # tag a request that names no version gets there.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Scalar::Models::Mcp::ServerListResponseItem>]
        #
        # @see Scalar::Models::Mcp::ServerListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "v1/mcp/servers",
            model: Scalar::Internal::Type::ArrayOf[Scalar::Models::Mcp::ServerListResponseItem],
            options: params[:request_options]
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
