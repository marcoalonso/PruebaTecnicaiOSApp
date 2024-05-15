//
//  UserService.swift
//  PruebaTecnicaiOS
//
//  Created by Marco Alonso Rodriguez on 14/05/24.
//

import Foundation

class UserService {
    func fetchUsers(completion: @escaping (Result<[Users], Error>) -> Void) {
        guard let url = URL(string: "https://randomuser.me/api?results=20") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            do {
                let response = try JSONDecoder().decode(UserResponse.self, from: data)
                completion(.success(response.results))
                print("DEBUG: response \(response.results)")
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
}
