object "main"
{
    code {
        sstore(0, dataoffset("main"))
        sstore(1, dataoffset("sub"))
    }
    object "sub" { code { sstore(0, 1) } }
}
// ----
// Trace:
//   SSTORE(0, 110)
//   SSTORE(1, 1804)
// Memory dump:
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 000000000000000000000000000000000000000000000000000000000000006e
//   0000000000000000000000000000000000000000000000000000000000000001: 000000000000000000000000000000000000000000000000000000000000070c