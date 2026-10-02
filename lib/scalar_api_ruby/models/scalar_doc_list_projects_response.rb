# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#list_projects
    class ScalarDocListProjectsResponse < Scalar::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Scalar::Models::DocsProject>]
      required :data, -> { Scalar::Internal::Type::ArrayOf[Scalar::DocsProject] }

      # @!attribute has_more
      #
      #   @return [Boolean]
      required :has_more, Scalar::Internal::Type::Boolean, api_name: :hasMore

      # @!method initialize(data:, has_more:)
      #   @param data [Array<Scalar::Models::DocsProject>]
      #   @param has_more [Boolean]
    end
  end
end
