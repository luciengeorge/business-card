//
//  InfoView.swift
//  business-card
//
//  Created by Lucien George on 07/02/2023.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName).foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0))
                    Text(text).foregroundColor(.black)
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
