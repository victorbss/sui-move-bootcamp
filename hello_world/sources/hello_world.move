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

    // func never called. remove it
    fun test_func(){
        print(&utf8(b"test func call"));
    }

    #[test]
    fun test(){
        hello_world()
    }
}