# typed: strong

module Scalar
  module Models
    module Mcp
      class ServerCreateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Scalar::Mcp::ServerCreateParams, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :project_uids

        sig { params(project_uids: T::Array[String]).void }
        attr_writer :project_uids

        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :version_uids

        sig { params(version_uids: T::Array[String]).void }
        attr_writer :version_uids

        sig do
          params(
            name: String,
            project_uids: T::Array[String],
            slug: String,
            version_uids: T::Array[String],
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          name:,
          project_uids: nil,
          slug: nil,
          version_uids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              project_uids: T::Array[String],
              slug: String,
              version_uids: T::Array[String],
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
