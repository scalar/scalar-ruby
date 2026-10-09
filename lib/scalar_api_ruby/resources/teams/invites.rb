# frozen_string_literal: true

module Scalar
  module Resources
    class Teams
      # Teams
      class Invites
        # Withdraw an invite that has not been accepted.
        #
        # @overload cancel(uid, request_options: {})
        #
        # @param uid [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Teams::InviteCancelParams
        def cancel(uid, params = {})
          @client.request(
            method: :delete,
            path: ["v1/teams/invites/%1$s", uid],
            model: Scalar::Internal::Type::Unknown,
            options: params[:request_options]
          )
        end

        # Invite someone to the current team by email.
        #
        # @overload member(email:, role:, request_options: {})
        #
        # @param email [String]
        # @param role [Symbol, Scalar::Models::Teams::Role]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Teams::InviteMemberParams
        def member(params)
          parsed, options = Scalar::Teams::InviteMemberParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/teams/invites",
            body: parsed,
            model: Scalar::Internal::Type::Unknown,
            options: options
          )
        end

        # Send the invite email again.
        #
        # @overload resend(uid, request_options: {})
        #
        # @param uid [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Teams::InviteResendParams
        def resend(uid, params = {})
          @client.request(
            method: :patch,
            path: ["v1/teams/invites/%1$s", uid],
            model: Scalar::Internal::Type::Unknown,
            options: params[:request_options]
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
