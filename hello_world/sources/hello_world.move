/*
/// Module: hello_world
module hello_world::hello_world;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module hello_world::hello_world{
    use std::debug::print;
    use std::string::utf8;

    fun hello_world(){
        print(&utf8(b"Hello World!"));
    }

    // #[test]
    // fun test(){
    //     hello_world()
    // }
}