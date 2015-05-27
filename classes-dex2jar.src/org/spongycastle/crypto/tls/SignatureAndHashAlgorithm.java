package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;

public class SignatureAndHashAlgorithm
{
  protected short aUG;
  protected short aUH;
  
  public SignatureAndHashAlgorithm(short paramShort1, short paramShort2)
  {
    if (!TlsUtils.ʽ(paramShort1)) {
      throw new IllegalArgumentException("'hash' should be a uint8");
    }
    if (!TlsUtils.ʽ(paramShort2)) {
      throw new IllegalArgumentException("'signature' should be a uint8");
    }
    if (paramShort2 == 0) {
      throw new IllegalArgumentException("'signature' MUST NOT be \"anonymous\"");
    }
    this.aUG = paramShort1;
    this.aUH = paramShort2;
  }
  
  public static SignatureAndHashAlgorithm ᐧ(InputStream paramInputStream)
  {
    return new SignatureAndHashAlgorithm(TlsUtils.ﾞ(paramInputStream), TlsUtils.ﾞ(paramInputStream));
  }
  
  public void encode(OutputStream paramOutputStream)
  {
    TlsUtils.ˊ(mK(), paramOutputStream);
    TlsUtils.ˊ(mL(), paramOutputStream);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof SignatureAndHashAlgorithm)) {
      return false;
    }
    paramObject = (SignatureAndHashAlgorithm)paramObject;
    return (paramObject.mK() == mK()) && (paramObject.mL() == mL());
  }
  
  public int hashCode()
  {
    return mK() << 16 | mL();
  }
  
  public short mK()
  {
    return this.aUG;
  }
  
  public short mL()
  {
    return this.aUH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.SignatureAndHashAlgorithm
 * JD-Core Version:    0.7.0.1
 */