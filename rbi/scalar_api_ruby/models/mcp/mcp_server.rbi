# typed: strong

module Scalar
  module Models
    McpServer = Mcp::McpServer

    module Mcp
      class McpServer < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Scalar::Mcp::McpServer, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :slug

        sig { returns(String) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            name: String,
            slug: String,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(id:, created_at:, name:, slug:, updated_at:)
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              name: String,
              slug: String,
              updated_at: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
