import cpp

class NetworkByteSwap extends Expr {
  MacroInvocation mi;
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists(Macro m | 
        (m.getName() = "ntohs" or m.getName() = "ntohl" or m.getName() = "ntohll") and mi.getMacro() = m
    )
  } 

  MacroInvocation getMI(){
      result = mi
  }
}

from NetworkByteSwap n
select n.getMI().getExpr(), "Network byte swap" 
