import SwiftUI

struct CurrentUserProfileView: View {
    @StateObject var viewModel = CurrentUserProfileViewModel()
    @State private var showEditProfile = false

    private var currentUser: User? {
        Task { try await UserService.shared.fetchCurrentUser() }
        return viewModel.currentUser
    }
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                //bio and stats
                VStack(spacing: 20) {

                    ProfileHeaderView(user: currentUser)

                    Button {
                        showEditProfile.toggle()
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: 352, height: 32)
                            .background(.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(.systemGray6), lineWidth: 1)
                            )
                    }
                    if let user = currentUser {
                        UserContentListView(user: user)
                    }

                }
            }
            .sheet(
                isPresented: $showEditProfile,
                content: {
                    if let user = currentUser {
                        EditProfileView(user: user)
                    }

                }
            )

            .toolbar {
                ToolbarItem(placement: .principal) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Text("Sign Out")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.red)
                    }
                }
            }

            .padding(.horizontal)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}

