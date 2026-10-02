# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::OAuth#oauth_token
    class OAuthOauthTokenParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute grant_type
      #
      #   @return [String]
      required :grant_type, String

      # @!attribute client_id
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!attribute client_secret
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!attribute code
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute code_verifier
      #
      #   @return [String, nil]
      optional :code_verifier, String

      # @!attribute redirect_uri
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!attribute refresh_token
      #
      #   @return [String, nil]
      optional :refresh_token, String

      # @!attribute scope
      #
      #   @return [String, nil]
      optional :scope, String

      # @!method initialize(grant_type:, client_id: nil, client_secret: nil, code: nil, code_verifier: nil, redirect_uri: nil, refresh_token: nil, scope: nil, request_options: {})
      #   @param grant_type [String]
      #   @param client_id [String]
      #   @param client_secret [String]
      #   @param code [String]
      #   @param code_verifier [String]
      #   @param redirect_uri [String]
      #   @param refresh_token [String]
      #   @param scope [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
