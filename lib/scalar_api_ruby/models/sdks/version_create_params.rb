# frozen_string_literal: true

module Scalar
  module Models
    module Sdks
      # @see Scalar::Resources::Sdks::Versions#create
      class VersionCreateParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute api_version
        #
        #   @return [String]
        required :api_version, String, api_name: :apiVersion

        # @!attribute version
        #
        #   @return [String]
        required :version, String

        # @!method initialize(uid:, api_version:, version:, request_options: {})
        #   @param uid [String]
        #   @param api_version [String]
        #   @param version [String]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
