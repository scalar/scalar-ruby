# frozen_string_literal: true

module Scalar
  module Resources
    # Access Groups
    class AccessGroups
      # Access Groups
      # @return [Scalar::Resources::AccessGroups::Domains]
      attr_reader :domains

      # Create a group for the current team. Requires docs edit permission and the
      # access groups billing feature. Domains are exact email domains, without
      # wildcards or implicit subdomain matching.
      #
      # @overload create(allowed_domains: nil, name: nil, slug: nil, request_options: {})
      #
      # @param allowed_domains [Object]
      # @param name [String]
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::AccessGroupCreateResponse]
      #
      # @see Scalar::Models::AccessGroupCreateParams
      def create(params = {})
        parsed, options = Scalar::AccessGroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/access-groups",
          body: parsed,
          model: Scalar::Models::AccessGroupCreateResponse,
          options: options
        )
      end

      # Get a group and its email and domain allowlists by slug.
      #
      # @overload retrieve(slug, request_options: {})
      #
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Scalar::Models::AccessGroupRetrieveResponse]
      #
      # @see Scalar::Models::AccessGroupRetrieveParams
      def retrieve(slug, params = {})
        @client.request(
          method: :get,
          path: ["v1/access-groups/%1$s", slug],
          model: Scalar::Models::AccessGroupRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update group metadata. Requires docs edit permission. After changing the slug,
      # use the new slug in subsequent requests.
      #
      # @overload update(path_slug, name: nil, body_slug: nil, request_options: {})
      #
      # @param path_slug [String]
      # @param name [String]
      # @param body_slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Scalar::Models::AccessGroupUpdateParams
      def update(path_slug, params = {})
        parsed, options = Scalar::AccessGroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/access-groups/%1$s", path_slug],
          body: parsed,
          model: Scalar::Internal::Type::Unknown,
          options: options
        )
      end

      # Delete a group and remove its project assignments. Requires docs edit
      # permission.
      #
      # @overload delete(slug, request_options: {})
      #
      # @param slug [String]
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Scalar::Models::AccessGroupDeleteParams
      def delete(slug, params = {})
        @client.request(
          method: :delete,
          path: ["v1/access-groups/%1$s", slug],
          model: Scalar::Internal::Type::Unknown,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Scalar::Client]
      def initialize(client:)
        @client = client
        @domains = Scalar::Resources::AccessGroups::Domains.new(client: client)
      end
    end
  end
end
