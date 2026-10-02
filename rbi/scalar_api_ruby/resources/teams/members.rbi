# typed: strong

module Scalar
  module Resources
    class Teams
      # Teams
      class Members
        # Change what a member of the current team is allowed to do.
        sig do
          params(
            uid: String,
            role: Scalar::Teams::Role::OrSymbol,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def update(uid, role:, request_options: {})
        end

        # List the members of the current team, along with the invites still outstanding.
        sig do
          params(request_options: Scalar::RequestOptions::OrHash).returns(
            Scalar::Models::Teams::MemberListResponse
          )
        end
        def list(request_options: {})
        end

        # Remove someone from the current team.
        sig do
          params(
            uid: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def delete(uid, request_options: {})
        end

        # @api private
        sig { params(client: Scalar::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
