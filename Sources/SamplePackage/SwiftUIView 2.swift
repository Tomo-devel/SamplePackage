//
//  SwiftUIView 2.swift
//  
//
//  Created by 井上智輝 on 2023-02-22.
//

import SwiftUI

struct SwiftUIView_2: View {
    @State var num: Int = 0
    @Binding var text: String
    
    init(text: Binding<String>) {
        _text = text
    }
    
    var body: some View {
        
        Text("\(num)")
        Text(text)
            .font(.caption)
            .contextMenu {
                Button {
                    num += 1
                    
                } label: {
                    Text("sample")
                }
            }
    }
}

struct SwiftUIView_2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_2(text: .constant(""))
    }
}
