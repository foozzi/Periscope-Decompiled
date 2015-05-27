package org.spongycastle.crypto.agreement.kdf;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.crypto.DerivationParameters;

public class DHKDFParameters
  implements DerivationParameters
{
  private ASN1ObjectIdentifier aCT;
  private byte[] aFF;
  private byte[] aFG;
  private int ahI;
  
  public DHKDFParameters(ASN1ObjectIdentifier paramASN1ObjectIdentifier, int paramInt, byte[] paramArrayOfByte)
  {
    this(paramASN1ObjectIdentifier, paramInt, paramArrayOfByte, null);
  }
  
  public DHKDFParameters(ASN1ObjectIdentifier paramASN1ObjectIdentifier, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.aCT = paramASN1ObjectIdentifier;
    this.ahI = paramInt;
    this.aFF = paramArrayOfByte1;
    this.aFG = paramArrayOfByte2;
  }
  
  public ASN1ObjectIdentifier fK()
  {
    return this.aCT;
  }
  
  public int getKeySize()
  {
    return this.ahI;
  }
  
  public byte[] iQ()
  {
    return this.aFF;
  }
  
  public byte[] iR()
  {
    return this.aFG;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.kdf.DHKDFParameters
 * JD-Core Version:    0.7.0.1
 */