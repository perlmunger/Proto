@objc(BSelectableMO)
class BSelectableMO: _BSelectableMO, Selectable {

    var displayName : String {
        return self.bname ?? ""
    }

}
