# frozen_string_literal: true

module Scalar
  module Models
    # @type [Scalar::Internal::Type::Converter]
    RuleListRulesetsResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::Rule }]
  end
end
