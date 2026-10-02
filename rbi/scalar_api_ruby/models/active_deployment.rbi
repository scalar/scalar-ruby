# typed: strong

module Scalar
  module Models
    class ActiveDeployment < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Scalar::ActiveDeployment, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :domain

      sig { returns(Integer) }
      attr_accessor :published_at

      sig { returns(String) }
      attr_accessor :uid

      sig do
        params(domain: String, published_at: Integer, uid: String).returns(
          T.attached_class
        )
      end
      def self.new(domain:, published_at:, uid:)
      end

      sig do
        override.returns({ domain: String, published_at: Integer, uid: String })
      end
      def to_hash
      end
    end
  end
end
