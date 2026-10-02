# frozen_string_literal: true

module Scalar
  module Models
    module Sdks
      # @see Scalar::Resources::Sdks::Repositories#link
      class RepositoryLinkResponse < Scalar::Internal::Type::BaseModel
        # @!attribute branch
        #
        #   @return [String]
        required :branch, String

        # @!attribute repo
        #
        #   @return [String]
        required :repo, String

        # @!method initialize(branch:, repo:)
        #   @param branch [String]
        #   @param repo [String]
      end
    end
  end
end
