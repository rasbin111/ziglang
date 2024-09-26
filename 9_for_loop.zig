const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    const first_three = [_]u8{ 'a', 'b', 'c' };
    var sum: usize = 0;

    for (first_three, 0..) |character, i| {
        sum += i;
        std.debug.print("Character: {c} & index: {} \n", .{ character, i });
    }
}

test "for loop" {
    const first_three = [_]u8{ 'a', 'b', 'c' };
    var sum: usize = 0;

    for (first_three, 0..) |character, i| {
        sum += i;
        _ = character;

        // this test gives error
        try expect(sum == 3);
    }
}
