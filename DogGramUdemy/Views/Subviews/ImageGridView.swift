//
//  ImageGridView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct ImageGridView: View {
    
    @StateObject var vm = PostViewModel()
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: nil, pinnedViews: [], content: {
            ForEach(vm.postArray) { post in
                NavigationLink(destination: {
                    PostView(post: post, showHeaderAndHeader: true)
                }, label: {
                    PostView(post: post, showHeaderAndHeader: false)
                })
            }
        })
            
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Browse")
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView()
    }
}
