import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists(Macro m, MacroInvocation mi |
        (m.getName() = "ntohs" or m.getName() = "ntohl" or m.getName() = "ntohll") and mi.getMacro() = m
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 
