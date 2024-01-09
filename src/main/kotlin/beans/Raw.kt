package beans

public class Raw(_x: Double, _y: Double, _r: Double, _valid: Boolean) {
    val x: Double = _x
    val y: Double = _y
    val r: Double = _r
    val isValid: Boolean = _valid
    var time: Double = 0.0
        set(value) { // value in nanosec
            field = value / 1000000
        }
    var currentTime: String = "no info"

}