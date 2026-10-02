# typed: strong

module Scalar
  module Models
    class OauthAuthorizationServerMetadata < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Scalar::OauthAuthorizationServerMetadata,
            Scalar::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :authorization_endpoint

      sig { returns(T::Array[String]) }
      attr_accessor :code_challenge_methods_supported

      sig { returns(T::Array[String]) }
      attr_accessor :grant_types_supported

      sig { returns(String) }
      attr_accessor :issuer

      sig { returns(T::Array[String]) }
      attr_accessor :response_types_supported

      sig { returns(String) }
      attr_accessor :revocation_endpoint

      sig { returns(T::Array[String]) }
      attr_accessor :revocation_endpoint_auth_methods_supported

      sig { returns(T::Array[String]) }
      attr_accessor :scopes_supported

      sig { returns(String) }
      attr_accessor :token_endpoint

      sig { returns(T::Array[String]) }
      attr_accessor :token_endpoint_auth_methods_supported

      sig do
        params(
          authorization_endpoint: String,
          code_challenge_methods_supported: T::Array[String],
          grant_types_supported: T::Array[String],
          issuer: String,
          response_types_supported: T::Array[String],
          revocation_endpoint: String,
          revocation_endpoint_auth_methods_supported: T::Array[String],
          scopes_supported: T::Array[String],
          token_endpoint: String,
          token_endpoint_auth_methods_supported: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        authorization_endpoint:,
        code_challenge_methods_supported:,
        grant_types_supported:,
        issuer:,
        response_types_supported:,
        revocation_endpoint:,
        revocation_endpoint_auth_methods_supported:,
        scopes_supported:,
        token_endpoint:,
        token_endpoint_auth_methods_supported:
      )
      end

      sig do
        override.returns(
          {
            authorization_endpoint: String,
            code_challenge_methods_supported: T::Array[String],
            grant_types_supported: T::Array[String],
            issuer: String,
            response_types_supported: T::Array[String],
            revocation_endpoint: String,
            revocation_endpoint_auth_methods_supported: T::Array[String],
            scopes_supported: T::Array[String],
            token_endpoint: String,
            token_endpoint_auth_methods_supported: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
