# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#list_project_config
    class ScalarDocListProjectConfigParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute ref
      #
      #   @return [String, nil]
      optional :ref, String

      # @!method initialize(slug:, ref: nil, request_options: {})
      #   @param slug [String]
      #   @param ref [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
