const std = @import("std");
const zig_quickjs_demo = @import("zig_quickjs_demo");

const quickNG = @cImport({
    @cInclude("quickjs.h");
    @cInclude("dtoa.h");
    @cInclude("libregexp.h");
    @cInclude("cutils.h");
});

pub fn main() !void {
    const rt = quickNG.JS_NewRuntime();
    const ctx = quickNG.JS_NewContext(rt);
    const ret = quickNG.JS_UNDEFINED;
    const code = "const a = 12; const b = 24; a+b";
}

