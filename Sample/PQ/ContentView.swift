//
//  ContentView.swift
//  PQ
//
//  Created by Slav Sarafski on 14.12.22.
//

import SwiftUI
import PQMagic

struct ContentView: View {
    
    private let magic = PQMagic()
    
    // MARK: Combine
    @State var input: String = ""
    @State var output: String = ""
    @State var result: MagicResult = .none
    
    // MARK: UI
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                TextField("Input", text: self.$input)
                    .frame(height: 40)
                    .padding(4)
                    .background(Color(uiColor: .systemGray6))
                TextField("Output", text: self.$output)
                    .frame(height: 40)
                    .padding(4)
                    .background(Color(uiColor: .systemGray6))
            }
            
            Button(action: self.invokeMagic) {
                Text("Do Magic")
                    .foregroundColor(.white)
                    .frame(width: 150, height: 40)
                    .background(Color.blue)
            }
            
            HStack {
                let data = result.data()
                Text(data.0)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(data.1)
            }
        }
        .padding()
    }
    
    // MARK: actions
    func invokeMagic() {
        if self.input.isEmpty,
           self.output.isEmpty {
            return
        }
        if magic.invoke(initial: self.input, target: self.output) {
            self.result = .good
        }
        else {
            self.result = .bad
        }
    }
}

enum MagicResult {
    case none
    case bad
    case good
    
    func data() -> (String, Color) {
        switch self {
        case .none:
            return ("Waiting your input", .yellow)
        case .bad:
            return ("Magic failed", .red)
        case .good:
            return ("Magic is full", .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
