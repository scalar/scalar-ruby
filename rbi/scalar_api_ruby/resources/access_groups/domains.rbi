# typed: strong

module Scalar
  module Resources
    class AccessGroups
      # Access Groups
      class Domains
        # Allow an exact email domain in a group. Requires docs edit permission. A group
        # supports up to 1000 domains.
        sig do
          params(
            slug: String,
            domain: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def create(slug, domain:, request_options: {})
        end

        # Remove an exact email domain from a group. Requires docs edit permission. Other
        # allowed domains and emails are preserved.
        sig do
          params(
            slug: String,
            domain: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def delete(slug, domain:, request_options: {})
        end

        # @api private
        sig { params(client: Scalar::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
