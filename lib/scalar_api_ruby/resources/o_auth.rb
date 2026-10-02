# frozen_string_literal: true

module Scalar
  module Resources
    # OAuth
    class OAuth
      # Discovery document for OAuth clients (RFC 8414): where the endpoints are and
      # what they support.
      #
      # @overload oauth_authorization_server_metadata(request_options: {})
      #
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::OauthAuthorizationServerMetadata]
      #
      # @see Scalar::Models::OAuthOauthAuthorizationServerMetadataParams
      def oauth_authorization_server_metadata(params = {})
        @client.request(
          method: :get,
          path: ".well-known/oauth-authorization-server",
          model: Scalar::OauthAuthorizationServerMetadata,
          options: params[:request_options]
        )
      end

      # Authorization endpoint (RFC 6749 §4.1.1 with PKCE, RFC 7636). Validates the
      # request and sends the user to the Scalar dashboard to approve it; the user
      # returns to `redirect_uri` with a `code` to exchange at the token endpoint. Only
      # `response_type=code` with `code_challenge_method=S256` is supported.
      #
      # @overload oauth_authorize(request_options: {})
      #
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Scalar::Models::OAuthOauthAuthorizeParams
      def oauth_authorize(params = {})
        @client.request(
          method: :get,
          path: "v1/oauth/authorize",
          model: Scalar::Internal::Type::Unknown,
          options: params[:request_options]
        )
      end

      # Revocation endpoint (RFC 7009). Revokes the refresh token and every token issued
      # alongside it. The client authenticates as it does at the token endpoint.
      # Responds 200 whether or not the token was live, as the RFC requires.
      #
      # @overload oauth_revoke(token:, client_id: nil, client_secret: nil, token_type_hint: nil, request_options: {})
      #
      # @param token [String]
      # @param client_id [String]
      # @param client_secret [String]
      # @param token_type_hint [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::OauthError]
      #
      # @see Scalar::Models::OAuthOauthRevokeParams
      def oauth_revoke(params)
        parsed, options = Scalar::OAuthOauthRevokeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/oauth/revoke",
          body: parsed,
          model: Scalar::OauthError,
          options: options
        )
      end

      # Token endpoint (RFC 6749 §4.1.3 and §6). Accepts
      # `application/x-www-form-urlencoded`. Confidential clients authenticate with HTTP
      # Basic or `client_secret` in the body; public clients send `client_id` alone. The
      # `authorization_code` grant needs `code`, `redirect_uri` and `code_verifier`; the
      # `refresh_token` grant needs `refresh_token` and may narrow `scope`.
      #
      # @overload oauth_token(grant_type:, client_id: nil, client_secret: nil, code: nil, code_verifier: nil, redirect_uri: nil, refresh_token: nil, scope: nil, request_options: {})
      #
      # @param grant_type [String]
      # @param client_id [String]
      # @param client_secret [String]
      # @param code [String]
      # @param code_verifier [String]
      # @param redirect_uri [String]
      # @param refresh_token [String]
      # @param scope [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::OauthToken, Scalar::Models::OauthError]
      #
      # @see Scalar::Models::OAuthOauthTokenParams
      def oauth_token(params)
        parsed, options = Scalar::OAuthOauthTokenParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/oauth/token",
          body: parsed,
          model: Scalar::Models::OAuthOauthTokenResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Scalar::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
