import SwiftUI

struct LoginView: View {
    //MARK: FIELD
        @State private var username: String = ""
        @State private var password: String = ""
        @FocusState private var emailFieldIsFocused: Bool
        @AppStorage("onboarding") var isLoggedIn: Bool = false

        //MARK: FUNCTIONS
        func signIn(){
            
        }
    
        var body: some View {
            
            VStack(alignment: .leading, spacing: 10) {
                    
                    TextField(
                        "Email",
                        text: $username
                    )
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    .border(Color.black.opacity(1), width: 2)
                    .disableAutocorrection(true)
                    .padding(10)
                    
                    TextField(
                        "Password",
                        text: $password
                    )
                    .focused($emailFieldIsFocused)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    .border(Color.black, width: 2)
                    .disableAutocorrection(true)
                    .padding(10)
                    
                        
                    // Login Button
                    VStack(spacing: 5) {
                        
//                        NavigationLink(destination: HomeView()) {
                            MyButton(
                                btnText: "Login",
                                btnTextColor: .white,
                                backgroundColor: .black,
                                btnBorderColor: .black,
                                action: {
                                    print("Login CLicked!")
                                    isLoggedIn = true
                                }
                            )
//                        }
                        
                        Text("By signing up, you agree to Photo’s Terms of Service and Privacy Policy.")
                        
                    }// VStack
                        .padding(10)
                                        
                }// VStack
                .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                .navigationTitle("Login")
                .navigationBarTitleDisplayMode(.large)
                
        }

}

#Preview {
    LoginView()
}
