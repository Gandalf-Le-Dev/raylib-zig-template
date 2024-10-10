const r = @cImport(@cInclude("raylib.h"));

pub fn main() !void {
    r.SetConfigFlags(r.FLAG_WINDOW_RESIZABLE + r.FLAG_VSYNC_HINT);
    r.InitWindow(800, 600, "raylib zig template");
    defer r.CloseWindow();

    while (!r.WindowShouldClose()) {
        r.BeginDrawing();
        r.ClearBackground(r.RAYWHITE);
        r.DrawText("Hello, World!", 64, 64, 32, r.BLACK);
        r.DrawFPS(10, 20);
        r.EndDrawing();
    }
}
