# typed: strong

module Scalar
  module Models
    class OAuthOauthRevokeParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::OAuthOauthRevokeParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :token

      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { params(client_secret: String).void }
      attr_writer :client_secret

      sig { returns(T.nilable(String)) }
      attr_reader :token_type_hint

      sig { params(token_type_hint: String).void }
      attr_writer :token_type_hint

      sig do
        params(
          token: String,
          client_id: String,
          client_secret: String,
          token_type_hint: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        token:,
        client_id: nil,
        client_secret: nil,
        token_type_hint: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            token: String,
            client_id: String,
            client_secret: String,
            token_type_hint: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
