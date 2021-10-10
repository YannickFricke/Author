# This file contains the configuration for Credo and you are probably reading
# this after creating it with `mix credo.gen.config`.
#
# If you find anything wrong or unclear in this file, please report an
# issue on GitHub: https://github.com/rrrene/credo/issues
#
%{
    #
    # You can have as many configs as you like in the `configs:` field.
    configs: [
      %{
        #
        # Run any exec using `mix credo -C <name>`. If no exec name is given
        # "default" is used.
        #
        name: "default",
        #
        # These are the files included in the analysis:
        files: %{
          #
          # You can give explicit globs or simply directories.
          # In the latter case `**/*.{ex,exs}` will be used.
          #
          included: ["apps/", "lib/", "test/"],
          excluded: [~r"/_build/", ~r"/deps/", ~r"/node_modules/"]
        },
        #
        # Load and configure plugins here:
        #
        plugins: [],
        #
        # If you create your own checks, you must specify the source files for
        # them here, so they can be loaded by Credo before running the analysis.
        #
        requires: [],
        #
        # If you want to enforce a style guide and need a more traditional linting
        # experience, you can change `strict` to `true` below:
        #
        strict: true,
        #
        # If you want to use uncolored output by default, you can change `color`
        # to `false` below:
        #
        color: true,
        #
        # You can customize the parameters of any check by adding a second element
        # to the tuple.
        #
        # To disable a check put `false` as second element:
        #
        #     {Credo.Check.Design.DuplicatedCode, false}
        #
        checks: [
          #
          ## Consistency Checks
          #
          {Credo.Check.Consistency.ExceptionNames, []},
          {Credo.Check.Consistency.LineEndings, []},
          {Credo.Check.Consistency.MultiAliasImportRequireUse, false},
          {Credo.Check.Consistency.ParameterPatternMatching, []},
          {Credo.Check.Consistency.SpaceAroundOperators, []},
          {Credo.Check.Consistency.SpaceInParentheses, []},
          {Credo.Check.Consistency.TabsOrSpaces, []},
          {Credo.Check.Consistency.UnusedVariableNames, false},
          {Credo.Check.Readability.PreferUnquotedAtoms, false},
          {Credo.Check.Refactor.MapInto, false},
          {Credo.Check.Warning.LazyLogging, false},
  
          #
          ## Design Checks
          #
          # You can customize the priority of any check
          # Priority values are: `low, normal, high, higher`
          #
          {Credo.Check.Design.AliasUsage,
           [priority: :low, if_nested_deeper_than: 4, if_called_more_often_than: 2]},
          {Credo.Check.Design.DuplicatedCode, []},
          {Credo.Check.Design.TagTODO, false},
          {Credo.Check.Design.TagFIXME, false},
  
          #
          ## Readability Checks
          #
          {Credo.Check.Readability.AliasAs, []},
          {Credo.Check.Readability.AliasOrder, []},
          {Credo.Check.Readability.BlockPipe, []},
          {Credo.Check.Readability.FunctionNames, []},
          {Credo.Check.Readability.ImplTrue, []},
          {Credo.Check.Readability.LargeNumbers, []},
          {Credo.Check.Readability.MaxLineLength, false},
          {Credo.Check.Readability.ModuleAttributeNames, []},
          {Credo.Check.Readability.ModuleDoc, []},
          {Credo.Check.Readability.ModuleNames, []},
          {Credo.Check.Readability.MultiAlias, []},
          {Credo.Check.Readability.ParenthesesInCondition, []},
          {Credo.Check.Readability.ParenthesesOnZeroArityDefs, []},
          {Credo.Check.Readability.PredicateFunctionNames, []},
          {Credo.Check.Readability.PreferImplicitTry, []},
          {Credo.Check.Readability.RedundantBlankLines, [max_blank_lines: 1]},
          {Credo.Check.Readability.SeparateAliasRequire, []},
          {Credo.Check.Readability.Semicolons, []},
          {Credo.Check.Readability.SinglePipe, []},
          {Credo.Check.Readability.SpaceAfterCommas, []},
          {Credo.Check.Readability.Specs, false},
          {Credo.Check.Readability.StrictModuleLayout, []},
          {Credo.Check.Readability.StringSigils, []},
          {Credo.Check.Readability.TrailingBlankLine, []},
          {Credo.Check.Readability.TrailingWhiteSpace, []},
          # TODO: enable by default in Credo 1.1
          {Credo.Check.Readability.UnnecessaryAliasExpansion, []},
          {Credo.Check.Readability.VariableNames, []},
          {Credo.Check.Readability.WithCustomTaggedTuple, []},
  
          #
          # Controversial and experimental checks (opt-in, just replace `false` with `[]`)
          #
  
          #
          ## Refactoring Opportunities
          #
          {Credo.Check.Refactor.ABCSize, false},
          {Credo.Check.Refactor.AppendSingleItem, false}, # TODO - Think about this one
          {Credo.Check.Refactor.CaseTrivialMatches, false},
          {Credo.Check.Refactor.CondStatements, false},
          {Credo.Check.Refactor.CyclomaticComplexity, [max_complexity: 18]},
          {Credo.Check.Refactor.DoubleBooleanNegation, false},
          {Credo.Check.Refactor.FunctionArity, []},
          {Credo.Check.Refactor.LongQuoteBlocks, false},
          {Credo.Check.Refactor.MatchInCondition, []},
          {Credo.Check.Refactor.ModuleDependencies, false},
          {Credo.Check.Refactor.NegatedConditionsInUnless, []},
          {Credo.Check.Refactor.NegatedConditionsWithElse, []},
          {Credo.Check.Refactor.NegatedIsNil, []},
          {Credo.Check.Refactor.Nesting, [max_nesting: 5]},
          {Credo.Check.Refactor.PipeChainStart, false},
          {Credo.Check.Refactor.UnlessWithElse, []},
          {Credo.Check.Refactor.VariableRebinding, false},
          {Credo.Check.Refactor.WithClauses, []},
  
          #
          ## Warnings
          #
          {Credo.Check.Warning.ApplicationConfigInModuleAttribute, []},
          {Credo.Check.Warning.BoolOperationOnSameValues, []},
          {Credo.Check.Warning.ExpensiveEmptyEnumCheck, []},
          {Credo.Check.Warning.IExPry, []},
          {Credo.Check.Warning.IoInspect, []},
          {Credo.Check.Warning.MapGetUnsafePass, false},
          {Credo.Check.Warning.MixEnv, false},
          {Credo.Check.Warning.OperationOnSameValues, []},
          {Credo.Check.Warning.OperationWithConstantResult, []},
          {Credo.Check.Warning.RaiseInsideRescue, []},
          {Credo.Check.Warning.UnsafeExec, []},
          {Credo.Check.Warning.UnsafeToAtom, []},
          {Credo.Check.Warning.UnusedEnumOperation, []},
          {Credo.Check.Warning.UnusedFileOperation, []},
          {Credo.Check.Warning.UnusedKeywordOperation, []},
          {Credo.Check.Warning.UnusedListOperation, []},
          {Credo.Check.Warning.UnusedPathOperation, []},
          {Credo.Check.Warning.UnusedRegexOperation, []},
          {Credo.Check.Warning.UnusedStringOperation, []},
          {Credo.Check.Warning.UnusedTupleOperation, []},
        ]
      }
    ]
}
