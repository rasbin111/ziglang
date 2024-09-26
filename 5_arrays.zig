// [N]T, where N is the number of elements and T is
// the type of those elements

const std = @import("std");
pub fn main() void {
    // N may be replaced by _ to infer the size
    const a = [5]u8{ 'h', 'e', 'n', 'd', 'y' };
    const b = [_]u8{ 'w', 'i', 'n', 'g', 'y' };

    const length = a.len;
    const length_b = b.len;

    std.debug.print("Length of first array: {}  & second array: {}\n", .{ length, length_b });
}
