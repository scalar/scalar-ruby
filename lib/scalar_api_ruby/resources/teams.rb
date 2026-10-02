# frozen_string_literal: true

module Scalar
  module Resources
    # Teams
    class Teams
      # Teams
      # @return [Scalar::Resources::Teams::Members]
      attr_reader :members

      # Teams
      # @return [Scalar::Resources::Teams::Invites]
      attr_reader :invites

      # List all available teams
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Scalar::Models::Team>]
      #
      # @see Scalar::Models::TeamListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "v1/teams",
          model: Scalar::Internal::Type::ArrayOf[Scalar::Team],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Scalar::Client]
      def initialize(client:)
        @client = client
        @members = Scalar::Resources::Teams::Members.new(client: client)
        @invites = Scalar::Resources::Teams::Invites.new(client: client)
      end
    end
  end
end
