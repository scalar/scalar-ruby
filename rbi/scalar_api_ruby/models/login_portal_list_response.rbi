# typed: strong

module Scalar
  module Models
    LoginPortalListResponse =
      T.let(
        Scalar::Internal::Type::ArrayOf[Scalar::LoginPortal],
        Scalar::Internal::Type::Converter
      )
  end
end
