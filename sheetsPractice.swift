//
//  sheetsPractice.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 01/07/2024.
//

import SwiftUI

struct sheetsPractice: View {
    @State var categorySheet: Bool = false
    @State var loginFullScreen: Bool = false
    var body: some View {
        VStack{
            HStack{
                Button {
                    categorySheet.toggle()
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .foregroundColor(Color.blue)
                }
                //1 sheet only. do not add conditional logic etc
                .sheet(isPresented: $categorySheet) {
                    selectCategory()
                }
//                .fullScreenCover(isPresented: $categorySheet) {
//                    selectCategory()
//                }
                Spacer()
                Button {
                    loginFullScreen.toggle()
                } label: {
                    Image(systemName: "gear")
                        .foregroundColor(Color.blue)
                }
                .fullScreenCover(isPresented: $loginFullScreen){
                    FullScreenPractice()
                }
            }
            .padding(.horizontal, 15)
            Spacer()
        }
    }
}

struct selectCategory: View{
    @Environment(\.dismiss) var dismissScreen
    @State var electronics: String = ""
    @State var jewelery: String = ""
    @State var menFashion: String = ""
    @State var womenFashion: String = ""

    var body: some View{
        VStack(spacing: 15) {
            HStack(alignment: .center){
                Spacer()
                Text("Select a Category")
                    .fontWeight(.bold)
                Spacer()
                    Button {
                        dismissScreen()
                       
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color.white)
                            .padding(5)
                            .background(Color.blue)
                            .cornerRadius(14)
                    }
            }
            Button {
                
            } label: {
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.gray)
                    Text("Search")
                        .foregroundColor(Color.gray)
                    
                    Spacer()
                    
                }
                .padding(.all, 8)
                .background(Color(red: 0.87, green: 0.87, blue: 0.91))
                .cornerRadius(5)
            }
            Form{
                TextField("Electronics", text: $electronics)
                TextField("Electronics", text: $electronics)
                TextField("Electronics", text: $electronics)
                TextField("Electronics", text: $electronics)
            }
            .padding(.horizontal, -16)
                        
        }
        .padding(.horizontal, 7)
        .padding(.vertical, 10)
    }
}

#Preview {
    sheetsPractice()
}
