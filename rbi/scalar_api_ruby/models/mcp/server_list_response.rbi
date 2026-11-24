# typed: strong

module Scalar
  module Models
    module Mcp
      class ServerListResponseItem < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Scalar::Models::Mcp::ServerListResponseItem,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :domain

        sig do
          returns(
            T::Array[Scalar::Models::Mcp::ServerListResponseItem::Environment]
          )
        end
        attr_accessor :environments

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
            environments:
              T::Array[
                Scalar::Models::Mcp::ServerListResponseItem::Environment::OrHash
              ],
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
          environments:,
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
              environments:
                T::Array[
                  Scalar::Models::Mcp::ServerListResponseItem::Environment
                ],
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

        class Environment < Scalar::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Scalar::Models::Mcp::ServerListResponseItem::Environment,
                Scalar::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :served

          sig { returns(String) }
          attr_accessor :slug

          sig do
            params(served: T.nilable(String), slug: String).returns(
              T.attached_class
            )
          end
          def self.new(served:, slug:)
          end

          sig { override.returns({ served: T.nilable(String), slug: String }) }
          def to_hash
          end
        end
      end

      ServerListResponse =
        T.let(
          Scalar::Internal::Type::ArrayOf[
            Scalar::Models::Mcp::ServerListResponseItem
          ],
          Scalar::Internal::Type::Converter
        )
    end
  end
end
