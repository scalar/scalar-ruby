# typed: strong

module Scalar
  module Models
    TeamListResponse =
      T.let(
        Scalar::Internal::Type::ArrayOf[Scalar::Team],
        Scalar::Internal::Type::Converter
      )
  end
end
