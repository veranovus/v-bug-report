module main

interface Module {
  import_()
}

struct TestModule {}

fn (mod TestModule) import_() {

  println("I'm called!")
}

fn import_module[T]() {

  $if T !is Module {

    println("Type doesn't implement Module.")
    return
  }

  mod := Module(T{})

  C.test_func(mod.import_, &char(T.name.str))
}

fn main() {

  import_module[TestModule]()
}
