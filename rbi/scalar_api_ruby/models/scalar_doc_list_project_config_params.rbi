# typed: strong

module Scalar
  module Models
    class ScalarDocListProjectConfigParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Scalar::ScalarDocListProjectConfigParams,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(T.nilable(String)) }
      attr_reader :ref

      sig { params(ref: String).void }
      attr_writer :ref

      sig do
        params(
          slug: String,
          ref: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(slug:, ref: nil, request_options: {})
      end

      sig do
        override.returns(
          { slug: String, ref: String, request_options: Scalar::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
