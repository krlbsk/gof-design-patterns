public class FileLogger: Logger {
    private var next: Logger?
    
    public init() { }
    
    public func setNext(logger: Logger) -> Logger? {
        next = logger
        return next
    }
    
    public func handle(log: Log) {
        if log.level == .file {
            print("Append to file: \(log.message)")
        } else {
            next?.handle(log: log)
        }
    }
}
