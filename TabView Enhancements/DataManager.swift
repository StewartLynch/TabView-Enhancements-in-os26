//
//----------------------------------------------
// Original project: TabView Enhancements
// by  Stewart Lynch on 2025-08-03
//
// Follow me on Mastodon: https://iosdev.space/@StewartLynch
// Follow me on Threads: https://www.threads.net/@stewartlynch
// Follow me on Bluesky: https://bsky.app/profile/stewartlynch.bsky.social
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Email: slynch@createchsol.com
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import Foundation

@Observable
class DataManager {
    var people: [String] = [
        "Alice", "Bob", "Charlie", "Diana", "Edward",
        "Fiona", "George", "Hannah", "Ian", "Julia",
        "Kevin", "Laura", "Michael", "Natalie", "Oscar",
        "Paula", "Quentin", "Rachel", "Steven", "Theresa"
    ]
    
    func addPerson(_ person: String) {
        people.append(person)
        people = Array(Set(people)) // removes any duplicates
    }
}
