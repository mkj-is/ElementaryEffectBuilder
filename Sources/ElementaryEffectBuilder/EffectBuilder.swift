import Elementary

@_functionBuilder
public final class EffectBuilder<State, Action> {
    public typealias Component = Effect<State, Action>

    public static func buildBlock(_ components: Component...) -> Component {
        join(effects: components)
    }

    public static func buildIf(_ component: Component?) -> Component {
        component ?? { _, _, _ in }
    }

    public static func buildEither(first: @escaping Component) -> Component {
        first
    }

    public static func buildEither(second: @escaping Component) -> Component {
        second
    }
}
