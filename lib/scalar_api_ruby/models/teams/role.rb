# frozen_string_literal: true

module Scalar
  module Models
    module Teams
      module Role
        extend Scalar::Internal::Type::Enum

        OWNER = :owner
        ADMIN = :admin
        EDITOR = :editor
        VIEWER = :viewer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
