package org.spongycastle.asn1;

import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

public class DERPrintableString
  extends ASN1Primitive
  implements ASN1String
{
  private byte[] aas;
  
  public DERPrintableString(String paramString)
  {
    this(paramString, false);
  }
  
  public DERPrintableString(String paramString, boolean paramBoolean)
  {
    if ((paramBoolean) && (!ɹ(paramString))) {
      throw new IllegalArgumentException("string contains illegal characters");
    }
    this.aas = Strings.Ϊ(paramString);
  }
  
  DERPrintableString(byte[] paramArrayOfByte)
  {
    this.aas = paramArrayOfByte;
  }
  
  public static boolean ɹ(String paramString)
  {
    int i = paramString.length() - 1;
    while (i >= 0)
    {
      int j = paramString.charAt(i);
      if (j > 127) {
        return false;
      }
      if (((97 > j) || (j > 122)) && ((65 > j) || (j > 90)) && ((48 > j) || (j > 57)))
      {
        switch (j)
        {
        default: 
          break;
        case 32: 
        case 39: 
        case 40: 
        case 41: 
        case 43: 
        case 44: 
        case 45: 
        case 46: 
        case 47: 
        case 58: 
        case 61: 
        case 63: 
          break;
        }
        return false;
      }
      i -= 1;
    }
    return true;
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
    paramASN1OutputStream.ˊ(19, this.aas);
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERPrintableString)) {
      return false;
    }
    paramASN1Primitive = (DERPrintableString)paramASN1Primitive;
    return Arrays.ﹺ(this.aas, paramASN1Primitive.aas);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERPrintableString
 * JD-Core Version:    0.7.0.1
 */