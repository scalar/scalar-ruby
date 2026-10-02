# frozen_string_literal: true

module Scalar
  module Models
    class SdkTargetSummary < Scalar::Internal::Type::BaseModel
      # @!attribute language
      #
      #   @return [Symbol, Scalar::Models::SdkTargetSummary::Language]
      required :language, enum: -> { Scalar::SdkTargetSummary::Language }

      # @!attribute slug
      #
      #   @return [String]
      required :slug, String

      # @!method initialize(language:, slug:)
      #   @param language [Symbol, Scalar::Models::SdkTargetSummary::Language]
      #   @param slug [String]

      # @see Scalar::Models::SdkTargetSummary#language
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
    end
  end
end
