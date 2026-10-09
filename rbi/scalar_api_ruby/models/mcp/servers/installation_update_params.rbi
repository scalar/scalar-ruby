# typed: strong

module Scalar
  module Models
    module Mcp
      module Servers
        class InstallationUpdateParams < Scalar::Internal::Type::BaseModel
          extend Scalar::Internal::Type::RequestParameters::Converter
          include Scalar::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Scalar::Mcp::Servers::InstallationUpdateParams,
                Scalar::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :installation_id

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :document_auth

          sig { params(document_auth: T::Hash[Symbol, T.anything]).void }
          attr_writer :document_auth

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_private

          sig { params(is_private: T::Boolean).void }
          attr_writer :is_private

          sig { returns(T.nilable(String)) }
          attr_accessor :login_portal_uid

          sig { returns(T.nilable(String)) }
          attr_accessor :mcp_version

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :slug

          sig { params(slug: String).void }
          attr_writer :slug

          sig do
            params(
              id: String,
              installation_id: String,
              document_auth: T::Hash[Symbol, T.anything],
              is_private: T::Boolean,
              login_portal_uid: T.nilable(String),
              mcp_version: T.nilable(String),
              name: String,
              slug: String,
              request_options: Scalar::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            installation_id:,
            document_auth: nil,
            is_private: nil,
            login_portal_uid: nil,
            mcp_version: nil,
            name: nil,
            slug: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                installation_id: String,
                document_auth: T::Hash[Symbol, T.anything],
                is_private: T::Boolean,
                login_portal_uid: T.nilable(String),
                mcp_version: T.nilable(String),
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
