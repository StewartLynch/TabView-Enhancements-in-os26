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
    var body: some View {
        TabView {
            Tab("People List", systemImage: "person.2.fill") {
                PeopleListView()
            }
            Tab("Second", systemImage: "2.circle") {
                Second_Tab()
            }
            Tab("Third", systemImage: "3.circle") {
                Third_Tab()
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
    }
}

#Preview {
    StartTab()
        .environment(DataManager())
}
