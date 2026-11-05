# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#create_project
    class DocsProject < Scalar::Internal::Type::BaseModel
      # @!attribute access_groups
      #
      #   @return [Object]
      required :access_groups, Scalar::Internal::Type::Unknown, api_name: :accessGroups

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

      # @!attribute is_private
      #
      #   @return [Boolean]
      required :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

      # @!attribute last_published
      #
      #   @return [Integer, nil]
      required :last_published, Integer, api_name: :lastPublished, nil?: true

      # @!attribute login_portal_uid
      #
      #   @return [String]
      required :login_portal_uid, String, api_name: :loginPortalUid

      # @!attribute name
      #
      #   @return [String]
      required :name, String

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

      # @!method initialize(access_groups:, active_theme_id:, agent_enabled:, analytics_enabled:, is_private:, last_published:, login_portal_uid:, name:, publish_status:, slug:, uid:)
      #   @param access_groups [Object]
      #   @param active_theme_id [String]
      #   @param agent_enabled [Boolean]
      #   @param analytics_enabled [Boolean]
      #   @param is_private [Boolean]
      #   @param last_published [Integer, nil]
      #   @param login_portal_uid [String]
      #   @param name [String]
      #   @param publish_status [String]
      #   @param slug [String]
      #   @param uid [String]
    end
  end
end
