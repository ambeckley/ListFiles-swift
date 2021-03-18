import Foundation


let fileManager = FileManager.default

let intendedIndex: Int = 1


if (intendedIndex >= 0 && CommandLine.arguments.count > intendedIndex) {
    let files = try fileManager.contentsOfDirectory(atPath: CommandLine.arguments[1])
    for files in files {
        print("\(files)") }
} else {
    let files = try fileManager.contentsOfDirectory(atPath: ".")
    for files in files {
        print("\(files)") }
}
