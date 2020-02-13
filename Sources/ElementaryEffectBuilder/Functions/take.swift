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

public func take<State, Action, Subaction> (
    _ matching: Subaction.Type,
    execute effect: @escaping Effect<State, Subaction>
) -> Effect<State, Action> {
    { getState, action, dispatch in
        if let subaction = action as? Subaction {
            let subdispatch: Dispatch<Subaction> = { subaction in
                if let action = subaction as? Action {
                    dispatch(action)
                }
            }
            effect(getState, subaction, subdispatch)
        }
    }
}
