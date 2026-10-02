# typed: strong

module Scalar
  module Models
    class GithubProject < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::GithubProject, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :access_groups

      sig { returns(T.nilable(Scalar::ActiveDeployment)) }
      attr_reader :active_deployment

      sig do
        params(
          active_deployment: T.nilable(Scalar::ActiveDeployment::OrHash)
        ).void
      end
      attr_writer :active_deployment

      sig { returns(String) }
      attr_accessor :active_theme_id

      sig { returns(T::Boolean) }
      attr_accessor :agent_enabled

      sig { returns(T::Boolean) }
      attr_accessor :analytics_enabled

      sig { returns(Integer) }
      attr_accessor :created_at

      sig { returns(T::Boolean) }
      attr_accessor :is_private

      sig { returns(T.nilable(Integer)) }
      attr_accessor :last_published

      sig { returns(T.nilable(String)) }
      attr_accessor :last_published_uid

      sig { returns(String) }
      attr_accessor :login_portal_uid

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :publish_message

      sig { returns(String) }
      attr_accessor :publish_status

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :uid

      sig { returns(Integer) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :user_info_hook_url

      sig { returns(T.nilable(Scalar::GithubProjectRepository)) }
      attr_reader :repository

      sig do
        params(
          repository: T.nilable(Scalar::GithubProjectRepository::OrHash)
        ).void
      end
      attr_writer :repository

      sig { returns(T.nilable(Float)) }
      attr_reader :typesense_id

      sig { params(typesense_id: Float).void }
      attr_writer :typesense_id

      sig do
        params(
          access_groups: String,
          active_deployment: T.nilable(Scalar::ActiveDeployment::OrHash),
          active_theme_id: String,
          agent_enabled: T::Boolean,
          analytics_enabled: T::Boolean,
          created_at: Integer,
          is_private: T::Boolean,
          last_published: T.nilable(Integer),
          last_published_uid: T.nilable(String),
          login_portal_uid: String,
          name: String,
          publish_message: String,
          publish_status: String,
          slug: String,
          uid: String,
          updated_at: Integer,
          user_info_hook_url: String,
          repository: T.nilable(Scalar::GithubProjectRepository::OrHash),
          typesense_id: Float
        ).returns(T.attached_class)
      end
      def self.new(
        access_groups:,
        active_deployment:,
        active_theme_id:,
        agent_enabled:,
        analytics_enabled:,
        created_at:,
        is_private:,
        last_published:,
        last_published_uid:,
        login_portal_uid:,
        name:,
        publish_message:,
        publish_status:,
        slug:,
        uid:,
        updated_at:,
        user_info_hook_url:,
        repository: nil,
        typesense_id: nil
      )
      end

      sig do
        override.returns(
          {
            access_groups: String,
            active_deployment: T.nilable(Scalar::ActiveDeployment),
            active_theme_id: String,
            agent_enabled: T::Boolean,
            analytics_enabled: T::Boolean,
            created_at: Integer,
            is_private: T::Boolean,
            last_published: T.nilable(Integer),
            last_published_uid: T.nilable(String),
            login_portal_uid: String,
            name: String,
            publish_message: String,
            publish_status: String,
            slug: String,
            uid: String,
            updated_at: Integer,
            user_info_hook_url: String,
            repository: T.nilable(Scalar::GithubProjectRepository),
            typesense_id: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
