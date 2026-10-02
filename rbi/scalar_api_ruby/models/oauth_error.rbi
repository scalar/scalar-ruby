# typed: strong

module Scalar
  module Models
    class OauthError < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::OauthError, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :error

      sig { returns(T.nilable(String)) }
      attr_reader :error_description

      sig { params(error_description: String).void }
      attr_writer :error_description

      sig do
        params(error: String, error_description: String).returns(
          T.attached_class
        )
      end
      def self.new(error:, error_description: nil)
      end

      sig { override.returns({ error: String, error_description: String }) }
      def to_hash
      end
    end
  end
end
