import Dispatch

extension Future {
    /// Streams the result of this future to the InputStream
    public func stream<S: InputStream>(to stream: S, onQueue queue: DispatchQueue? = nil) where S.Input == Expectation {
        self.then(asynchronously: queue, stream.inputStream)
    }
}
