const std = @import("std");
const print = std.debug.print;
const mem = std.mem; // used to compare bytes

pub fn main() void {
    const name: []const u8 = "rgt";
    print("Type: {} \n", .{@TypeOf(name)});
    print("Name: {s} \n", .{name}); // printing a string

    const string_check: bool = mem.eql(u8, name, "rasbin");
    print("Name check #1: {} \n", .{string_check});
    print("Name check #2: {} \n", .{mem.eql(u8, name, "rgt")}); // check if strings are equal

    const gender: u8 = 'm';
    print("Gender: {c} \n", .{gender}); // printing a character
}
