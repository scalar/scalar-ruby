# typed: strong

module Scalar
  module Models
    module Mcp
      class ServerCreateResponse < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Scalar::Models::Mcp::ServerCreateResponse,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(Scalar::Mcp::McpInstallation) }
        attr_reader :installation

        sig { params(installation: Scalar::Mcp::McpInstallation::OrHash).void }
        attr_writer :installation

        sig { returns(Scalar::Mcp::McpServer) }
        attr_reader :server

        sig { params(server: Scalar::Mcp::McpServer::OrHash).void }
        attr_writer :server

        sig do
          params(
            installation: Scalar::Mcp::McpInstallation::OrHash,
            server: Scalar::Mcp::McpServer::OrHash
          ).returns(T.attached_class)
        end
        def self.new(installation:, server:)
        end

        sig do
          override.returns(
            {
              installation: Scalar::Mcp::McpInstallation,
              server: Scalar::Mcp::McpServer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
