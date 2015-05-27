package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.util.Arrays;

public class DERUniversalString
  extends ASN1Primitive
  implements ASN1String
{
  private static final char[] abb = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private byte[] aas;
  
  public DERUniversalString(byte[] paramArrayOfByte)
  {
    this.aas = paramArrayOfByte;
  }
  
  public byte[] eM()
  {
    return this.aas;
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
    StringBuffer localStringBuffer = new StringBuffer("#");
    Object localObject = new ByteArrayOutputStream();
    ASN1OutputStream localASN1OutputStream = new ASN1OutputStream((OutputStream)localObject);
    try
    {
      localASN1OutputStream.ˋ(this);
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("internal error encoding BitString");
    }
    localObject = ((ByteArrayOutputStream)localObject).toByteArray();
    int i = 0;
    while (i != localObject.length)
    {
      localIOException.append(abb[(localObject[i] >>> 4 & 0xF)]);
      localIOException.append(abb[(localObject[i] & 0xF)]);
      i += 1;
    }
    return localIOException.toString();
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
    paramASN1OutputStream.ˊ(28, eM());
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERUniversalString)) {
      return false;
    }
    return Arrays.ﹺ(this.aas, ((DERUniversalString)paramASN1Primitive).aas);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERUniversalString
 * JD-Core Version:    0.7.0.1
 */