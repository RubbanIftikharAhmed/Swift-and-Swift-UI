//
//  Colors.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 20/06/2024.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
        //primary color changes depending on the mode you are in.
            .fill(Color.primary)
            .frame(width: 100, height: 100)
        
    }
}

#Preview {
    Colors()
}
