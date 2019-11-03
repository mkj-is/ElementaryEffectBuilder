public func combine<T>(_ functions: [(T) -> Void]) -> (T) -> Void {
    { parameter in
        functions.forEach { $0(parameter) }
    }
}

public func combine<T>(_ functions: (T) -> Void...) -> (T) -> Void {
    combine(functions)
}
