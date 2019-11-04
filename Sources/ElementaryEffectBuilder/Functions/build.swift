import Elementary

public func build<State, Action>(@EffectBuilder<State, Action> _ builder: () -> Effect<State, Action>) -> Effect<State, Action> {
    builder()
}
