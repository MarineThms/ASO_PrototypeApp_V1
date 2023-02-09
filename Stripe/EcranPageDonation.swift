//
//  ContentView.swift
//  Fruits-Stripe-Integration
//
//  Created by marco rodriguez on 01/07/22.
//

import SwiftUI



struct EcranPageDonation: View {
    
    
    @EnvironmentObject private var cart: Cart
    @State private var isActive: Bool = false
    
    private func startCheckout(completion: @escaping (String?) -> Void) {
        
        let url = URL(string: "https://pinnate-satisfying-date.glitch.me/payment-sheet")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let json = try! JSONEncoder().encode(cart.items)
        request.httpBody = json
        
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data, error == nil,
                  (response as? HTTPURLResponse)?.statusCode == 200
            else {
                print("error")
                completion(nil)
                return
            }
            do {
                
                
                if  let obj = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    
                    completion(obj["paymentIntent"] as? String ?? "")}
                
                
            } catch {
                print(error.localizedDescription)
            }
            
            
            //completion(checkoutIntentResponse?.clientSecret)
            
        }.resume()
        
    }
    
    var body: some View {
        
        NavigationView{
        
            VStack{
                
                HStack {
                    
                    Text("\(cart.cartCount)")
                        .frame(width: 100, height: 100)
                        .background(Color("ColorJaune"))
                        .cornerRadius(20)
                        .foregroundColor(.black)
                        .font(.system(size: 65))
                    
                    Text("€")
                        .frame(width: 30, height:40)
                        .background(Color("ColorJaune"))
                        .cornerRadius(20)
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                    
                    
                    
                    
                    
                }
       
        .padding()
        
          
                
                VStack{
                    
                    VStack {
                        List(LAssociations.all()) { lassociation in
                            HStack {
                                Image(lassociation.logoAssociation)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 40,height: 40)
                                    .padding()
                                
                                
                                Text(lassociation.nameAssociation)
                                Text(formatPrice(lassociation.price) ?? "")
                                
                                Spacer()
                                Button {
                                    // action
                                    cart.addToCart(lassociation)
                                } label: {
                                    Image(systemName: "plus")
                                }
                                
                                //                            Button {
                                //                                // action
                                //                                cart.LessToCart(lassociation)
                                //                            } label: {
                                //                                Image(systemName: "minus")
                                //                            }
                                
                                .padding()
                            }
                            
                        }
                    }
                }
            
                
              
                
                
                
                .environmentObject(Cart())
                
            
                
          
           
                
                
                
                
              
                
                
                NavigationLink(destination: CheckoutView(), isActive: $isActive) {
                    
                    
                    Button("Donation") {
                        startCheckout { clientSecret in
                            PaymentConfig.shared.paymentIntentClientSecret = clientSecret
                            DispatchQueue.main.async {
                                isActive = true
                                
                            }
                            
                            
                        }
                        
                    }
                    .padding()
                }
            }
                
            
        }
    }
}








