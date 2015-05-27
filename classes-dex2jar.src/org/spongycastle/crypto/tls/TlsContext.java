package org.spongycastle.crypto.tls;

import java.security.SecureRandom;
import org.spongycastle.crypto.prng.RandomGenerator;

public abstract interface TlsContext
{
  public abstract RandomGenerator lF();
  
  public abstract SecureRandom lG();
  
  public abstract SecurityParameters lH();
  
  public abstract ProtocolVersion lI();
  
  public abstract ProtocolVersion lJ();
  
  public abstract boolean mM();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsContext
 * JD-Core Version:    0.7.0.1
 */