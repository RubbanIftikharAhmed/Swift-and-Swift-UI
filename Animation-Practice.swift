//
//  Animation-Practice.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 29/06/2024.
//

import SwiftUI

struct Animation_Practice: View {
    @State var profileExpanded: Bool = true
    var body: some View {
        VStack{
            if profileExpanded {
                CollapsedProfileView(profileExpanded: $profileExpanded)
            }
            else {
                expandedProfileView(profileExpanded: $profileExpanded)
            }
        }
        .padding(.top, 10)
        Spacer()
    }
}



struct CollapsedProfileView: View{
    @Binding var profileExpanded: Bool
    var body: some View{
        HStack(alignment: .top , spacing: 10){
            Button {
                withAnimation(){
                    profileExpanded.toggle()
                }
            } label: {
                profileImage
                    .frame(width: 75, height: 70)
            }
            
            VStack(alignment: .leading , spacing: 5){
                Text("Rubban Iftikhar")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Software Developer")
                    .font(.headline)
                    .foregroundColor(Color.gray)
            }
            Spacer()
        }
        .padding(.leading, 15)
    }
}

struct expandedProfileView: View{
    @Binding var profileExpanded: Bool
    var body: some View{
        VStack{
            Button {
                withAnimation(.default){
                    profileExpanded.toggle()
                }
            } label: {
                profileImage
                    .frame(width: 130, height: 110)
            }

            
            Text("Rubban Iftikhar")
                .font(.title)
                .fontWeight(.bold)
            Text("Ios developer")
                .font(.body)
                .foregroundColor(Color.gray)
        }
    }
}
var profileImage: some View {
    Image("cat")
        .resizable()
        .scaledToFill()
        .clipShape(.circle)
    
}

#Preview {
    Animation_Practice()
}
