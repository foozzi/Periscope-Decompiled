package org.spongycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

public class DEROutputStream
  extends ASN1OutputStream
{
  public DEROutputStream(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  ASN1OutputStream eQ()
  {
    return this;
  }
  
  ASN1OutputStream eR()
  {
    return this;
  }
  
  public void ˋ(ASN1Encodable paramASN1Encodable)
  {
    if (paramASN1Encodable != null)
    {
      paramASN1Encodable.ez().eO().ˊ(this);
      return;
    }
    throw new IOException("null object detected");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DEROutputStream
 * JD-Core Version:    0.7.0.1
 */