const consts = @import("../lib/consts.zig");
const util = @import("../lib/util.zig");

// const allocator = consts.allocator;

// const print = util.print;
const log = util.log;
const fileExist = util.fileExist;
// const readFileAlloc = util.readFileAlloc;
const Error = util.Error;

pub fn vm(path: []const u8) void {
    if (!fileExist(path)) Error("No exec file", "Expected at path {s}.", .{path});

    log("Running...");

    // const file = readFileAlloc(path) catch |err| switch (err) {
    //     error.NotDir, error.FileNotFound => {
    //         return log("Bad path");
    //     },
    //     else => {
    //         return log("Other error!");
    //     },
    // };
    // defer allocator.free(file);

    // print("\nFile content:\n{s}\n", .{file});

    log("Done.");
}
