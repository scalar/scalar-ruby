# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#list_project_domain_status
    class ScalarDocListProjectDomainStatusResponse < Scalar::Internal::Type::BaseModel
      # @!attribute domain
      #
      #   @return [String, nil]
      required :domain, String, nil?: true

      # @!attribute expected
      #
      #   @return [Scalar::Models::ScalarDocListProjectDomainStatusResponse::Expected, nil]
      required :expected,
               -> { Scalar::Models::ScalarDocListProjectDomainStatusResponse::Expected },
               nil?: true

      # @!attribute found
      #
      #   @return [Array<String>]
      required :found, Scalar::Internal::Type::ArrayOf[String]

      # @!attribute status
      #
      #   @return [Symbol, Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status]
      required :status, enum: -> { Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status }

      # @!method initialize(domain:, expected:, found:, status:)
      #   @param domain [String, nil]
      #   @param expected [Scalar::Models::ScalarDocListProjectDomainStatusResponse::Expected, nil]
      #   @param found [Array<String>]
      #   @param status [Symbol, Scalar::Models::ScalarDocListProjectDomainStatusResponse::Status]

      # @see Scalar::Models::ScalarDocListProjectDomainStatusResponse#expected
      class Expected < Scalar::Internal::Type::BaseModel
        # @!attribute target
        #
        #   @return [String]
        required :target, String

        # @!attribute type
        #
        #   @return [Symbol, :CNAME]
        required :type, const: :CNAME

        # @!method initialize(target:, type: :CNAME)
        #   @param target [String]
        #   @param type [Symbol, :CNAME]
      end

      # @see Scalar::Models::ScalarDocListProjectDomainStatusResponse#status
      module Status
        extend Scalar::Internal::Type::Enum

        VERIFIED = :verified
        PENDING = :pending
        MISCONFIGURED = :misconfigured

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
