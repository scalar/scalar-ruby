# typed: strong

module Scalar
  module Models
    class OauthToken < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::OauthToken, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :access_token

      sig { returns(Integer) }
      attr_accessor :expires_in

      sig { returns(String) }
      attr_accessor :refresh_token

      sig { returns(Scalar::OauthScope::TaggedSymbol) }
      attr_accessor :scope

      sig { returns(Symbol) }
      attr_accessor :token_type

      sig do
        params(
          access_token: String,
          expires_in: Integer,
          refresh_token: String,
          scope: Scalar::OauthScope::OrSymbol,
          token_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        access_token:,
        expires_in:,
        refresh_token:,
        scope:,
        token_type: :Bearer
      )
      end

      sig do
        override.returns(
          {
            access_token: String,
            expires_in: Integer,
            refresh_token: String,
            scope: Scalar::OauthScope::TaggedSymbol,
            token_type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
