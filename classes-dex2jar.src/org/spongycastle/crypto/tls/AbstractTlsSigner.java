package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public abstract class AbstractTlsSigner
  implements TlsSigner
{
  protected TlsContext aSQ;
  
  public void ˊ(TlsContext paramTlsContext)
  {
    this.aSQ = paramTlsContext;
  }
  
  public byte[] ˊ(AsymmetricKeyParameter paramAsymmetricKeyParameter, byte[] paramArrayOfByte)
  {
    return ˊ(null, paramAsymmetricKeyParameter, paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AbstractTlsSigner
 * JD-Core Version:    0.7.0.1
 */