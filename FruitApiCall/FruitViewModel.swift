//
//  FruitViewModel.swift
//  FruitApiCall
//
//  Created by Can Alpay on 20.07.2023.
//


// FruitViewModel.swift

import Foundation

class FruitViewModel: ObservableObject {
    @Published var fruits: [Fruit] = []

    func fetchData() {
        guard let url = URL(string: "https://fruityvice.com/api/fruit/all") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                print("Error fetching data: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            do {
                let decodedData = try JSONDecoder().decode([Fruit].self, from: data)
                DispatchQueue.main.async {
                    self.fruits = decodedData
                }
            } catch {
                print("Error decoding data: \(error.localizedDescription)")
            }
        }.resume()
    }
}
