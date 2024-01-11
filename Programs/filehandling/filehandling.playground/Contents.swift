import UIKit

var greeting = "Hello, playground"

struct Note: Codable {
    let title: String
    let text: String
    let timestamp: Date
}

let newNote = Note(title: "Grocery run", text: "Pickup mayonnaise, mustard, lettuce, tomato, and pickles", timestamp: Date())

let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

print(documentDirectory)

let archiveURL = documentDirectory.appendingPathComponent("notes_test").appendingPathExtension("plist")

print(archiveURL)

let propertyListEncoder = PropertyListEncoder()

if let encodedNote = try? propertyListEncoder.encode(newNote) {
    print(encodedNote)
    
    if let _ = try? encodedNote.write(to: archiveURL) {
        print("Note written to file")
    }
    
    let propertyListDecoder = PropertyListDecoder()
    
    if let decodedNote = try? propertyListDecoder.decode(Note.self, from: encodedNote) {
        print(decodedNote)
    }
}
