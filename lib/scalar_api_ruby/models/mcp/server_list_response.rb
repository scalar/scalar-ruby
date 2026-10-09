# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      # @type [Scalar::Internal::Type::Converter]
      ServerListResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::Mcp::McpServer }]
    end
  end
end
