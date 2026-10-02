# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::OAuth#oauth_token
    module OAuthOauthTokenResponse
      extend Scalar::Internal::Type::Union

      variant -> { Scalar::OauthToken }

      variant -> { Scalar::OauthError }

      # @!method self.variants
      #   @return [Array(Scalar::Models::OauthToken, Scalar::Models::OauthError)]
    end
  end
end
