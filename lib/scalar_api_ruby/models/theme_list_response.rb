# frozen_string_literal: true

module Scalar
  module Models
    # @type [Scalar::Internal::Type::Converter]
    ThemeListResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::Theme }]
  end
end
