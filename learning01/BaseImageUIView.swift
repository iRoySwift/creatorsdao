//
//  BaseImageUIView.swift
//  creatorsdao
//
//  Created by Roy on 10/25/24.
//

import SwiftUI

struct BaseImageUIView: View {
    var body: some View {

        VStack(spacing: 20) {

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 100,height: 100)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.orange)
            Image("icon-38")
                .resizable()
                .frame(width: 100,height: 100)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray,lineWidth: 4)
                }
                .shadow(radius: 7)

        }
    }
}

#Preview {
    BaseImageUIView()
}
