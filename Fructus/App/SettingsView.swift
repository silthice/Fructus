//
//  SettingsView.swift
//  Fructus
//
//  Created by Giap on 11/01/2023.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                            
                        }//: HStack
                    }//:GroupBox
                    
                    //MARK: SECTION 2
                    
                    //MARK: SECTION 3
                    GroupBox (
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Giap")
                        SettingsRowView(name: "Designer", content: "Giap")
                        SettingsRowView(name: "Compatibility", content: "IOS 14")
                        SettingsRowView(name: "Website", content: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Github", linkLabel: "silthice", linkDestination: "github.com/silthice/")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0")
                    }//: GroupBox
                    
                }//: VStack
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .navigationTitle("Settings")
            }//: ScrollView
        }//: NavigationView
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
