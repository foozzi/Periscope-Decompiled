package org.spongycastle.crypto.tls;

import java.util.Hashtable;
import java.util.Vector;

public abstract class AbstractTlsClient
  extends AbstractTlsPeer
  implements TlsClient
{
  protected TlsCipherFactory aSC;
  protected TlsClientContext aSD;
  protected Vector aSE;
  protected int[] aSF;
  protected short[] aSG;
  protected short[] aSH;
  protected int aSI;
  protected short aSJ;
  
  public AbstractTlsClient()
  {
    this(new DefaultTlsCipherFactory());
  }
  
  public AbstractTlsClient(TlsCipherFactory paramTlsCipherFactory)
  {
    this.aSC = paramTlsCipherFactory;
  }
  
  public ProtocolVersion lC()
  {
    return ProtocolVersion.aTR;
  }
  
  public Vector lD()
  {
    return null;
  }
  
  public TlsCompression lE()
  {
    switch (this.aSJ)
    {
    default: 
      break;
    case 0: 
      return new TlsNullCompression();
    }
    throw new TlsFatalAlert((short)80);
  }
  
  public void ʾ(Hashtable paramHashtable)
  {
    if (paramHashtable != null)
    {
      if (paramHashtable.containsKey(TlsUtils.aWa)) {
        throw new TlsFatalAlert((short)47);
      }
      if (TlsECCUtils.ʿ(paramHashtable) != null) {
        throw new TlsFatalAlert((short)47);
      }
      this.aSH = TlsECCUtils.ˈ(paramHashtable);
      if ((this.aSH != null) && (!TlsECCUtils.ᒪ(this.aSI))) {
        throw new TlsFatalAlert((short)47);
      }
    }
  }
  
  public void ˊ(NewSessionTicket paramNewSessionTicket) {}
  
  public void ˊ(ProtocolVersion paramProtocolVersion)
  {
    if (!lC().ˏ(paramProtocolVersion)) {
      throw new TlsFatalAlert((short)70);
    }
  }
  
  public void ˋ(short paramShort)
  {
    this.aSJ = paramShort;
  }
  
  public void ˎ(Vector paramVector)
  {
    if (paramVector != null) {
      throw new TlsFatalAlert((short)10);
    }
  }
  
  public void τ(int paramInt)
  {
    this.aSI = paramInt;
  }
  
  public void ᵛ(byte[] paramArrayOfByte) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AbstractTlsClient
 * JD-Core Version:    0.7.0.1
 */