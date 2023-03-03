//
//  ModelClientView.swift
//  TesteCadastro
//
//  Created by Aloisio on 06/03/23.
//

import SwiftUI

struct ModelClientView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) var clients: FetchedResults<Client>
    
    @State private var clientName = ""
    @State private var phone = ""
    @State private var address = ""
    @State private var consultant = Consultant()
    
    var body: some View {
        VStack {
            Form {
                Section("Form New Client") {
                    TextField("Insert Name Client", text: $clientName)
                    TextField("Phone", text: $phone)
                    TextField("Address", text: $address)
                }
                List(clients) { client in
                    Text(client.name ?? "Unknown")
                }
            }
            .padding()
            Button("Save") {
                let client = Client(context: managedObjectContext)
                client.name = clientName
                client.phone = phone
                client.address = address
                
                PersistenceController.shared.save()
            }
        }
    }
}

struct ModelClientView_Previews: PreviewProvider {
    static var previews: some View {
        ModelClientView()
    }
}
