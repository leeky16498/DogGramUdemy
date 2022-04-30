//
//  CarouselView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct CarouselView: View {
    
    @State var selection : Int = 1
    @State var timerAdded : Bool = false
    
    let maxCount : Int = 8
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(1..<maxCount) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count)
            }
        }
        .tabViewStyle(.page)
        .frame(height : 300)
        .animation(.default)
        .onAppear {
            if !timerAdded {
                addTimer()
            }
        }
    }
    
    private func addTimer() {
        
        self.timerAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
            
            if selection == (maxCount-1) {
                selection = 1
            } else {
                selection += 1
            }
        }
        timer.fire()
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
