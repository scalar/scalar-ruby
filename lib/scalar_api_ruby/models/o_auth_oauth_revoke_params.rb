# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::OAuth#oauth_revoke
    class OAuthOauthRevokeParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute client_id
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!attribute client_secret
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!attribute token_type_hint
      #
      #   @return [String, nil]
      optional :token_type_hint, String

      # @!method initialize(token:, client_id: nil, client_secret: nil, token_type_hint: nil, request_options: {})
      #   @param token [String]
      #   @param client_id [String]
      #   @param client_secret [String]
      #   @param token_type_hint [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
