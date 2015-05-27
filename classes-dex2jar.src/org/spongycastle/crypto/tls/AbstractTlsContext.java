package org.spongycastle.crypto.tls;

import java.security.SecureRandom;
import org.spongycastle.crypto.prng.RandomGenerator;
import org.spongycastle.util.Times;

abstract class AbstractTlsContext
  implements TlsContext
{
  private static long aOT = ;
  private RandomGenerator aSK;
  private SecureRandom aSL;
  private SecurityParameters aSM;
  private ProtocolVersion aSN;
  private ProtocolVersion aSO;
  
  public RandomGenerator lF()
  {
    return this.aSK;
  }
  
  public SecureRandom lG()
  {
    return this.aSL;
  }
  
  public SecurityParameters lH()
  {
    return this.aSM;
  }
  
  public ProtocolVersion lI()
  {
    return this.aSN;
  }
  
  public ProtocolVersion lJ()
  {
    return this.aSO;
  }
  
  void ˋ(ProtocolVersion paramProtocolVersion)
  {
    this.aSN = paramProtocolVersion;
  }
  
  void ˎ(ProtocolVersion paramProtocolVersion)
  {
    this.aSO = paramProtocolVersion;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AbstractTlsContext
 * JD-Core Version:    0.7.0.1
 */