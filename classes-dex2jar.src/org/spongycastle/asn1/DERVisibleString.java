package org.spongycastle.asn1;

import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

public class DERVisibleString
  extends ASN1Primitive
  implements ASN1String
{
  private byte[] aas;
  
  DERVisibleString(byte[] paramArrayOfByte)
  {
    this.aas = paramArrayOfByte;
  }
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    return StreamUtil.х(this.aas.length) + 1 + this.aas.length;
  }
  
  public String getString()
  {
    return Strings.ї(this.aas);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(this.aas);
  }
  
  public String toString()
  {
    return getString();
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.ˊ(26, this.aas);
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERVisibleString)) {
      return false;
    }
    return Arrays.ﹺ(this.aas, ((DERVisibleString)paramASN1Primitive).aas);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERVisibleString
 * JD-Core Version:    0.7.0.1
 */