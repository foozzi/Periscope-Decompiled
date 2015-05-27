package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

class LazyConstructionEnumeration
  implements Enumeration
{
  private ASN1InputStream abv;
  private Object abw;
  
  public LazyConstructionEnumeration(byte[] paramArrayOfByte)
  {
    this.abv = new ASN1InputStream(paramArrayOfByte, true);
    this.abw = readObject();
  }
  
  private Object readObject()
  {
    try
    {
      ASN1Primitive localASN1Primitive = this.abv.eH();
      return localASN1Primitive;
    }
    catch (IOException localIOException)
    {
      throw new ASN1ParsingException("malformed DER construction: " + localIOException, localIOException);
    }
  }
  
  public boolean hasMoreElements()
  {
    return this.abw != null;
  }
  
  public Object nextElement()
  {
    Object localObject = this.abw;
    this.abw = readObject();
    return localObject;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.LazyConstructionEnumeration
 * JD-Core Version:    0.7.0.1
 */