import Foundation

struct BookingModel {
    func book(_ handler: @escaping (Bool) -> Void) {
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { _ in
            handler(Bool.random())
        }
    }
}
