//
//  BaseUI.swift
//  creatorsdao
//
//  Created by Roy on 10/24/24.
//

import SwiftUI

struct BaseTextUIView: View {
    // 状态变量
    @State private var textFieldInput = ""
    

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // 1. 基本使用
            Text("1. Basic Usage")
            
            // 2. 修改字体
            Text("2. Large Title Font")
                .font(.largeTitle)
            
            Text("3. Custom Font")
                .font(.system(size: 24, weight: .bold, design: .serif))
            
            // 4. 更改颜色
            Text("4. Colored Text")
                .foregroundColor(.blue)
            
            // 5. 字体加粗
            Text("5. Bold Text")
                .bold()
            
            // 6. 斜体
            Text("6. Italic Text")
                .italic()
            
            // 7. 添加下划线
            Text("7. Underlined Text")
                .underline()
            
            // 8. 添加删除线
            Text("8. Strikethrough Text")
                .strikethrough()
            
            // 9. 字间距
            Text("9. Text with Kerning")
                .kerning(5) // 增加字符间距
            
            // 10. 行间距
            Text("10. Text with Line Spacing\nThis is on a new line.")
                .lineSpacing(10) // 设置行间距
            
            // 11. 动态字体大小
            Text("11. Dynamic font size")
                .font(.system(.title, design: .serif,weight:Font.Weight.medium))
                .dynamicTypeSize(.small ... .xxLarge)
                .padding(20)
            // 11. 多语言版本
            Text(LocalizedStringKey("Hello_World"))
                .padding()
            
            // 12. 多种修饰组合
            Text("12. Combined Modifiers")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .underline(true, color: .red)
                .padding()
                .shadow(color:.gray,radius: 2,x:2,y: 2)
                .background(.orange)
                .border(.black, width: 1)
                .cornerRadius(19)
        }
        .padding()
        .navigationTitle("Text Examples")
    }
}

#Preview {
    BaseTextUIView()
}

