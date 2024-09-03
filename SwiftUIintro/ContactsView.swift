//
//  ContactsView.swift
//  SwiftUIintro
//
//  Created by Arantza Castro Dessavre on 28/08/24.
//

import SwiftUI

struct ContactsView: View {
    @State  private var  contacts: [Contact] = Contact.sampleData
    @State private var newCantact = Contact(name: "", phoneNumber: "", icon: "?", color: .gray)
    @State private var ShowAddContact:Bool = false
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach($contacts){ $contact in
                    HStack{
                        ZStack{
                            Circle()
                                .fill(contact.color)
                                .opacity(0.3)
                                .frame(width: 50, height: 50)
                            
                            Text(contact.icon)
                        }
                        
                        VStack(alignment:.leading){
                            Text(contact.name)
                                .font(.headline)
                            
                            
                            Text(contact.phoneNumber)
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .listStyle(.inset)
            .navigationTitle("Contacts")
            .toolbar(){
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{
                        ShowAddContact.toggle()
                    }){
                        Image(systemName: "plus")
                        
                    }
                    
                }
            }
            .sheet(isPresented: $ShowAddContact){
                AddContactView(contact: $newCantact)
                    .onDisappear{
                        if !newCantact.name.isEmpty && !newCantact.phoneNumber.isEmpty{
                            contacts.append(newCantact)
                        }
                    }
            }
        }
    }
}

#Preview {
    ContactsView()
}
