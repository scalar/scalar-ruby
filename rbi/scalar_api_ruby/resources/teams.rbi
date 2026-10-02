# typed: strong

module Scalar
  module Resources
    # Teams
    class Teams
      # Teams
      sig { returns(Scalar::Resources::Teams::Members) }
      attr_reader :members

      # Teams
      sig { returns(Scalar::Resources::Teams::Invites) }
      attr_reader :invites

      # List all available teams
      sig do
        params(request_options: Scalar::RequestOptions::OrHash).returns(
          T::Array[Scalar::Team]
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: Scalar::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
