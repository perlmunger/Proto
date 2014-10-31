@objc(CSelectableMO)
class CSelectableMO: _CSelectableMO, Selectable {

    var displayName : String {
        return self.cname ?? ""
    }

}
