# frozen_string_literal: true

module Scalar
  module Models
    # @type [Scalar::Internal::Type::Converter]
    LoginPortalListResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::LoginPortal }]
  end
end
