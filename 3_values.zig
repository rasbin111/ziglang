const std = @import("std");
const print = std.debug.print;
const assert = std.debug.assert;

pub fn main() void {
    // creating values with no values,
    // values to be added afterwards
    var a: i32 = undefined;
    var b: u32 = undefined;

    a = 10;
    b = 20;
    print("value of a: {} & b: {} \n", .{ a, b });

    // int32
    const firstInt: i32 = 1;
    print("{} \n", .{firstInt});

    // float32
    const firstFloat: f32 = 3.11;
    print("{} \n", .{firstFloat});

    // boolean
    const firstBool: bool = true;
    print("{} \n", .{firstBool});
}

test "optional value" {
    // optional
    var optional_value: ?[]const u8 = null;
    assert(optional_value == null);

    optional_value = "hi";
    print("{} \n", .{@TypeOf(optional_value)});
}
