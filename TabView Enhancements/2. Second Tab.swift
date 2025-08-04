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

struct Second_Tab: View {
    var body: some View {
        NavigationStack {
            Image(.tab2)
                .resizable()
                .scaledToFit()
                .padding()
                .navigationTitle("Second Tab")
        }
    }
}

#Preview {
    Second_Tab()
}
