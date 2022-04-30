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
        picker.allowsEditing = true // 이거를 해줬기 때문에 사진 수정후 올리는게 가능해진다.
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    } // 델리게이트 패턴을 수행하는 클래스 연결 구간이다.
    
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
