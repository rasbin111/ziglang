const std = @import("std");
const expect = std.testing.expect;
const mem = std.mem;

test "always succeds" {
    try expect(true);
}

test "checks name" {
    const name: []const u8 = "rasbin";
    try expect(mem.eql(u8, name, "rasbin"));
}

// To run the test
// $ zig test <filename>
