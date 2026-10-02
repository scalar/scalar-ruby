# typed: strong

module Scalar
  module Models
    class DocsProject < Scalar::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Scalar::DocsProject, Scalar::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :access_groups

      sig { returns(String) }
      attr_accessor :active_theme_id

      sig { returns(T::Boolean) }
      attr_accessor :agent_enabled

      sig { returns(T::Boolean) }
      attr_accessor :analytics_enabled

      sig { returns(T::Boolean) }
      attr_accessor :is_private

      sig { returns(T.nilable(Integer)) }
      attr_accessor :last_published

      sig { returns(String) }
      attr_accessor :login_portal_uid

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :publish_status

      sig { returns(String) }
      attr_accessor :slug

      sig { returns(String) }
      attr_accessor :uid

      sig do
        params(
          access_groups: String,
          active_theme_id: String,
          agent_enabled: T::Boolean,
          analytics_enabled: T::Boolean,
          is_private: T::Boolean,
          last_published: T.nilable(Integer),
          login_portal_uid: String,
          name: String,
          publish_status: String,
          slug: String,
          uid: String
        ).returns(T.attached_class)
      end
      def self.new(
        access_groups:,
        active_theme_id:,
        agent_enabled:,
        analytics_enabled:,
        is_private:,
        last_published:,
        login_portal_uid:,
        name:,
        publish_status:,
        slug:,
        uid:
      )
      end

      sig do
        override.returns(
          {
            access_groups: String,
            active_theme_id: String,
            agent_enabled: T::Boolean,
            analytics_enabled: T::Boolean,
            is_private: T::Boolean,
            last_published: T.nilable(Integer),
            login_portal_uid: String,
            name: String,
            publish_status: String,
            slug: String,
            uid: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
