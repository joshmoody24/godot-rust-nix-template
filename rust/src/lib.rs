use godot::classes::Node;
use godot::prelude::*;

struct TemplateGameExtension;

#[gdextension]
unsafe impl ExtensionLibrary for TemplateGameExtension {}

#[derive(GodotClass)]
#[class(base=Node)]
struct HelloNode {
    base: Base<Node>,
}

#[godot_api]
impl INode for HelloNode {
    fn init(base: Base<Node>) -> Self {
        Self { base }
    }

    fn ready(&mut self) {
        godot_print!("Hello from Rust");
    }
}
