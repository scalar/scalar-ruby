# typed: strong

module Scalar
  module Resources
    # OAuth
    class OAuth
      # Discovery document for OAuth clients (RFC 8414): where the endpoints are and
      # what they support.
      sig do
        params(request_options: Scalar::RequestOptions::OrHash).returns(
          Scalar::OauthAuthorizationServerMetadata
        )
      end
      def oauth_authorization_server_metadata(request_options: {})
      end

      # Authorization endpoint (RFC 6749 §4.1.1 with PKCE, RFC 7636). Validates the
      # request and sends the user to the Scalar dashboard to approve it; the user
      # returns to `redirect_uri` with a `code` to exchange at the token endpoint. Only
      # `response_type=code` with `code_challenge_method=S256` is supported.
      sig do
        params(request_options: Scalar::RequestOptions::OrHash).returns(
          T.anything
        )
      end
      def oauth_authorize(request_options: {})
      end

      # Revocation endpoint (RFC 7009). Revokes the refresh token and every token issued
      # alongside it. The client authenticates as it does at the token endpoint.
      # Responds 200 whether or not the token was live, as the RFC requires.
      sig do
        params(
          token: String,
          client_id: String,
          client_secret: String,
          token_type_hint: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::OauthError)
      end
      def oauth_revoke(
        token:,
        client_id: nil,
        client_secret: nil,
        token_type_hint: nil,
        request_options: {}
      )
      end

      # Token endpoint (RFC 6749 §4.1.3 and §6). Accepts
      # `application/x-www-form-urlencoded`. Confidential clients authenticate with HTTP
      # Basic or `client_secret` in the body; public clients send `client_id` alone. The
      # `authorization_code` grant needs `code`, `redirect_uri` and `code_verifier`; the
      # `refresh_token` grant needs `refresh_token` and may narrow `scope`.
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
        ).returns(Scalar::Models::OAuthOauthTokenResponse::Variants)
      end
      def oauth_token(
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

      # @api private
      sig { params(client: Scalar::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
