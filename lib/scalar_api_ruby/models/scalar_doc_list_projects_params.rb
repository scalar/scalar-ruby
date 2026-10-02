# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#list_projects
    class ScalarDocListProjectsParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(limit: nil, request_options: {})
      #   @param limit [Integer]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
