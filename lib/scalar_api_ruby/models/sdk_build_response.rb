# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::Sdks#build
    class SdkBuildResponse < Scalar::Internal::Type::BaseModel
      # @!attribute version
      #
      #   @return [String]
      required :version, String

      # @!method initialize(version:)
      #   @param version [String]
    end
  end
end
