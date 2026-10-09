# typed: strong

module Scalar
  module Models
    class SdkDeleteParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::SdkDeleteParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :uid

      sig do
        params(
          uid: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(uid:, request_options: {})
      end

      sig do
        override.returns(
          { uid: String, request_options: Scalar::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
