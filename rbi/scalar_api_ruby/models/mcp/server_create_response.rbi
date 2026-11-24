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

        sig { returns(Scalar::Mcp::McpServer) }
        attr_reader :server

        sig { params(server: Scalar::Mcp::McpServer::OrHash).void }
        attr_writer :server

        sig do
          params(server: Scalar::Mcp::McpServer::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(server:)
        end

        sig { override.returns({ server: Scalar::Mcp::McpServer }) }
        def to_hash
        end
      end
    end
  end
end
