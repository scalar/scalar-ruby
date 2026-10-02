# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::Sdks#update
    class SdkUpdateParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!attribute api_uid
      #
      #   @return [String, nil]
      optional :api_uid, String, api_name: :apiUid, nil?: true

      # @!attribute api_version
      #
      #   @return [String, nil]
      optional :api_version, String, api_name: :apiVersion, nil?: true

      # @!attribute config
      #
      #   @return [String, nil]
      optional :config, String

      # @!attribute is_private
      #
      #   @return [Boolean, nil]
      optional :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

      # @!attribute slug
      #
      #   @return [String, nil]
      optional :slug, String

      # @!attribute title
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(uid:, api_uid: nil, api_version: nil, config: nil, is_private: nil, slug: nil, title: nil, request_options: {})
      #   @param uid [String]
      #   @param api_uid [String, nil]
      #   @param api_version [String, nil]
      #   @param config [String]
      #   @param is_private [Boolean]
      #   @param slug [String]
      #   @param title [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
