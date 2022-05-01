//
//  SettingsEditImageView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI
import UIKit

struct SettingsEditImageView: View {

    @State private var selectedImage : UIImage = UIImage(named: "dog1")!
    @State private var showImagepicker : Bool = false
    @State private var sourceType : UIImagePickerController.SourceType = .photoLibrary
    
    var title : String
    var description : String
    
    var body: some View {
        VStack(alignment : .leading) {
            Text(description)
            
            Image(uiImage: selectedImage)
                .resizable()
                .scaledToFit()
                .frame(width : 200, height : 200)
                .clipped()
                .cornerRadius(12)
            
            Button(action: {
                showImagepicker.toggle()
            }, label: {
                Text("import".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.colorPurple)
                    .padding()
                    .frame(height : 60)
                    .frame(maxWidth : .infinity)
                    .background(Color.colorYellow)
                    .cornerRadius(12)
            })
            .sheet(isPresented: $showImagepicker) {
                ImagePicker(imageSelected: $selectedImage, sourceType: $sourceType)
            }
            
            Button(action: {
                
            }, label: {
                Text("save".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.colorYellow)
                    .padding()
                    .frame(height : 60)
                    .frame(maxWidth : .infinity)
                    .background(Color.colorPurple)
                    .cornerRadius(12)
            })
            
            Spacer()
        }
        .padding()
        .navigationTitle(title)
    }
}

//struct SettingsEditImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsEditImageView()
//    }
//}
