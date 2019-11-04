import Elementary

public func take<State, Action: Equatable>(
    _ matching: Action,
    execute: @escaping () -> Void
) -> Effect<State, Action> {
    { _, action, _ in
        if action == matching {
            execute()
        }
    }
}
