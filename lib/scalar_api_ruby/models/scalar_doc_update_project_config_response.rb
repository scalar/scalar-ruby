# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#update_project_config
    class ScalarDocUpdateProjectConfigResponse < Scalar::Internal::Type::BaseModel
      # @!attribute base_token
      #
      #   @return [String]
      required :base_token, String, api_name: :baseToken

      # @!attribute commit_sha
      #
      #   @return [String, nil]
      required :commit_sha, String, api_name: :commitSha, nil?: true

      # @!attribute ref
      #
      #   @return [String]
      required :ref, String

      # @!method initialize(base_token:, commit_sha:, ref:)
      #   @param base_token [String]
      #   @param commit_sha [String, nil]
      #   @param ref [String]
    end
  end
end
