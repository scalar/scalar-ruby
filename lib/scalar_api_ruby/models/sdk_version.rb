# frozen_string_literal: true

module Scalar
  module Models
    class SdkVersion < Scalar::Internal::Type::BaseModel
      # @!attribute api_version
      #
      #   @return [String]
      required :api_version, String, api_name: :apiVersion

      # @!attribute languages
      #
      #   @return [Array<Symbol, Scalar::Models::SdkVersion::Language>]
      required :languages, -> { Scalar::Internal::Type::ArrayOf[enum: Scalar::SdkVersion::Language] }

      # @!attribute status
      #
      #   @return [Symbol, Scalar::Models::SdkVersion::Status]
      required :status, enum: -> { Scalar::SdkVersion::Status }

      # @!attribute version
      #
      #   @return [String]
      required :version, String

      # @!attribute created_at
      #
      #   @return [Integer, nil]
      optional :created_at, Integer, api_name: :createdAt

      # @!attribute published_at
      #
      #   @return [Integer, nil]
      optional :published_at, Integer, api_name: :publishedAt

      # @!method initialize(api_version:, languages:, status:, version:, created_at: nil, published_at: nil)
      #   @param api_version [String]
      #   @param languages [Array<Symbol, Scalar::Models::SdkVersion::Language>]
      #   @param status [Symbol, Scalar::Models::SdkVersion::Status]
      #   @param version [String]
      #   @param created_at [Integer]
      #   @param published_at [Integer]

      module Language
        extend Scalar::Internal::Type::Enum

        TYPESCRIPT = :typescript
        PYTHON = :python
        CLI = :cli
        CSHARP = :csharp
        JAVA = :java
        RUBY = :ruby
        PHP = :php
        GO = :go
        RUST = :rust
        KOTLIN = :kotlin
        SWIFT = :swift
        CPP = :cpp
        DART = :dart

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Scalar::Models::SdkVersion#status
      module Status
        extend Scalar::Internal::Type::Enum

        DRAFT = :draft
        PUBLISHED = :published

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
