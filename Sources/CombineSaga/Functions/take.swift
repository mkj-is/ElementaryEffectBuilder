public func take<Action: Equatable>(
    _ matching: Action,
    execute: @escaping (Action) -> Void
) -> (Action) -> Void {
    { action in
        if action == matching {
            execute(action)
        }
    }
}
