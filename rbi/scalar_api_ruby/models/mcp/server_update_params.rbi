# typed: strong

module Scalar
  module Models
    module Mcp
      class ServerUpdateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Scalar::Mcp::ServerUpdateParams, Scalar::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :auto_add_operations

        sig { params(auto_add_operations: T::Boolean).void }
        attr_writer :auto_add_operations

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :docs_pages

        sig { params(docs_pages: T::Array[String]).void }
        attr_writer :docs_pages

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :operations

        sig { params(operations: T::Array[String]).void }
        attr_writer :operations

        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig do
          params(
            id: String,
            auto_add_operations: T::Boolean,
            docs_pages: T::Array[String],
            name: String,
            operations: T::Array[String],
            slug: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          auto_add_operations: nil,
          docs_pages: nil,
          name: nil,
          operations: nil,
          slug: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              auto_add_operations: T::Boolean,
              docs_pages: T::Array[String],
              name: String,
              operations: T::Array[String],
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
