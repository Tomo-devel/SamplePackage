//
//  SwiftUIView 2.swift
//  
//
//  Created by 井上智輝 on 2023-02-22.
//

import SwiftUI

public struct SwiftUIView_2: View {
    @State var num: Int = 0
    @Binding var text: String
    let image = UIImage(named: "shellingford", in: Bundle.module, compatibleWith: nil)
    
    public init(text: Binding<String>) {
        _text = text
    }
    
    public var body: some View {
        
        Image(uiImage: image!)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
        Text("\(num)")
        
        Text(text)
            .font(.caption)
            .frame(maxWidth: .infinity)
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
