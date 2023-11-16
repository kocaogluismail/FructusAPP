//
//  SettingsView.swift
//  Fructus
//
//  Created by İsmail Kocaoglu on 15.11.2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @State var toggleStatus: Bool = false
    
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    
                    GroupBox(label: 
                      SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            Text("Most fruit are naturally low in fat ,sodium. and calories. None have cholesterol. Fruits are sources of many essential nutrients , including potassium, dietary fiber, vitamins and much more ")
                                .font(.footnote)
                        }
                    }
                 
                    // MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $toggleStatus) {
                            if toggleStatus{
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone") ){
                          SettingsRowView(name: "Developer", content: "Ismail Kocaoğlu")
                          SettingsRowView(name:"Designer", content: "Robert Petras")
                            SettingsRowView(name:"Compatibility", content: "iOS 14")
                            SettingsRowView(name:"Website", linkLabel: "Github", linkDestination:"github.com/kocaogluismail")
                            SettingsRowView(name: "Twitter",linkLabel: "@ismailkocaogIu", linkDestination: "twitter.com/ismailkocaogIu")
                            SettingsRowView(name: "SwiftUI",content: "2.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                            
                        }
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//: SCROOL
           
            
        }//: NAVIGATION
        .onDisappear(perform: {
            isOnboarding = toggleStatus
        })
    }
}
// MARK: - PREVIEW
#Preview {
    SettingsView()
}
