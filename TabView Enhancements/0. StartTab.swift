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

struct StartTab: View {
    @SceneStorage("selectedTab") var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("People List", systemImage: "person.2.fill", value: 0) {
                PeopleListView()
            }
            Tab("Second", systemImage: "2.circle", value: 1) {
                Second_Tab()
            }
            Tab("Third", systemImage: "3.circle", value: 2) {
                Third_Tab()
            }
            if selectedTab == 0 || selectedTab == 3 {
                Tab("Search", systemImage: "magnifyingglass", value: 3, role: .search) {
                    PeopleListView()
                }
            }
//            Tab("Fourth", systemImage: "4.circle") {
//               Text("Hello 4")
//            }
//            Tab("Fifth", systemImage: "5.circle") {
//               Text("Hello 5")
//            }
//            Tab("Sixth", systemImage: "6.circle") {
//               Text("Hello 6")
//            }
//            Tab("Seventh", systemImage: "7.circle") {
//               Text("Hello 7")
//            }
        }
        .tabViewStyle(.sidebarAdaptable)
        .tabBarMinimizeBehavior(.onScrollDown)
        .tabViewBottomAccessory {
                Text("\(Image(systemName: "swift")) Made with SwiftUI")
                    .foregroundStyle(.orange)
                    .padding()
        }
    }
}

#Preview {
    StartTab()
        .environment(DataManager())
}
