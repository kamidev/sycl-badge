const std = @import("std");
const sycl_badge = @import("sycl_badge");

pub const author_name = "Jonathan Marler";
pub const author_handle = "marler8997";
pub const cart_title = "blobs";
pub const description = "Little Blob, Eat Blob, Big Blob";

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});
    const sycl_badge_dep = b.dependency("sycl_badge", .{});

    const cart = sycl_badge.add_cart(sycl_badge_dep, b, .{
        .name = "blobs",
        .optimize = optimize,
        .root_source_file = b.path("src/blobs.zig"),
    });
    cart.install(b);
}
