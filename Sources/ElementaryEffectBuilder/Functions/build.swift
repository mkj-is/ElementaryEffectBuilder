import Elementary

public func buildEffect<State, Action>(@EffectBuilder<State, Action> _ builder: () -> Effect<State, Action>) -> Effect<State, Action> {
    builder()
}
