//
//  alertsBootcamp.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 13/07/2024.
//

import SwiftUI

struct alertsBootcamp: View {
    @State var showAlert: Bool = false
    @State var showDataError: Bool = false
    @State var bindingValue: String = ""
    var body: some View {
        VStack(spacing: 15){
            Button("Fetch Data") {
                showAlert = true
            }
            .alert("No network", isPresented: $showAlert) {
                // by default it adds the .cancel role button.
                Button("Delete", role: .destructive) {
                    //delete something
                }
            } message: {
                Text("Unable to connect to network. Please try again.")
            }
            Button("Enter data") {
                showDataError = true
            }
            .alert("Enter Value", isPresented: $showDataError) {
                TextField("Enter the dollar value", text: $bindingValue)
                Button("Submit", role: .none) {
                    //submit
                }
                Button("Cancel", role: .cancel) { }
                
            } message: {
                
            }

        }
    }
}

#Preview {
    alertsBootcamp()
}
