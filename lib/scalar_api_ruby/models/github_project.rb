# frozen_string_literal: true

module Scalar
  module Models
    class GithubProject < Scalar::Internal::Type::BaseModel
      # @!attribute access_groups
      #
      #   @return [Object]
      required :access_groups, Scalar::Internal::Type::Unknown, api_name: :accessGroups

      # @!attribute active_deployment
      #
      #   @return [Scalar::Models::ActiveDeployment, nil]
      required :active_deployment, -> { Scalar::ActiveDeployment }, api_name: :activeDeployment, nil?: true

      # @!attribute active_theme_id
      #
      #   @return [String]
      required :active_theme_id, String, api_name: :activeThemeId

      # @!attribute agent_enabled
      #
      #   @return [Boolean]
      required :agent_enabled, Scalar::Internal::Type::Boolean, api_name: :agentEnabled

      # @!attribute analytics_enabled
      #
      #   @return [Boolean]
      required :analytics_enabled, Scalar::Internal::Type::Boolean, api_name: :analyticsEnabled

      # @!attribute created_at
      #
      #   @return [Integer]
      required :created_at, Integer, api_name: :createdAt

      # @!attribute is_private
      #
      #   @return [Boolean]
      required :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

      # @!attribute last_published
      #
      #   @return [Integer, nil]
      required :last_published, Integer, api_name: :lastPublished, nil?: true

      # @!attribute last_published_uid
      #
      #   @return [String, nil]
      required :last_published_uid, String, api_name: :lastPublishedUid, nil?: true

      # @!attribute login_portal_uid
      #
      #   @return [String]
      required :login_portal_uid, String, api_name: :loginPortalUid

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute publish_message
      #
      #   @return [String]
      required :publish_message, String, api_name: :publishMessage

      # @!attribute publish_status
      #
      #   @return [String]
      required :publish_status, String, api_name: :publishStatus

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!attribute updated_at
      #
      #   @return [Integer]
      required :updated_at, Integer, api_name: :updatedAt

      # @!attribute user_info_hook_url
      #
      #   @return [String]
      required :user_info_hook_url, String, api_name: :userInfoHookUrl

      # @!attribute repository
      #
      #   @return [Scalar::Models::GithubProjectRepository, nil]
      optional :repository, -> { Scalar::GithubProjectRepository }, nil?: true

      # @!attribute typesense_id
      #
      #   @return [Float, nil]
      optional :typesense_id, Float, api_name: :typesenseId

      # @!method initialize(access_groups:, active_deployment:, active_theme_id:, agent_enabled:, analytics_enabled:, created_at:, is_private:, last_published:, last_published_uid:, login_portal_uid:, name:, publish_message:, publish_status:, slug:, uid:, updated_at:, user_info_hook_url:, repository: nil, typesense_id: nil)
      #   @param access_groups [Object]
      #   @param active_deployment [Scalar::Models::ActiveDeployment, nil]
      #   @param active_theme_id [String]
      #   @param agent_enabled [Boolean]
      #   @param analytics_enabled [Boolean]
      #   @param created_at [Integer]
      #   @param is_private [Boolean]
      #   @param last_published [Integer, nil]
      #   @param last_published_uid [String, nil]
      #   @param login_portal_uid [String]
      #   @param name [String]
      #   @param publish_message [String]
      #   @param publish_status [String]
      #   @param slug [String]
      #   @param uid [String]
      #   @param updated_at [Integer]
      #   @param user_info_hook_url [String]
      #   @param repository [Scalar::Models::GithubProjectRepository, nil]
      #   @param typesense_id [Float]
    end
  end
end
