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
    const code = "const a = 12; const b = 24; a+b";
    const val = quickNG.JS_Eval(ctx, code, code.len, "test.js", quickNG.JS_EVAL_TYPE_GLOBAL);
    const number = quickNG.JS_ToNumber(ctx, val);
    std.debug.print("{}", .{number});
}

