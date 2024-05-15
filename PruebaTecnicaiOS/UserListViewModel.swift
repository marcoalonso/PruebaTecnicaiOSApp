//
//  UserListViewModel.swift
//  PruebaTecnicaiOS
//
//  Created by Marco Alonso Rodriguez on 14/05/24.
//

import Foundation
import Combine

class UserListViewModel: ObservableObject {
    @Published var users = [Users]()
    @Published var usersData: [UserData] = []

    
    
    private var userService = UserService()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        userService.fetchUsers { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let users):
                    self?.loadUsers(users: users)
                case .failure(let error):
                    print("Error fetching users: \(error)")
                }
            }
        }
    }
    
    func loadUsers(users: [Users]) {
        usersData = users.map { UserData(from: $0) }
    }
}
