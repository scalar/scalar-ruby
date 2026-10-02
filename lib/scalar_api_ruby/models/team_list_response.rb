# frozen_string_literal: true

module Scalar
  module Models
    # @type [Scalar::Internal::Type::Converter]
    TeamListResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::Team }]
  end
end
