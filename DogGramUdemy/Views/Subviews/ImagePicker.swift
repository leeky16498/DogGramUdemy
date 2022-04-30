//
//  ImagePicker.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import Foundation
import SwiftUI
import UIKit

struct ImagePicker : UIViewControllerRepresentable {
    
    @Binding var imageSelected : UIImage
    @Binding var sourceType : UIImagePickerController.SourceType
    
    @Environment(\.presentationMode) var presentationMode
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = sourceType
        picker.allowsEditing = true
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    class Coordinator : NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        let parent : ImagePicker
        
        init(parent : ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.imageSelected = image
                parent.presentationMode.wrappedValue.dismiss()
            }
        }
        
    }
    
    
}
