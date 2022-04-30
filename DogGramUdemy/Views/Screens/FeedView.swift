//
//  FeedView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var vm = PostViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    ForEach(vm.postArray) { post in
                        PostView(post: post)
                    }
                }
            }
        .navigationTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
