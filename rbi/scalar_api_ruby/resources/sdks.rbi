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

      # Get a single SDK by its uid. `targets` are the languages its config declares,
      # which the next build builds. `current` (the version label per language a request
      # without a version serves) and each version label’s `languages`, highest label
      # first, are what is served, and can include a language a later config dropped: a
      # version keeps the languages its builds produced. Also returns the
      # `currentVersion` and `latestVersion` tags.
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
          api_version: T.anything,
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
        # Removed. A request that carries it is refused with a 400.
        api_version: nil,
        config: nil,
        is_private: nil,
        slug: nil,
        title: nil,
        request_options: {}
      )
      end

      # List every SDK on the team. `targets` are the languages its config declares,
      # which the next build builds. `current` (the version label per language a request
      # without a version serves) and each version label’s `languages`, highest label
      # first, are what is served, and can include a language a later config dropped: a
      # version keeps the languages its builds produced. Also returns the
      # `currentVersion` and `latestVersion` tags.
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

      # Start a build with the SDK's saved config. Every input is optional: `version` is
      # the version of the linked API description to build (default: its latest
      # version), `customCodeRef` the branch, tag or commit each language merges as
      # custom code (default: each language's `scalar-next` branch), and `languages` the
      # languages to build (default: every language the config declares). The response
      # names the version built. A 503 means the custom code could not be read from
      # GitHub and nothing was built; try again.
      sig do
        params(
          uid: String,
          custom_code_ref: String,
          languages: T::Array[Scalar::SdkBuildParams::Language::OrSymbol],
          version: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::SdkBuildResponse)
      end
      def build(
        uid,
        custom_code_ref: nil,
        languages: nil,
        version: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Scalar::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
