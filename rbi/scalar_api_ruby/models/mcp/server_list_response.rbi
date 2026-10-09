# typed: strong

module Scalar
  module Models
    module Mcp
      ServerListResponse =
        T.let(
          Scalar::Internal::Type::ArrayOf[Scalar::Mcp::McpServer],
          Scalar::Internal::Type::Converter
        )
    end
  end
end
