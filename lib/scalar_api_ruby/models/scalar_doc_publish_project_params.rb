# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#publish_project
    class ScalarDocPublishProjectParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute commit_sha
      #
      #   @return [String, nil]
      optional :commit_sha, String, api_name: :commitSha

      # @!attribute config_path
      #
      #   @return [String, nil]
      optional :config_path, String, api_name: :configPath

      # @!attribute preview
      #
      #   @return [Boolean, nil]
      optional :preview, Scalar::Internal::Type::Boolean

      # @!method initialize(slug:, commit_sha: nil, config_path: nil, preview: nil, request_options: {})
      #   @param slug [String]
      #   @param commit_sha [String]
      #   @param config_path [String]
      #   @param preview [Boolean]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
