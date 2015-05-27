package org.spongycastle.crypto.tls;

public abstract class AbstractTlsPeer
  implements TlsPeer
{
  public void ˊ(short paramShort1, short paramShort2) {}
  
  public void ˊ(short paramShort1, short paramShort2, String paramString, Exception paramException) {}
  
  public void ﹲ(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new TlsFatalAlert((short)40);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AbstractTlsPeer
 * JD-Core Version:    0.7.0.1
 */