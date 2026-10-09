# typed: strong

module Scalar
  module Models
    class GithubProjectRepository < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Scalar::GithubProjectRepository, Scalar::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :branch

      sig { returns(String) }
      attr_accessor :config_path

      sig { returns(T::Boolean) }
      attr_accessor :expired

      sig { returns(String) }
      attr_accessor :linked_by

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Boolean) }
      attr_accessor :pr_comments

      sig { returns(T::Boolean) }
      attr_accessor :publish_on_merge

      sig { returns(T::Boolean) }
      attr_accessor :publish_previews

      sig do
        params(
          id: Float,
          branch: String,
          config_path: String,
          expired: T::Boolean,
          linked_by: String,
          name: String,
          pr_comments: T::Boolean,
          publish_on_merge: T::Boolean,
          publish_previews: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        branch:,
        config_path:,
        expired:,
        linked_by:,
        name:,
        pr_comments:,
        publish_on_merge:,
        publish_previews:
      )
      end

      sig do
        override.returns(
          {
            id: Float,
            branch: String,
            config_path: String,
            expired: T::Boolean,
            linked_by: String,
            name: String,
            pr_comments: T::Boolean,
            publish_on_merge: T::Boolean,
            publish_previews: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
