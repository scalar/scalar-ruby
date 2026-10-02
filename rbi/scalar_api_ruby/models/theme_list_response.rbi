# typed: strong

module Scalar
  module Models
    ThemeListResponse =
      T.let(
        Scalar::Internal::Type::ArrayOf[Scalar::Theme],
        Scalar::Internal::Type::Converter
      )
  end
end
