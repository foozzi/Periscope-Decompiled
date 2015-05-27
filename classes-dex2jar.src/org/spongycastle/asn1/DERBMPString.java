package org.spongycastle.asn1;

import org.spongycastle.util.Arrays;

public class DERBMPString
  extends ASN1Primitive
  implements ASN1String
{
  private char[] aba;
  
  public DERBMPString(String paramString)
  {
    this.aba = paramString.toCharArray();
  }
  
  DERBMPString(char[] paramArrayOfChar)
  {
    this.aba = paramArrayOfChar;
  }
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    return StreamUtil.х(this.aba.length * 2) + 1 + this.aba.length * 2;
  }
  
  public String getString()
  {
    return new String(this.aba);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(this.aba);
  }
  
  public String toString()
  {
    return getString();
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.write(30);
    paramASN1OutputStream.Ί(this.aba.length * 2);
    int i = 0;
    while (i != this.aba.length)
    {
      int j = this.aba[i];
      paramASN1OutputStream.write((byte)(j >> 8));
      paramASN1OutputStream.write((byte)j);
      i += 1;
    }
  }
  
  protected boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERBMPString)) {
      return false;
    }
    paramASN1Primitive = (DERBMPString)paramASN1Primitive;
    return Arrays.ˊ(this.aba, paramASN1Primitive.aba);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERBMPString
 * JD-Core Version:    0.7.0.1
 */