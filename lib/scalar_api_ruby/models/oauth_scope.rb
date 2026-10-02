# frozen_string_literal: true

module Scalar
  module Models
    module OauthScope
      extend Scalar::Internal::Type::Enum

      READ = :read
      WRITE = :write
      ADMIN = :admin

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
