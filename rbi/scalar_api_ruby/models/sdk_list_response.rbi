# typed: strong

module Scalar
  module Models
    class SdkListResponse < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Scalar::Models::SdkListResponse, Scalar::Internal::AnyHash)
        end

      sig { returns(T::Array[Scalar::Sdk]) }
      attr_accessor :data

      sig { returns(T::Boolean) }
      attr_accessor :has_more

      sig do
        params(
          data: T::Array[Scalar::Sdk::OrHash],
          has_more: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(data:, has_more:)
      end

      sig do
        override.returns({ data: T::Array[Scalar::Sdk], has_more: T::Boolean })
      end
      def to_hash
      end
    end
  end
end
