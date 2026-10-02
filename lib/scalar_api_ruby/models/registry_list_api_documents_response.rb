# frozen_string_literal: true

module Scalar
  module Models
    # @type [Scalar::Internal::Type::Converter]
    RegistryListAPIDocumentsResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::APIDocument }]
  end
end
