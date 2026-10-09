# frozen_string_literal: true

module Scalar
  module Models
    class GithubProjectRepository < Scalar::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [Float]
      required :id, Float

      # @!attribute branch
      #
      #   @return [String]
      required :branch, String

      # @!attribute config_path
      #
      #   @return [String]
      required :config_path, String, api_name: :configPath

      # @!attribute expired
      #
      #   @return [Boolean]
      required :expired, Scalar::Internal::Type::Boolean

      # @!attribute linked_by
      #
      #   @return [String]
      required :linked_by, String, api_name: :linkedBy

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute pr_comments
      #
      #   @return [Boolean]
      required :pr_comments, Scalar::Internal::Type::Boolean, api_name: :prComments

      # @!attribute publish_on_merge
      #
      #   @return [Boolean]
      required :publish_on_merge, Scalar::Internal::Type::Boolean, api_name: :publishOnMerge

      # @!attribute publish_previews
      #
      #   @return [Boolean]
      required :publish_previews, Scalar::Internal::Type::Boolean, api_name: :publishPreviews

      # @!method initialize(id:, branch:, config_path:, expired:, linked_by:, name:, pr_comments:, publish_on_merge:, publish_previews:)
      #   @param id [Float]
      #   @param branch [String]
      #   @param config_path [String]
      #   @param expired [Boolean]
      #   @param linked_by [String]
      #   @param name [String]
      #   @param pr_comments [Boolean]
      #   @param publish_on_merge [Boolean]
      #   @param publish_previews [Boolean]
    end
  end
end
