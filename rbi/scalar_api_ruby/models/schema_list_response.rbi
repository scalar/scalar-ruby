# typed: strong

module Scalar
  module Models
    SchemaListResponse =
      T.let(
        Scalar::Internal::Type::ArrayOf[Scalar::Schema],
        Scalar::Internal::Type::Converter
      )
  end
end
