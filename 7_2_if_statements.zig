// error in line 8 - readInt()
const std = @import("std");

pub fn main() !void {
    var age: i32 = undefined;
    const stdin = std.io.getStdIn().reader();

    std.debug.print("Please enter your age: ", .{});
    age = try stdin.readInt(i32);

    if (age >= 18) {
        std.debug.print("Hurray, You can vote", .{});
    } else {
        std.debug.print("Sorry, you need to wait {} more years", .{18 - age});
    }
}
