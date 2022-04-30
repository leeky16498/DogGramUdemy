//
//  PostImageView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct PostImageView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var captionText : String = ""
    @Binding var imageSelected : UIImage
    
    var body: some View {
        VStack(alignment : .center, spacing: 0) {
            
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                })
                .accentColor(.primary)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                Image(uiImage: imageSelected)
                    .resizable()
                    .scaledToFill()
                    .frame(width : 200, height : 200)
                    .cornerRadius(20)
                    .clipped()
                
                TextField("Add Caption", text: $captionText)
                    .font(.headline)
                    .frame(height : 60)
                    .frame(maxWidth : .infinity)
                    .background(Color.colorBeige)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .autocapitalization(.sentences)
                
                Button(action: {
                    
                }, label: {
                    Text("Post Picture!".uppercased())
                        .font(.title3.bold())
                        .frame(height : 60)
                        .frame(maxWidth : .infinity)
                        .background(Color.colorPurple)
                        .foregroundColor(Color.colorYellow)
                        .cornerRadius(12)
                        .font(.headline)
                        .padding(.horizontal)
                    
                })
            }
            
        }
    }
}

//struct PostImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostImageView()
//    }
//}
