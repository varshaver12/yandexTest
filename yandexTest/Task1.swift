import Foundation

func readFromFile() -> [String] {
    if let path = Bundle.main.path(forResource: "words", ofType: "txt") {
        if let text = try? String(contentsOfFile: path) {
            return (text.split(separator: "\n") as? [String])!
        }
    }
    return []
}

func distributeWords() {
    let words = readFromFile()
    var wordsArray = [Int?](repeating: nil, count: words.count - 1)
    for word in words {
        print(word.count)
    }
}
