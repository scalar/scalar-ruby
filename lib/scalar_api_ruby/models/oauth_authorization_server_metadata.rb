# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::OAuth#oauth_authorization_server_metadata
    class OauthAuthorizationServerMetadata < Scalar::Internal::Type::BaseModel
      # @!attribute authorization_endpoint
      #
      #   @return [String]
      required :authorization_endpoint, String

      # @!attribute code_challenge_methods_supported
      #
      #   @return [Array<String>]
      required :code_challenge_methods_supported, Scalar::Internal::Type::ArrayOf[String]

      # @!attribute grant_types_supported
      #
      #   @return [Array<String>]
      required :grant_types_supported, Scalar::Internal::Type::ArrayOf[String]

      # @!attribute issuer
      #
      #   @return [String]
      required :issuer, String

      # @!attribute response_types_supported
      #
      #   @return [Array<String>]
      required :response_types_supported, Scalar::Internal::Type::ArrayOf[String]

      # @!attribute revocation_endpoint
      #
      #   @return [String]
      required :revocation_endpoint, String

      # @!attribute revocation_endpoint_auth_methods_supported
      #
      #   @return [Array<String>]
      required :revocation_endpoint_auth_methods_supported, Scalar::Internal::Type::ArrayOf[String]

      # @!attribute scopes_supported
      #
      #   @return [Array<String>]
      required :scopes_supported, Scalar::Internal::Type::ArrayOf[String]

      # @!attribute token_endpoint
      #
      #   @return [String]
      required :token_endpoint, String

      # @!attribute token_endpoint_auth_methods_supported
      #
      #   @return [Array<String>]
      required :token_endpoint_auth_methods_supported, Scalar::Internal::Type::ArrayOf[String]

      # @!method initialize(authorization_endpoint:, code_challenge_methods_supported:, grant_types_supported:, issuer:, response_types_supported:, revocation_endpoint:, revocation_endpoint_auth_methods_supported:, scopes_supported:, token_endpoint:, token_endpoint_auth_methods_supported:)
      #   @param authorization_endpoint [String]
      #   @param code_challenge_methods_supported [Array<String>]
      #   @param grant_types_supported [Array<String>]
      #   @param issuer [String]
      #   @param response_types_supported [Array<String>]
      #   @param revocation_endpoint [String]
      #   @param revocation_endpoint_auth_methods_supported [Array<String>]
      #   @param scopes_supported [Array<String>]
      #   @param token_endpoint [String]
      #   @param token_endpoint_auth_methods_supported [Array<String>]
    end
  end
end
