//
//  SecondContactList.swift
//  ContactListSwiftUI
//
//  Created by Олег Федоров on 11.11.2021.
//

import SwiftUI

struct SecondContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                } header: {
                    Text(person.fullName)
                        .foregroundColor(.black)
                        .font(.title3)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct SecondContactList_Previews: PreviewProvider {
    static var previews: some View {
        SecondContactList(persons: Person.getContactList())
    }
}
