package org.spongycastle.asn1;

import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

public class DERUTF8String
  extends ASN1Primitive
  implements ASN1String
{
  private byte[] aas;
  
  public DERUTF8String(String paramString)
  {
    this.aas = Strings.ɿ(paramString);
  }
  
  DERUTF8String(byte[] paramArrayOfByte)
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
    return Strings.і(this.aas);
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
    paramASN1OutputStream.ˊ(12, this.aas);
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERUTF8String)) {
      return false;
    }
    paramASN1Primitive = (DERUTF8String)paramASN1Primitive;
    return Arrays.ﹺ(this.aas, paramASN1Primitive.aas);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERUTF8String
 * JD-Core Version:    0.7.0.1
 */