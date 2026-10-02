# frozen_string_literal: true

module Scalar
  module Resources
    class Teams
      # Teams
      class Members
        # Change what a member of the current team is allowed to do.
        #
        # @overload update(uid, role:, request_options: {})
        #
        # @param uid [String]
        # @param role [Symbol, Scalar::Models::Teams::Role]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Teams::MemberUpdateParams
        def update(uid, params)
          parsed, options = Scalar::Teams::MemberUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/teams/members/%1$s", uid],
            body: parsed,
            model: Scalar::Internal::Type::Unknown,
            options: options
          )
        end

        # List the members of the current team, along with the invites still outstanding.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Scalar::Models::Teams::MemberListResponse]
        #
        # @see Scalar::Models::Teams::MemberListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "v1/teams/members",
            model: Scalar::Models::Teams::MemberListResponse,
            options: params[:request_options]
          )
        end

        # Remove someone from the current team.
        #
        # @overload delete(uid, request_options: {})
        #
        # @param uid [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Teams::MemberDeleteParams
        def delete(uid, params = {})
          @client.request(
            method: :delete,
            path: ["v1/teams/members/%1$s", uid],
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
