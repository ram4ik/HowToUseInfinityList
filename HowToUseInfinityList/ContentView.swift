//
//  ContentView.swift
//  HowToUseInfinityList
//
//  Created by ramil on 15.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var items = Array(1...30)
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    Text("\(item)")
                        .onAppear() {
                            let last = self.items.last!
                            if last == item {
                                print("last item")
                                self.items += last+1...last+30
                            }
                    }
                }
            .navigationBarTitle("Infinity List")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
