# frozen_string_literal: true

module Scalar
  module Models
    class ActiveDeployment < Scalar::Internal::Type::BaseModel
      # @!attribute domain
      #
      #   @return [String]
      required :domain, String

      # @!attribute published_at
      #
      #   @return [Integer]
      required :published_at, Integer, api_name: :publishedAt

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!method initialize(domain:, published_at:, uid:)
      #   @param domain [String]
      #   @param published_at [Integer]
      #   @param uid [String]
    end
  end
end
