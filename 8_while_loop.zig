const expect = @import("std").testing.expect;

test "while loop" {
    var i: u8 = 1;
    while (i < 100) {
        i *= 2;
    }

    try expect(i == 128);
}

test "while with continue" {
    var sum: u8 = 0;
    var i: u8 = 0;

    while (i <= 3) : (i += 1) {
        if (i == 2) {
            continue;
        }
        sum += i;
    }
    try expect(sum == 4);
}

test "while with break" {
    var sum: u8 = 0;
    var i: u8 = 0;

    while (i <= 3) : (i += 1) {
        if (i == 2) break;
        sum += i;
    }

    try expect(sum == 1);
}
