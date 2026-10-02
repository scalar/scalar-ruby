# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#update_project_config
    class ScalarDocUpdateProjectConfigParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute content
      #
      #   @return [String]
      required :content, String

      # @!attribute base_token
      #
      #   @return [String, nil]
      optional :base_token, String, api_name: :baseToken

      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute path
      #
      #   @return [String, nil]
      optional :path, String

      # @!attribute ref
      #
      #   @return [String, nil]
      optional :ref, String

      # @!method initialize(slug:, content:, base_token: nil, message: nil, path: nil, ref: nil, request_options: {})
      #   @param slug [String]
      #   @param content [String]
      #   @param base_token [String]
      #   @param message [String]
      #   @param path [String]
      #   @param ref [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
