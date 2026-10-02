# typed: strong

module Scalar
  module Models
    module Mcp
      module Servers
        class InstallationCreateParams < Scalar::Internal::Type::BaseModel
          extend Scalar::Internal::Type::RequestParameters::Converter
          include Scalar::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Scalar::Mcp::Servers::InstallationCreateParams,
                Scalar::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :document_auth

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_reader :slug

          sig { params(slug: String).void }
          attr_writer :slug

          sig do
            params(
              id: String,
              document_auth: T::Hash[Symbol, T.anything],
              name: String,
              slug: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            document_auth:,
            name:,
            slug: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                document_auth: T::Hash[Symbol, T.anything],
                name: String,
                slug: String,
                request_options: Scalar::RequestOptions
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
