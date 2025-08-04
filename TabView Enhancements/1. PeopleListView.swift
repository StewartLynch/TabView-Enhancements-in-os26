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


import SwiftUI

struct PeopleListView: View {
    @Environment(DataManager.self) var manager
    var body: some View {
        NavigationStack {
            List(manager.filteredList.sorted(), id: \.self) { person in
                Text(person)
            }
            .listStyle(.plain)
            .onAppear {
                manager.filter = ""
            }
            .navigationTitle("People List")
        }
    }
    
}

#Preview {
    PeopleListView()
        .environment(DataManager())
}
