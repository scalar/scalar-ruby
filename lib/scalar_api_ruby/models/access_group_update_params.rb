# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::AccessGroups#update
    class AccessGroupUpdateParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute path_slug
      #
      #   @return [String]
      required :path_slug, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute body_slug
      #
      #   @return [String, nil]
      optional :body_slug, String, api_name: :slug

      # @!method initialize(path_slug:, name: nil, body_slug: nil, request_options: {})
      #   @param path_slug [String]
      #   @param name [String]
      #   @param body_slug [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
