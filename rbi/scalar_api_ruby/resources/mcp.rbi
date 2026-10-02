# typed: strong

module Scalar
  module Resources
    class Mcp
      # MCP
      sig { returns(Scalar::Resources::Mcp::Servers) }
      attr_reader :servers

      # @api private
      sig { params(client: Scalar::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
