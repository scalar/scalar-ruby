# typed: strong

module Scalar
  module Models
    ScalarDocListGuidesResponse =
      T.let(
        Scalar::Internal::Type::ArrayOf[Scalar::GithubProject],
        Scalar::Internal::Type::Converter
      )
  end
end
