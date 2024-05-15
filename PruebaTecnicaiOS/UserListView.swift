//
//  UserListView.swift
//  PruebaTecnicaiOS
//
//  Created by Marco Alonso Rodriguez on 14/05/24.
//

import SwiftUI

struct UserListView: View {
    @StateObject var viewModel = UserListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.usersData) { user in
                    HStack {
                        AsyncImage(url: URL(string: user.pictureURL)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        
                        VStack(alignment: .leading, content: {
                            Text(user.name)
                                .font(.headline)
                        })
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Usuarios")
            .refreshable {
                viewModel.fetchUsers()
            }
        }
    }
}


#Preview {
    UserListView()
}
