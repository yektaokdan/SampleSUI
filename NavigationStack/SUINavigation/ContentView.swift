//
//  ContentView.swift
//  SUINavigation
//
//  Created by yekta on 28.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(dogs){dog in
                Section("Dogs"){
                    ForEach(dogs){dog in
                        NavigationLink(dog.name, value: dog)

                    }
                }
                Section("Cats"){
                    ForEach(cats){cat in
                        NavigationLink(cat.name, value: cat)

                    }
                }

            }.navigationDestination(for: Dog.self) { dog in
                Text(dog.name)
            }
            .navigationDestination(for: Cat.self) { cat in
                Text(cat.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
