# frozen_string_literal: true

module Scalar
  module Resources
    # SDKs
    class Sdks
      # SDKs
      # @return [Scalar::Resources::Sdks::Versions]
      attr_reader :versions

      # SDKs
      # @return [Scalar::Resources::Sdks::Repositories]
      attr_reader :repositories

      # Create an SDK from an API document, targeting one or more languages.
      #
      # @overload create(api_uid:, languages:, class_name: nil, config: nil, slug: nil, title: nil, request_options: {})
      #
      # @param api_uid [String]
      # @param languages [Array<Symbol, Scalar::Models::SdkCreateParams::Language>]
      # @param class_name [String]
      # @param config [String]
      # @param slug [String]
      # @param title [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::UID]
      #
      # @see Scalar::Models::SdkCreateParams
      def create(params)
        parsed, options = Scalar::SdkCreateParams.dump_request(params)
        @client.request(method: :post, path: "v1/sdks", body: parsed, model: Scalar::UID, options: options)
      end

      # Get a single SDK by its uid with the languages its config declares, its version
      # labels highest first, the current version label per language (`current`), and
      # the `currentVersion` and `latestVersion` tags.
      #
      # @overload retrieve(uid, request_options: {})
      #
      # @param uid [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::Sdk]
      #
      # @see Scalar::Models::SdkRetrieveParams
      def retrieve(uid, params = {})
        @client.request(
          method: :get,
          path: ["v1/sdks/%1$s", uid],
          model: Scalar::Sdk,
          options: params[:request_options]
        )
      end

      # Update SDK metadata, its linked API, or its config.
      #
      # @overload update(uid, api_uid: nil, api_version: nil, config: nil, is_private: nil, slug: nil, title: nil, request_options: {})
      #
      # @param uid [String]
      #
      # @param api_uid [String, nil]
      #
      # @param api_version [Object] Removed. A request that carries it is refused with a 400.
      #
      # @param config [String]
      #
      # @param is_private [Boolean]
      #
      # @param slug [String]
      #
      # @param title [String]
      #
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Scalar::Models::SdkUpdateParams
      def update(uid, params = {})
        parsed, options = Scalar::SdkUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/sdks/%1$s", uid],
          body: parsed,
          model: Scalar::Internal::Type::Unknown,
          options: options
        )
      end

      # List every SDK on the team with the languages its config declares, each with its
      # version labels highest first, the current version label per language
      # (`current`), and the `currentVersion` and `latestVersion` tags.
      #
      # @overload list(limit: nil, request_options: {})
      #
      # @param limit [Integer]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::SdkListResponse]
      #
      # @see Scalar::Models::SdkListParams
      def list(params = {})
        parsed, options = Scalar::SdkListParams.dump_request(params)
        query = Scalar::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/sdks",
          query: query,
          model: Scalar::Models::SdkListResponse,
          options: options
        )
      end

      # Delete an SDK and every version it holds.
      #
      # @overload delete(uid, request_options: {})
      #
      # @param uid [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Scalar::Models::SdkDeleteParams
      def delete(uid, params = {})
        @client.request(
          method: :delete,
          path: ["v1/sdks/%1$s", uid],
          model: Scalar::Internal::Type::Unknown,
          options: params[:request_options]
        )
      end

      # Start a build with the SDK's saved config. Every input is optional: `version` is
      # the version of the linked API description to build (default: its latest
      # version), `customCodeRef` the branch, tag or commit each language merges as
      # custom code (default: each language's `scalar-next` branch), and `languages` the
      # languages to build (default: every language the config declares). The response
      # names the version built. A 503 means the custom code could not be read from
      # GitHub and nothing was built; try again.
      #
      # @overload build(uid, custom_code_ref: nil, languages: nil, version: nil, request_options: {})
      #
      # @param uid [String]
      # @param custom_code_ref [String]
      # @param languages [Array<Symbol, Scalar::Models::SdkBuildParams::Language>]
      # @param version [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::SdkBuildResponse]
      #
      # @see Scalar::Models::SdkBuildParams
      def build(uid, params = {})
        parsed, options = Scalar::SdkBuildParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/sdks/%1$s/build", uid],
          body: parsed,
          model: Scalar::Models::SdkBuildResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Scalar::Client]
      def initialize(client:)
        @client = client
        @versions = Scalar::Resources::Sdks::Versions.new(client: client)
        @repositories = Scalar::Resources::Sdks::Repositories.new(client: client)
      end
    end
  end
end
