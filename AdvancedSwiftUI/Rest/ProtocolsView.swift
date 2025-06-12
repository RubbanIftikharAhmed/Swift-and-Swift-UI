//
//  ProtocolsView.swift
//  AdvancedSwiftUI
//
//  Created by Rubban Iftikhar on 09/03/2025.
//

import SwiftUI

struct DefaultColorTheme: ColorThemeProtocol{
    let primary: Color = Color.blue
    let secondary: Color = Color.white
    let tertiary: Color = Color.gray
}

struct AlternativeColorTheme: ColorThemeProtocol{
    let primary: Color = Color.red
    let secondary: Color = Color.white
    let tertiary: Color = Color.green
}

protocol ColorThemeProtocol {
    // A set of rule or requirement a struct need to have
    var primary: Color { get } // this value is get only
    var secondary: Color { get }
    var tertiary: Color { get }
}



//A view is a protocol and the has a requirement that every view ought to have a body
struct ProtocolsView: View{
    //let colorTheme = ColorTheme()
    //i cant do this
    //let colorTheme: AlternativeColorTheme = ColorTheme()
    
    let ColorTheme: ColorThemeProtocol
    let colorTheme = AlternativeColorTheme()
    var body: some View {
        ZStack{
            colorTheme.tertiary
                .ignoresSafeArea()
            Text("Protocols are awesome")
                .foregroundStyle(colorTheme.secondary)
                .padding()
                .background(colorTheme.primary)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ProtocolsView(ColorTheme: DefaultColorTheme())
}
