# typed: strong

module Scalar
  module Resources
    class Mcp
      # MCP
      class Servers
        # Create an MCP server linking the API documents of the named versions and the
        # named docs projects. The server builds from each linked document’s versions, not
        # only the version named.
        sig do
          params(
            name: String,
            project_uids: T::Array[String],
            slug: String,
            version_uids: T::Array[String],
            request_options: Scalar::RequestOptions::OrHash
          ).returns(Scalar::Models::Mcp::ServerCreateResponse)
        end
        def create(
          name:,
          project_uids: nil,
          slug: nil,
          version_uids: nil,
          request_options: {}
        )
        end

        # List every MCP server on the team, each with its environments and the version
        # tag a request that names no version gets there.
        sig do
          params(request_options: Scalar::RequestOptions::OrHash).returns(
            T::Array[Scalar::Models::Mcp::ServerListResponseItem]
          )
        end
        def list(request_options: {})
        end

        # @api private
        sig { params(client: Scalar::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
