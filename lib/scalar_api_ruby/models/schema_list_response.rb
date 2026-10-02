# frozen_string_literal: true

module Scalar
  module Models
    # @type [Scalar::Internal::Type::Converter]
    SchemaListResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::Schema }]
  end
end
