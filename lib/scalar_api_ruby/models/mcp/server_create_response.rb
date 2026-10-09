# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      # @see Scalar::Resources::Mcp::Servers#create
      class ServerCreateResponse < Scalar::Internal::Type::BaseModel
        # @!attribute installation
        #
        #   @return [Scalar::Models::Mcp::McpInstallation]
        required :installation, -> { Scalar::Mcp::McpInstallation }

        # @!attribute server
        #
        #   @return [Scalar::Models::Mcp::McpServer]
        required :server, -> { Scalar::Mcp::McpServer }

        # @!method initialize(installation:, server:)
        #   @param installation [Scalar::Models::Mcp::McpInstallation]
        #   @param server [Scalar::Models::Mcp::McpServer]
      end
    end
  end
end
