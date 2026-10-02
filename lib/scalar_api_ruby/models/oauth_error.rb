# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::OAuth#oauth_revoke
    class OauthError < Scalar::Internal::Type::BaseModel
      # @!attribute error
      #
      #   @return [String]
      required :error, String

      # @!attribute error_description
      #
      #   @return [String, nil]
      optional :error_description, String

      # @!method initialize(error:, error_description: nil)
      #   @param error [String]
      #   @param error_description [String]
    end
  end
end
