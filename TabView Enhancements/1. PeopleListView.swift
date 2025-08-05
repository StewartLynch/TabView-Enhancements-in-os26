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
    @SceneStorage("selectedTab") var selectedTab = 0
    var body: some View {
        @Bindable var manager = manager
        NavigationStack {
            List(manager.filteredList.sorted(), id: \.self) { person in
                Text(person)
            }
            .onAppear {
                manager.filter = ""
            }
            .listStyle(.plain)
            .navigationTitle("People List")
            .isSearchable(selectedTab: selectedTab, filter: $manager.filter)
        }
    }
    
}

#Preview {
    PeopleListView()
        .environment(DataManager())
}

struct IsSearchable: ViewModifier {
    let selectedTab: Int
    @Binding var filter: String
    func body(content: Content) -> some View {
        if  selectedTab == 3{
            content
                .searchable(text: $filter)
        } else {
            content
        }
    }
}

extension View {
    func isSearchable(selectedTab: Int, filter: Binding<String>) -> some View {
        modifier(IsSearchable(selectedTab: selectedTab, filter: filter))
    }
}
