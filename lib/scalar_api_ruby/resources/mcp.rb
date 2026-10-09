# frozen_string_literal: true

module Scalar
  module Resources
    class Mcp
      # MCP
      # @return [Scalar::Resources::Mcp::Servers]
      attr_reader :servers

      # @api private
      #
      # @param client [Scalar::Client]
      def initialize(client:)
        @client = client
        @servers = Scalar::Resources::Mcp::Servers.new(client: client)
      end
    end
  end
end
