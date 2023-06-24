import SwiftUI
struct ContentView: View {
    @AppStorage ("count") var count = 0
    @AppStorage ("Remaining") var cookiesRemaining  = 40
    @AppStorage ("message") var message = ""
    
    var body: some View {
        VStack {
            Text("\(count) cookies eaten")
            Text("\(cookiesRemaining - count) cookies remaining in the jar")
            
            Button{
                count += 1

                if count >= 5 {
                    message = "You are eating too much"
                }
                if count >= 10 {
                    message = "Stop eating"
                }
                
                if count >= 15{
                    message = "Oh nooooooooooo"
                }

            }label: {
                Text("Eat a cookie")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            //.buttonStyle(.borderedProminent)
           
            .shadow(color: .black.opacity(10), radius: 10, x: 0.0, y:0.0)
            Text(message)
            /*if count >= 15 {
                Text ("Oh nooooooooooo")
            } else if count >= 10 {
            Text ("Stop eating")
            } else if count >= 5 {
                Text ("You are eating too much")
            } - not convinient */
            Button{
                count = 0
                cookiesRemaining = 40
                if count == 0 {
                    message = ""
                }
            }label: {
                Text("Reset")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .black.opacity(10), radius: 10, x: 0.0, y:0.0)

        }
        
        
        Button{
            cookiesRemaining += 1
        }label: {
            Text("Buy cookies")
                .padding()
                .background(.purple)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .shadow(color: .black.opacity(10), radius: 10, x: 0.0, y:0.0)
        
    }
}
