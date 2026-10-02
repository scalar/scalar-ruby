# typed: strong

module Scalar
  module Models
    module Mcp
      module Servers
        InstallationListResponse =
          T.let(
            Scalar::Internal::Type::ArrayOf[
              Scalar::Mcp::Servers::McpInstallationListItem
            ],
            Scalar::Internal::Type::Converter
          )
      end
    end
  end
end
