# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::Sdks#list
    class SdkListResponse < Scalar::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Scalar::Models::Sdk>]
      required :data, -> { Scalar::Internal::Type::ArrayOf[Scalar::Sdk] }

      # @!attribute has_more
      #
      #   @return [Boolean]
      required :has_more, Scalar::Internal::Type::Boolean, api_name: :hasMore

      # @!method initialize(data:, has_more:)
      #   @param data [Array<Scalar::Models::Sdk>]
      #   @param has_more [Boolean]
    end
  end
end
