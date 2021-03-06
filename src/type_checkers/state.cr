module Mint
  class TypeChecker
    type_error StateTypeMismatch

    def check(node : Ast::State) : Checkable
      type =
        resolve node.type

      default =
        resolve node.default

      resolved =
        Comparer.compare(type, default)

      raise StateTypeMismatch, {
        "expected" => type,
        "name"     => node.name.value,
        "node"     => node.default,
        "got"      => default,
      } unless resolved

      type
    end
  end
end
