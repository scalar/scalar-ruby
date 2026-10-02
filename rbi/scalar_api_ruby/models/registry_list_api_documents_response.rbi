# typed: strong

module Scalar
  module Models
    RegistryListAPIDocumentsResponse =
      T.let(
        Scalar::Internal::Type::ArrayOf[Scalar::APIDocument],
        Scalar::Internal::Type::Converter
      )
  end
end
