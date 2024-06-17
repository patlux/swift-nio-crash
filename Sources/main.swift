import _NIOFileSystem

let fileSystem = FileSystem.shared
if let info = try await fileSystem.info(forFileAt: "/Users/hal9000/demise-of-dave.txt") {
    print("demise-of-dave.txt has type '\(info.type)'")
} else {
    print("demise-of-dave.txt doesn't exist")
}

print("Hello, world!")
