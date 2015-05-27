package org.spongycastle.jcajce.spec;

import javax.crypto.spec.PBEKeySpec;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class PBKDF2KeySpec
  extends PBEKeySpec
{
  private AlgorithmIdentifier aqo;
  
  public PBKDF2KeySpec(char[] paramArrayOfChar, byte[] paramArrayOfByte, int paramInt1, int paramInt2, AlgorithmIdentifier paramAlgorithmIdentifier)
  {
    super(paramArrayOfChar, paramArrayOfByte, paramInt1, paramInt2);
    this.aqo = paramAlgorithmIdentifier;
  }
  
  public AlgorithmIdentifier fS()
  {
    return this.aqo;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.spec.PBKDF2KeySpec
 * JD-Core Version:    0.7.0.1
 */