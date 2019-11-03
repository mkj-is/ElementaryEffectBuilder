import Combine

public func takeLatest<Action: Equatable>(
    _ matching: Action,
    execute: @escaping (Action) -> Cancellable
) -> (Action) -> Void {
    var cancellable: Cancellable?
    return { action in
        if action == matching {
            cancellable?.cancel()
            cancellable = execute(action)
        }
    }
}
