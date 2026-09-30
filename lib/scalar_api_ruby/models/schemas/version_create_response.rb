# frozen_string_literal: true

module Scalar
  module Models
    module Schemas
      # @see Scalar::Resources::Schemas::Version#create
      class VersionCreateResponse < Scalar::Internal::Type::BaseModel
        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!method initialize(uid:)
        #   @param uid [String]
      end
    end
  end
end
