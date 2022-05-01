//
//  SettingsLabelView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText : String
    var labelImage : String
    
    var body: some View {
        VStack {
            HStack {
                Text(labelText)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: labelImage)
                
            }
            Divider()
                .padding(.vertical, 4)
        }
       
    }
}

//struct SettingsLabelView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsLabelView()
//    }
//}
