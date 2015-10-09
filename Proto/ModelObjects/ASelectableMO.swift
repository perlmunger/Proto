import Foundation

@objc(ASelectableMO)
class ASelectableMO: _ASelectableMO, Selectable {

    var displayName : String {
        return self.aname ?? ""
    }
}
