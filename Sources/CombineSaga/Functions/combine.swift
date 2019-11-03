func combine<T>(_ functions: [(T) -> Void]) -> (T) -> Void {
    { parameter in
        functions.forEach { $0(parameter) }
    }
}

func combine<T>(_ functions: (T) -> Void...) -> (T) -> Void {
    combine(functions)
}

func build<T>(@SingleParameterFunctionBuilder<T> _ builder: () -> (T) -> Void) -> (T) -> Void {
    builder()
}

func take<Action: Equatable>(
    _ matching: Action,
    execute: @escaping (Action) -> Void
) -> (Action) -> Void {
    { action in
        if action == matching {
            execute(action)
        }
    }
}
