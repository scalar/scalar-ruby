# typed: strong

module Scalar
  module Resources
    class Mcp
      # MCP
      class Servers
        # MCP
        sig { returns(Scalar::Resources::Mcp::Servers::Installations) }
        attr_reader :installations

        # Create an MCP server over one or more API document versions. The response
        # carries the server and its first installation.
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

        # Get a single MCP server by its id.
        sig do
          params(
            id: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(Scalar::Mcp::McpServer)
        end
        def retrieve(id, request_options: {})
        end

        # Update MCP server metadata and which tools it exposes.
        sig do
          params(
            id: String,
            auto_add_operations: T::Boolean,
            docs_pages: T::Array[String],
            name: String,
            operations: T::Array[String],
            slug: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(Scalar::Mcp::McpServer)
        end
        def update(
          id,
          auto_add_operations: nil,
          docs_pages: nil,
          name: nil,
          operations: nil,
          slug: nil,
          request_options: {}
        )
        end

        # List every MCP server on the team.
        sig do
          params(request_options: Scalar::RequestOptions::OrHash).returns(
            T::Array[Scalar::Mcp::McpServer]
          )
        end
        def list(request_options: {})
        end

        # Delete an MCP server and every installation it serves.
        sig do
          params(
            id: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def delete(id, request_options: {})
        end

        # @api private
        sig { params(client: Scalar::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
