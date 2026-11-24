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

        sig { returns(Integer) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :domain

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :namespace

        sig { returns(String) }
        attr_accessor :slug

        sig { returns(String) }
        attr_accessor :uid

        sig { returns(Integer) }
        attr_accessor :updated_at

        sig do
          params(
            created_at: Integer,
            domain: T.nilable(String),
            name: String,
            namespace: String,
            slug: String,
            uid: String,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          domain:,
          name:,
          namespace:,
          slug:,
          uid:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              created_at: Integer,
              domain: T.nilable(String),
              name: String,
              namespace: String,
              slug: String,
              uid: String,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
