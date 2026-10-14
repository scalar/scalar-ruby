# typed: strong

module Scalar
  module Models
    class AccessGroupCreateParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::AccessGroupCreateParams, Scalar::Internal::AnyHash)
        end

      sig { returns(T.nilable(T.anything)) }
      attr_reader :allowed_domains

      sig { params(allowed_domains: T.anything).void }
      attr_writer :allowed_domains

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
          allowed_domains: T.anything,
          name: String,
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        allowed_domains: nil,
        name: nil,
        slug: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            allowed_domains: T.anything,
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
