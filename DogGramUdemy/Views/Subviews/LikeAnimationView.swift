//
//  LikeAnimationView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI

struct LikeAnimationView: View {
    
    @Binding var animate : Bool
    
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.3))
                .font(.system(size: 200))
                .opacity(animate ? 1.0 : 0.0)
                .scaleEffect(animate ? 1.0 : 0.3)
            
            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.6))
                .font(.system(size: 150))
                .opacity(animate ? 1.0 : 0.0)
                .scaleEffect(animate ? 1.0 : 0.3)
            
            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.9))
                .font(.system(size: 100))
                .opacity(animate ? 1.0 : 0.0)
                .scaleEffect(animate ? 1.0 : 0.3)
        }
        .animation(Animation.easeInOut(duration: 0.5).repeatForever())
    }
}

//struct LikeAnimationView_Previews: PreviewProvider {
//    static var previews: some View {
//        LikeAnimationView()
//    }
//}
