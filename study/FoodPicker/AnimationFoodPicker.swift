//
//  FoodPicker.swift
//  creatorsdao
//
//  Created by Roy on 11/3/24.
//

import SwiftUI


struct AnimationFoodPicker: View {
    @State private var selectedFood: String?
    let food = ["漢堡","沙拉","披薩","義大利麵","雞腿便當","刀削麵","火鍋", "牛肉麵","開東煮"]
    
    var body: some View {
        VStack(spacing:30){
            
            Image("dinner")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                .cornerRadius(.infinity)
            
            Text("今天吃什么？")
            
            
            if selectedFood != .none {
                Text(selectedFood ?? "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.green)
                //                告诉组件，这是每次都是不同的view，直接做转场动画，不要变形动画
                    .id(selectedFood)
                    .transition(.asymmetric(
                        insertion: .opacity.animation(.easeInOut(duration: 0.5).delay(0.2)),
                        removal: .opacity.animation(.easeInOut(duration: 0.4))))
            }
            
            //            if 判断后是2个不同的view ， 所以发生的是转场动画，不是transition动画
            if selectedFood != .none {
                Color.pink
            } else {
                Color.blue
            }
            
//            三元表达式 必定有一个view返回，通过view身份id与结构位置来判断，都一样就发生的是转场动画
            selectedFood != .none ? Color.pink :  Color.blue
            
            Button(role: .cancel ,action: {handleSelect()}) {
                Text(selectedFood == .none ? "告诉我！" : "换一个")
                    .frame(width: 200)
                //                不做动画
                    .animation(.none, value: selectedFood)
                //                强制Text做变形，不要做转场变化，identity不做任何改变的transform
                //                    .transformEffect(.init(translationX: 0, y: 0))
                    .transformEffect(.identity)
            }
            
            .padding(.bottom, -15)
            
            Button(action: {
                withAnimation {
                    
                    selectedFood = .none
                }
            }) {
                Text("重置")
                
                    .frame(width: 200)
            }
            .buttonStyle(.bordered)
            
        }
        .padding()
        .frame(maxWidth: .infinity ,maxHeight: .infinity)
        .background(Color(.secondarySystemBackground))
        .font(.title)
        .bold()
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        //        可以使用 上面的 withAnimation 精确控制动画
        //        .animation(.easeInOut(duration: 0.6), value: selectedFood)
    }
    
    private func handleSelect(){
        withAnimation {
            selectedFood = food.shuffled().filter{$0 != selectedFood}.first
        }
    }
}

#Preview {
    AnimationFoodPicker()
}
