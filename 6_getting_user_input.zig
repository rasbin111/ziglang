const std = @import("std");

pub fn main() !void {
    var name: [10]u8 = undefined;

    const stdin = std.io.getStdIn().reader();

    std.debug.print("Please enter your name: ", .{});
    _ = try stdin.readUntilDelimiter(&name, '\n');
    std.debug.print("Your name is: {s} \n", .{name});
}
