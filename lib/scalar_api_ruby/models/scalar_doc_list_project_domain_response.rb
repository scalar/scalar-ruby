# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#list_project_domain
    class ScalarDocListProjectDomainResponse < Scalar::Internal::Type::BaseModel
      # @!attribute custom_domain
      #
      #   @return [String, nil]
      required :custom_domain, String, api_name: :customDomain, nil?: true

      # @!attribute scalar_domain
      #
      #   @return [String, nil]
      required :scalar_domain, String, api_name: :scalarDomain, nil?: true

      # @!method initialize(custom_domain:, scalar_domain:)
      #   @param custom_domain [String, nil]
      #   @param scalar_domain [String, nil]
    end
  end
end
