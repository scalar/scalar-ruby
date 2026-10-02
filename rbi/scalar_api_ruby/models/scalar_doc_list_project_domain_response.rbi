# typed: strong

module Scalar
  module Models
    class ScalarDocListProjectDomainResponse < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Scalar::Models::ScalarDocListProjectDomainResponse,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :custom_domain

      sig { returns(T.nilable(String)) }
      attr_accessor :scalar_domain

      sig do
        params(
          custom_domain: T.nilable(String),
          scalar_domain: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(custom_domain:, scalar_domain:)
      end

      sig do
        override.returns(
          { custom_domain: T.nilable(String), scalar_domain: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
