# frozen_string_literal: true

module Scalar
  module Models
    # @type [Scalar::Internal::Type::Converter]
    ScalarDocListGuidesResponse = Scalar::Internal::Type::ArrayOf[-> { Scalar::GithubProject }]
  end
end
