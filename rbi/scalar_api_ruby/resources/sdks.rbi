# typed: strong

module Scalar
  module Resources
    # SDKs
    class Sdks
      # SDKs
      sig { returns(Scalar::Resources::Sdks::Versions) }
      attr_reader :versions

      # SDKs
      sig { returns(Scalar::Resources::Sdks::Repositories) }
      attr_reader :repositories

      # Create an SDK from an API document, targeting one or more languages.
      sig do
        params(
          api_uid: String,
          languages: T::Array[Scalar::SdkCreateParams::Language::OrSymbol],
          class_name: String,
          config: String,
          slug: String,
          title: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::UID)
      end
      def create(
        api_uid:,
        languages:,
        class_name: nil,
        config: nil,
        slug: nil,
        title: nil,
        request_options: {}
      )
      end

      # Get a single SDK by its uid.
      sig do
        params(
          uid: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Sdk)
      end
      def retrieve(uid, request_options: {})
      end

      # Update SDK metadata, its linked API, or its config.
      sig do
        params(
          uid: String,
          api_uid: T.nilable(String),
          api_version: T.nilable(String),
          config: String,
          is_private: T::Boolean,
          slug: String,
          title: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def update(
        uid,
        api_uid: nil,
        api_version: nil,
        config: nil,
        is_private: nil,
        slug: nil,
        title: nil,
        request_options: {}
      )
      end

      # List every SDK on the team.
      sig do
        params(
          limit: Integer,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::SdkListResponse)
      end
      def list(limit: nil, request_options: {})
      end

      # Delete an SDK and every version it holds.
      sig do
        params(
          uid: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def delete(uid, request_options: {})
      end

      # Start a build. Omit `version` to build the current work — the open draft, else
      # the latest version — and the resolved version comes back in the response.
      sig do
        params(
          uid: String,
          languages: T::Array[Scalar::SdkBuildParams::Language::OrSymbol],
          version: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::SdkBuildResponse)
      end
      def build(uid, languages: nil, version: nil, request_options: {})
      end

      # @api private
      sig { params(client: Scalar::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
