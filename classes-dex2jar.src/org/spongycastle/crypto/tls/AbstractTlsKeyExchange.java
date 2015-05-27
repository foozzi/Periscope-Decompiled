package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.util.Vector;

public abstract class AbstractTlsKeyExchange
  implements TlsKeyExchange
{
  protected Vector aSE;
  protected int aSP;
  protected TlsContext aSQ;
  
  protected AbstractTlsKeyExchange(int paramInt, Vector paramVector)
  {
    this.aSP = paramInt;
    this.aSE = paramVector;
  }
  
  public boolean lK()
  {
    return false;
  }
  
  public byte[] lL()
  {
    if (lK()) {
      throw new TlsFatalAlert((short)80);
    }
    return null;
  }
  
  public void lM()
  {
    if (lK()) {
      throw new TlsFatalAlert((short)10);
    }
  }
  
  public void lN() {}
  
  public void ˈ(InputStream paramInputStream)
  {
    if (!lK()) {
      throw new TlsFatalAlert((short)10);
    }
  }
  
  public void ˉ(InputStream paramInputStream)
  {
    throw new TlsFatalAlert((short)80);
  }
  
  public void ˊ(Certificate paramCertificate)
  {
    paramCertificate = this.aSE;
  }
  
  public void ˊ(TlsContext paramTlsContext)
  {
    this.aSQ = paramTlsContext;
    paramTlsContext = paramTlsContext.lI();
    if (TlsUtils.ͺ(paramTlsContext))
    {
      if (this.aSE == null)
      {
        switch (this.aSP)
        {
        default: 
          break;
        case 3: 
        case 7: 
        case 22: 
          this.aSE = TlsUtils.nu();
          return;
        case 16: 
        case 17: 
          this.aSE = TlsUtils.nv();
          return;
        case 1: 
        case 5: 
        case 9: 
        case 15: 
        case 18: 
        case 19: 
        case 23: 
          this.aSE = TlsUtils.nw();
          return;
        case 13: 
        case 14: 
        case 21: 
        case 24: 
          return;
        }
        throw new IllegalStateException("unsupported key exchange algorithm");
      }
    }
    else if (this.aSE != null) {
      throw new IllegalStateException("supported_signature_algorithms not allowed for " + paramTlsContext);
    }
  }
  
  public void ˊ(TlsCredentials paramTlsCredentials)
  {
    ˊ(paramTlsCredentials.lX());
  }
  
  public void ˋ(Certificate paramCertificate) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AbstractTlsKeyExchange
 * JD-Core Version:    0.7.0.1
 */