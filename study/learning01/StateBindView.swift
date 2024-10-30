//
//  StateBindView.swift
//  creatorsdao
//
//  Created by Roy on 10/28/24.
//

import SwiftUI

struct StateBindView: View {
    var body: some View {
        ParentView()
    }
}

struct ParentView: View {
    @State private var isOn:Bool = false;
    
    var body: some View {
        VStack{
            HStack{
                Text("Parent View")
                Text("Is Switch on: \(isOn)")
            }
            ChildView(isOn: $isOn)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
        .padding()
    }
}

struct ChildView: View {
    @Binding var isOn:Bool
    
    var body: some View {
        VStack{
            Text("Child View")
            Toggle(isOn: $isOn) {
                Text("Switch")
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
        .padding()
    }
}

#Preview {
    StateBindView()
}

#Preview {
    ChildView(isOn: .constant(true))
}
