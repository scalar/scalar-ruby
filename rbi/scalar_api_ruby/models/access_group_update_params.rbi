# typed: strong

module Scalar
  module Models
    class AccessGroupUpdateParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::AccessGroupUpdateParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :path_slug

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :body_slug

      sig { params(body_slug: String).void }
      attr_writer :body_slug

      sig do
        params(
          path_slug: String,
          name: String,
          body_slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(path_slug:, name: nil, body_slug: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            path_slug: String,
            name: String,
            body_slug: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
