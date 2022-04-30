//
//  BrowseView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct BrowseView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                CarouselView()
                ImageGridView()
            }
            .navigationTitle("Browse")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView()
        }
    }
}
