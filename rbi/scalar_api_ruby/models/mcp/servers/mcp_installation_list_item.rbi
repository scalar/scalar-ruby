# typed: strong

module Scalar
  module Models
    module Mcp
      module Servers
        class McpInstallationListItem < Scalar::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Scalar::Mcp::Servers::McpInstallationListItem,
                Scalar::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T::Boolean) }
          attr_accessor :is_private

          sig { returns(T.nilable(String)) }
          attr_accessor :mcp_version

          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :slug

          sig do
            params(
              id: String,
              is_private: T::Boolean,
              mcp_version: T.nilable(String),
              name: String,
              slug: String
            ).returns(T.attached_class)
          end
          def self.new(id:, is_private:, mcp_version:, name:, slug:)
          end

          sig do
            override.returns(
              {
                id: String,
                is_private: T::Boolean,
                mcp_version: T.nilable(String),
                name: String,
                slug: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
