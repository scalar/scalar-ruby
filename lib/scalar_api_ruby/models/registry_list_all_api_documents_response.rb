# frozen_string_literal: true

module Scalar
  module Models
    # @type [Scalar::Internal::Type::Converter]
    RegistryListAllAPIDocumentsResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::APIDocument }]
  end
end
