//
//  RoundedButton.swift
//  groceries
//
//  Created by FatDog on 9/2/24.
//

import SwiftUI

struct RoundedButton: View {
    @State var title: String = "Title"
    var didTap: (()->())?
    var body: some View {
        Button {
            didTap?()
        } label: {
            Text(title)
                .font(.customfont(.medium, fontSize: 18))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity,minHeight: 60,maxHeight: 60)
        .background(Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundedButton().padding(20)
}
