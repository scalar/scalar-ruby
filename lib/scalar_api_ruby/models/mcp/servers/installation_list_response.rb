# frozen_string_literal: true

module Scalar
  module Models
    module Mcp
      module Servers
        # @type [Scalar::Internal::Type::Converter]
        InstallationListResponse =
          Scalar::Internal::Type::ArrayOf[-> { Scalar::Mcp::Servers::McpInstallationListItem }]
      end
    end
  end
end
