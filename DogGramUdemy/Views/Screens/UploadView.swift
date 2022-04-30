//
//  UploadView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI
import UIKit

struct UploadView: View {
    
    @State var showImagePicker : Bool = false
    @State var imageSelected : UIImage = UIImage(named: "logo")!
    @State var sourceType : UIImagePickerController.SourceType = .camera
    @State var showScreenCover : Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing : 0) {
                
                Button(action: {
                    sourceType = UIImagePickerController.SourceType.camera
                    showImagePicker.toggle()
                }, label: {
                    Text("Take Photo".uppercased())
                        .font(.largeTitle.bold())
                        .foregroundColor(Color.colorYellow)
                })
                .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.colorPurple)
                
                
                Button(action: {
                    sourceType = UIImagePickerController.SourceType.photoLibrary
                    showImagePicker.toggle()
                }, label: {
                    Text("Import Photo".uppercased())
                        .font(.largeTitle.bold())
                        .foregroundColor(Color.colorPurple)
                })
                .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.colorYellow)
            }
            .sheet(isPresented: $showImagePicker, onDismiss: segueToPostImageView, content: {
                ImagePicker(imageSelected: $imageSelected, sourceType: $sourceType)
            })
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width : 100, height : 100, alignment: .center)
                .shadow(radius: 12)
                .fullScreenCover(isPresented: $showScreenCover) {
                    PostImageView(imageSelected: $imageSelected)
                }
        }
    }
    
    private func segueToPostImageView() {
        showScreenCover.toggle()
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
