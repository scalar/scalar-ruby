# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::Sdks#retrieve
    class Sdk < Scalar::Internal::Type::BaseModel
      # @!attribute api_uid
      #
      #   @return [String, nil]
      required :api_uid, String, api_name: :apiUid, nil?: true

      # @!attribute current
      #
      #   @return [Hash{Symbol=>String}]
      required :current, Scalar::Internal::Type::HashOf[String]

      # @!attribute current_version
      #
      #   @return [String]
      required :current_version, String, api_name: :currentVersion

      # @!attribute description
      #
      #   @return [String]
      required :description, String

      # @!attribute is_private
      #
      #   @return [Boolean]
      required :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

      # @!attribute latest_version
      #
      #   @return [String, nil]
      required :latest_version, String, api_name: :latestVersion, nil?: true

      # @!attribute namespace
      #
      #   @return [String]
      required :namespace, String

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!attribute targets
      #
      #   @return [Array<Scalar::Models::SdkTargetSummary>]
      required :targets, -> { Scalar::Internal::Type::ArrayOf[Scalar::SdkTargetSummary] }

      # @!attribute title
      #
      #   @return [String]
      required :title, String

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!attribute versions
      #
      #   @return [Array<Scalar::Models::SdkVersion>]
      required :versions, -> { Scalar::Internal::Type::ArrayOf[Scalar::SdkVersion] }

      # @!method initialize(api_uid:, current:, current_version:, description:, is_private:, latest_version:, namespace:, slug:, targets:, title:, uid:, versions:)
      #   @param api_uid [String, nil]
      #   @param current [Hash{Symbol=>String}]
      #   @param current_version [String]
      #   @param description [String]
      #   @param is_private [Boolean]
      #   @param latest_version [String, nil]
      #   @param namespace [String]
      #   @param slug [String]
      #   @param targets [Array<Scalar::Models::SdkTargetSummary>]
      #   @param title [String]
      #   @param uid [String]
      #   @param versions [Array<Scalar::Models::SdkVersion>]
    end
  end
end
