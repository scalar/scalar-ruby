# frozen_string_literal: true

module Scalar
  module Resources
    class AccessGroups
      # Access Groups
      class Domains
        # Allow an exact email domain in a group. Requires docs edit permission. A group
        # supports up to 1000 domains.
        #
        # @overload create(slug, domain:, request_options: {})
        #
        # @param slug [String]
        # @param domain [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::AccessGroups::DomainCreateParams
        def create(slug, params)
          parsed, options = Scalar::AccessGroups::DomainCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/access-groups/%1$s/domains", slug],
            body: parsed,
            model: Scalar::Internal::Type::Unknown,
            options: options
          )
        end

        # Remove an exact email domain from a group. Requires docs edit permission. Other
        # allowed domains and emails are preserved.
        #
        # @overload delete(slug, domain:, request_options: {})
        #
        # @param slug [String]
        # @param domain [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::AccessGroups::DomainDeleteParams
        def delete(slug, params)
          parsed, options = Scalar::AccessGroups::DomainDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["v1/access-groups/%1$s/domains", slug],
            body: parsed,
            model: Scalar::Internal::Type::Unknown,
            options: options
          )
        end

        # @api private
        #
        # @param client [Scalar::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
