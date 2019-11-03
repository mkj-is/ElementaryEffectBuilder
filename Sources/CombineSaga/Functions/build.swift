func build<T>(@SingleParameterFunctionBuilder<T> _ builder: () -> (T) -> Void) -> (T) -> Void {
    builder()
}
