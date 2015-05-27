package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;

public abstract class ASN1Object
  implements ASN1Encodable
{
  public ASN1Primitive eJ()
  {
    return ez();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ASN1Encodable)) {
      return false;
    }
    paramObject = (ASN1Encodable)paramObject;
    return ez().equals(paramObject.ez());
  }
  
  public abstract ASN1Primitive ez();
  
  public byte[] getEncoded()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    new ASN1OutputStream(localByteArrayOutputStream).ˋ(this);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public byte[] getEncoded(String paramString)
  {
    if (paramString.equals("DER"))
    {
      paramString = new ByteArrayOutputStream();
      new DEROutputStream(paramString).ˋ(this);
      return paramString.toByteArray();
    }
    if (paramString.equals("DL"))
    {
      paramString = new ByteArrayOutputStream();
      new DLOutputStream(paramString).ˋ(this);
      return paramString.toByteArray();
    }
    return getEncoded();
  }
  
  public int hashCode()
  {
    return ez().hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1Object
 * JD-Core Version:    0.7.0.1
 */