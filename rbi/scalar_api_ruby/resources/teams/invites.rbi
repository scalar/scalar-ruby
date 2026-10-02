# typed: strong

module Scalar
  module Resources
    class Teams
      # Teams
      class Invites
        # Withdraw an invite that has not been accepted.
        sig do
          params(
            uid: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def cancel(uid, request_options: {})
        end

        # Invite someone to the current team by email.
        sig do
          params(
            email: String,
            role: Scalar::Teams::Role::OrSymbol,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def member(email:, role:, request_options: {})
        end

        # Send the invite email again.
        sig do
          params(
            uid: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def resend(uid, request_options: {})
        end

        # @api private
        sig { params(client: Scalar::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
