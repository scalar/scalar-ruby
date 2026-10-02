# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#update_project
    class ScalarDocUpdateProjectParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute access_groups
      #
      #   @return [Array<String>, nil]
      optional :access_groups, Scalar::Internal::Type::ArrayOf[String], api_name: :accessGroups

      # @!attribute active_theme_id
      #
      #   @return [String, nil]
      optional :active_theme_id, String, api_name: :activeThemeId

      # @!attribute agent_enabled
      #
      #   @return [Boolean, nil]
      optional :agent_enabled, Scalar::Internal::Type::Boolean, api_name: :agentEnabled

      # @!attribute analytics_enabled
      #
      #   @return [Boolean, nil]
      optional :analytics_enabled, Scalar::Internal::Type::Boolean, api_name: :analyticsEnabled

      # @!attribute is_private
      #
      #   @return [Boolean, nil]
      optional :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

      # @!attribute login_portal_uid
      #
      #   @return [String, Symbol, nil]
      optional :login_portal_uid,
               union: -> { Scalar::ScalarDocUpdateProjectParams::LoginPortalUID },
               api_name: :loginPortalUid

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(slug:, access_groups: nil, active_theme_id: nil, agent_enabled: nil, analytics_enabled: nil, is_private: nil, login_portal_uid: nil, name: nil, request_options: {})
      #   @param slug [String]
      #   @param access_groups [Array<String>]
      #   @param active_theme_id [String]
      #   @param agent_enabled [Boolean]
      #   @param analytics_enabled [Boolean]
      #   @param is_private [Boolean]
      #   @param login_portal_uid [String, Symbol]
      #   @param name [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]

      module LoginPortalUID
        extend Scalar::Internal::Type::Union

        variant String

        variant const: :""

        # @!method self.variants
        #   @return [Array(String, Symbol)]
      end
    end
  end
end
