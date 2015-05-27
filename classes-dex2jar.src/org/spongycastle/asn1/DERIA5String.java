package org.spongycastle.asn1;

import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

public class DERIA5String
  extends ASN1Primitive
  implements ASN1String
{
  private byte[] aas;
  
  public DERIA5String(String paramString)
  {
    this(paramString, false);
  }
  
  public DERIA5String(String paramString, boolean paramBoolean)
  {
    if (paramString == null) {
      throw new NullPointerException("string cannot be null");
    }
    if ((paramBoolean) && (!Ɩ(paramString))) {
      throw new IllegalArgumentException("string contains illegal characters");
    }
    this.aas = Strings.Ϊ(paramString);
  }
  
  DERIA5String(byte[] paramArrayOfByte)
  {
    this.aas = paramArrayOfByte;
  }
  
  public static boolean Ɩ(String paramString)
  {
    int i = paramString.length() - 1;
    while (i >= 0)
    {
      if (paramString.charAt(i) > '') {
        return false;
      }
      i -= 1;
    }
    return true;
  }
  
  public static DERIA5String ˀ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof DERIA5String))) {
      return (DERIA5String)paramObject;
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = (DERIA5String)ՙ((byte[])paramObject);
        return paramObject;
      }
      catch (Exception paramObject)
      {
        throw new IllegalArgumentException("encoding error in getInstance: " + paramObject.toString());
      }
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  public static DERIA5String ͺ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    paramASN1TaggedObject = paramASN1TaggedObject.eY();
    if ((paramBoolean) || ((paramASN1TaggedObject instanceof DERIA5String))) {
      return ˀ(paramASN1TaggedObject);
    }
    return new DERIA5String(((ASN1OctetString)paramASN1TaggedObject).eM());
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
    paramASN1OutputStream.ˊ(22, this.aas);
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERIA5String)) {
      return false;
    }
    paramASN1Primitive = (DERIA5String)paramASN1Primitive;
    return Arrays.ﹺ(this.aas, paramASN1Primitive.aas);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERIA5String
 * JD-Core Version:    0.7.0.1
 */