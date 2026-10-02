# frozen_string_literal: true

module Scalar
  module Models
    class OauthToken < Scalar::Internal::Type::BaseModel
      # @!attribute access_token
      #
      #   @return [String]
      required :access_token, String

      # @!attribute expires_in
      #
      #   @return [Integer]
      required :expires_in, Integer

      # @!attribute refresh_token
      #
      #   @return [String]
      required :refresh_token, String

      # @!attribute scope
      #
      #   @return [Symbol, Scalar::Models::OauthScope]
      required :scope, enum: -> { Scalar::OauthScope }

      # @!attribute token_type
      #
      #   @return [Symbol, :Bearer]
      required :token_type, const: :Bearer

      # @!method initialize(access_token:, expires_in:, refresh_token:, scope:, token_type: :Bearer)
      #   @param access_token [String]
      #   @param expires_in [Integer]
      #   @param refresh_token [String]
      #   @param scope [Symbol, Scalar::Models::OauthScope]
      #   @param token_type [Symbol, :Bearer]
    end
  end
end
