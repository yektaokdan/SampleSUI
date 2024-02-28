//
//  SecondView.swift
//  SUINavigation
//
//  Created by yekta on 28.02.2024.
//

import SwiftUI

struct SecondView: View {
    @State var path: [Dog] = []
    let selectedDog: Dog
    var body: some View {
        NavigationStack(path: $path){
            List(dogs){dog in
                NavigationLink(dog.name, value: dog)
            }.navigationDestination(for: Dog.self) { dog in
                VStack {
                    Text(dog.name)
                    Button("Go Back"){
                        self.path = []
                        //popToRootVC'nin aynisi, hatta kacinci ekranda olursak olalim, ilk ekrana geri donecegiz.
                    }
                    Button("Add to Path"){
                        path=[dogs[0], dogs[1]]
                    }
                }
            }
        }
    }
}

#Preview {
    SecondView(selectedDog: dogs[0])
}
