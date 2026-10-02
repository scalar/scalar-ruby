# frozen_string_literal: true

module Scalar
  module Models
    module Teams
      # @see Scalar::Resources::Teams::Members#list
      class MemberListParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
