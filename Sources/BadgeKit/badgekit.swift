import Foundation

public final class CommandLineTool {
    let message = "Hello, World!"
    private let arguments: [String]

    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }

    public func run() throws {
        print(message)
    }
}
