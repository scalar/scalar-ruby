# typed: strong

module Scalar
  module Models
    RuleListRulesetsResponse =
      T.let(
        Scalar::Internal::Type::ArrayOf[Scalar::Rule],
        Scalar::Internal::Type::Converter
      )
  end
end
