//
//  UploadView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        ZStack {
            VStack(spacing : 0) {
                
                Button(action: {
                    
                }, label: {
                    Text("Take Photo".uppercased())
                        .font(.largeTitle.bold())
                        .foregroundColor(Color.colorYellow)
                })
                .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.colorPurple)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Import Photo".uppercased())
                        .font(.largeTitle.bold())
                        .foregroundColor(Color.colorPurple)
                })
                .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.colorYellow)
            }
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width : 100, height : 100, alignment: .center)
                .shadow(radius: 12)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
