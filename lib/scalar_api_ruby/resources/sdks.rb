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

      # Get a single SDK by its uid.
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
      # @param api_uid [String, nil]
      # @param api_version [String, nil]
      # @param config [String]
      # @param is_private [Boolean]
      # @param slug [String]
      # @param title [String]
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

      # List every SDK on the team.
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

      # Start a build. Omit `version` to build the current work — the open draft, else
      # the latest version — and the resolved version comes back in the response.
      #
      # @overload build(uid, languages: nil, version: nil, request_options: {})
      #
      # @param uid [String]
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
