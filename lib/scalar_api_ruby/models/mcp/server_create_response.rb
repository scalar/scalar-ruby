# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      # @see Scalar::Resources::Mcp::Servers#create
      class ServerCreateResponse < Scalar::Internal::Type::BaseModel
        # @!attribute server
        #
        #   @return [Scalar::Models::Mcp::McpServer]
        required :server, -> { Scalar::Mcp::McpServer }

        # @!method initialize(server:)
        #   @param server [Scalar::Models::Mcp::McpServer]
      end
    end
  end
end
