@_functionBuilder
final class SingleParameterFunctionBuilder<Parameter> {
    typealias Component = (Parameter) -> Void

    public static func buildBlock(_ components: Component...) -> Component {
        combine(components)
    }

    public static func buildIf(_ component: Component?) -> Component {
        component ?? { _ in }
    }

    public static func buildEither(first: @escaping Component) -> Component {
        first
    }

    public static func buildEither(second: @escaping Component) -> Component {
        second
    }
}
