# typed: strong

module Scalar
  module Resources
    # Access Groups
    class AccessGroups
      # Access Groups
      sig { returns(Scalar::Resources::AccessGroups::Domains) }
      attr_reader :domains

      # Create a group for the current team. Requires docs edit permission and the
      # access groups billing feature. Domains are exact email domains, without
      # wildcards or implicit subdomain matching.
      sig do
        params(
          allowed_domains: T.anything,
          name: String,
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::AccessGroupCreateResponse)
      end
      def create(
        allowed_domains: nil,
        name: nil,
        slug: nil,
        request_options: {}
      )
      end

      # Get a group and its email and domain allowlists by slug.
      sig do
        params(
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(Scalar::Models::AccessGroupRetrieveResponse)
      end
      def retrieve(slug, request_options: {})
      end

      # Update group metadata. Requires docs edit permission. After changing the slug,
      # use the new slug in subsequent requests.
      sig do
        params(
          path_slug: String,
          name: String,
          body_slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def update(path_slug, name: nil, body_slug: nil, request_options: {})
      end

      # Delete a group and remove its project assignments. Requires docs edit
      # permission.
      sig do
        params(
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def delete(slug, request_options: {})
      end

      # @api private
      sig { params(client: Scalar::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
