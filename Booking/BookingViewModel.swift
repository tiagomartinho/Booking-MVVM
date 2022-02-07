import Combine

class BookingViewModel: ObservableObject {
    
    @Published var status: BookingStatus = .initial

    private let model = BookingModel()
    
    func book() {
        status = .booking
        model.book { success in
            self.status = success ? .booked : .error
        }
    }
}
