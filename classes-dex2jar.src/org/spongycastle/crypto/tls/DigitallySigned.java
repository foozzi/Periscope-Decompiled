package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;

public class DigitallySigned
{
  protected SignatureAndHashAlgorithm aTM;
  protected byte[] aiG;
  
  public DigitallySigned(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("'signature' cannot be null");
    }
    this.aTM = paramSignatureAndHashAlgorithm;
    this.aiG = paramArrayOfByte;
  }
  
  public static DigitallySigned ˋ(TlsContext paramTlsContext, InputStream paramInputStream)
  {
    SignatureAndHashAlgorithm localSignatureAndHashAlgorithm = null;
    if (TlsUtils.ᐝ(paramTlsContext)) {
      localSignatureAndHashAlgorithm = SignatureAndHashAlgorithm.ᐧ(paramInputStream);
    }
    return new DigitallySigned(localSignatureAndHashAlgorithm, TlsUtils.ᴵ(paramInputStream));
  }
  
  public void encode(OutputStream paramOutputStream)
  {
    if (this.aTM != null) {
      this.aTM.encode(paramOutputStream);
    }
    TlsUtils.ˎ(this.aiG, paramOutputStream);
  }
  
  public byte[] getSignature()
  {
    return this.aiG;
  }
  
  public SignatureAndHashAlgorithm mm()
  {
    return this.aTM;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DigitallySigned
 * JD-Core Version:    0.7.0.1
 */