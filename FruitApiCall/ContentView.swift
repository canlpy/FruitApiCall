//
//  ContentView.swift
//  FruitApiCall
//
//  Created by Can Alpay on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = FruitViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.fruits) { fruit in
                VStack(alignment: .leading) {
                    Text(fruit.name)
                        .font(.headline)
                    Text("Family: \(fruit.family)")
                    Text("Order: \(fruit.order)")
                    Text("Genus: \(fruit.genus)")
                    Text("Calories: \(fruit.nutritions.calories)")
                    Text("Fat: \(fruit.nutritions.fat)")
                    Text("Sugar: \(fruit.nutritions.sugar)")
                    Text("Carbohydrates: \(fruit.nutritions.carbohydrates)")
                    Text("Protein: \(fruit.nutritions.protein)")
                }
            }
            .navigationTitle("Fruits")
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
