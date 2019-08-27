contract I {
  function set() public {}
}
contract A is I {
  uint a;
  function set() public override { a = 1; super.set(); a = 2; }
}
contract B is I {
  uint b;
  function set() public override { b = 1; super.set(); b = 2; }

}
contract X is A, B {
  function set() public override(A, B) { super.set(); }
}
