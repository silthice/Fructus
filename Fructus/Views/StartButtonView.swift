//
//  StartButtonView.swift
//  Fructus
//
//  Created by Giap on 11/01/2023.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
            
        }//: BUTTON
        .accentColor(.white)
    }
}

//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
