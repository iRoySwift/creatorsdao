//
//  BaseStackView.swift
//  creatorsdao
//
//  Created by Roy on 10/25/24.
//

import SwiftUI

struct BaseStackView: View {
    var body: some View {
        GeometryReader { geometry in
            
            ScrollView{
                VStack(spacing: 30){
                    // MARK: - VStack 示例
                    VStack {
                        Text("VStack Example")
                            .font(.headline)
                            .padding()
                        VStack(spacing:10){
                            Text("Item1")
                                .padding()
                                .background(Color.red)
                                .cornerRadius(10)
                            Text("Item2")
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(10)
                            Text("Item3")
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    
                    // MARK: - HStack 示例
                    VStack{
                        Text("HStack Example")
                            .font(.headline)
                            .padding()
                        HStack(spacing:10){
                            Text("Item1")
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                            Text("Item2")
                                .padding()
                                .background(Color.green)
                                .cornerRadius(10)
                            Text("Item3")
                                .padding()
                                .background(Color.purple)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    
                    // MARK: - ZStack 示例
                    VStack{
                        Text("ZStack Example")
                            .font(.headline)
                            .padding()
                        ZStack {
                            Color.blue.frame(width: 200,height: 200).cornerRadius(20)
                            Text("Bottom Layer")
                                .padding()
                                .font(.title)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .background(.green)
                            VStack{
                                Spacer()
                                Text("Top Layer")
                                    .font(.headline)
                                    .foregroundColor(.yellow)
                                    .padding(.bottom,10)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    
                    // MARK: - Mixed Stacks 示例
                    VStack{
                        Text("Mixed Example")
                            .font(.headline)
                            .padding()
                        VStack{
                            HStack(spacing:10){
                                Text("Top-Left")
                                    .padding()
                                    .background(Color.orange)
                                    .cornerRadius(10)
                                Text("Bottom-Left")
                                    .padding()
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                                
                            }
                            HStack(spacing:10){
                                Text("Top-Right")
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                Text("Bottom-Right")
                                    .padding()
                                    .background(Color.green)
                                    .cornerRadius(10)
                            }
                        }
                        
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    
                    // MARK: - Alignment 示例
                    VStack {
                        Text("Alignment Example")
                            .font(.headline)
                            .padding()
                        HStack(alignment: .bottom) {
                            Text("Item 1")
                                .padding()
                                .background(Color.red)
                                .cornerRadius(10)
                            Text("Item 2")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(10)
                            Text("Item 3")
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(15)
                }
                .frame(maxWidth: .infinity)
                
            }
            // .frame(maxWidth: geometry.size.width)
            // .edgesIgnoringSafeArea(.horizontal)
        }
    }
}

#Preview {
    BaseStackView()
}
