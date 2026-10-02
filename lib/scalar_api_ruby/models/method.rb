# frozen_string_literal: true

module Scalar
  module Models
    module Method
      extend Scalar::Internal::Type::Enum

      DELETE = :delete
      GET = :get
      HEAD = :head
      OPTIONS = :options
      PATCH = :patch
      POST = :post
      PUT = :put
      QUERY = :query
      TRACE = :trace

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
