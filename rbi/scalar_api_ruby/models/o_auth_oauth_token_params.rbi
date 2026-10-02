# typed: strong

module Scalar
  module Models
    class OAuthOauthTokenParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::OAuthOauthTokenParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :grant_type

      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { params(client_secret: String).void }
      attr_writer :client_secret

      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      sig { returns(T.nilable(String)) }
      attr_reader :code_verifier

      sig { params(code_verifier: String).void }
      attr_writer :code_verifier

      sig { returns(T.nilable(String)) }
      attr_reader :redirect_uri

      sig { params(redirect_uri: String).void }
      attr_writer :redirect_uri

      sig { returns(T.nilable(String)) }
      attr_reader :refresh_token

      sig { params(refresh_token: String).void }
      attr_writer :refresh_token

      sig { returns(T.nilable(String)) }
      attr_reader :scope

      sig { params(scope: String).void }
      attr_writer :scope

      sig do
        params(
          grant_type: String,
          client_id: String,
          client_secret: String,
          code: String,
          code_verifier: String,
          redirect_uri: String,
          refresh_token: String,
          scope: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        grant_type:,
        client_id: nil,
        client_secret: nil,
        code: nil,
        code_verifier: nil,
        redirect_uri: nil,
        refresh_token: nil,
        scope: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            grant_type: String,
            client_id: String,
            client_secret: String,
            code: String,
            code_verifier: String,
            redirect_uri: String,
            refresh_token: String,
            scope: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
