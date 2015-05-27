package org.spongycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

public class DLOutputStream
  extends ASN1OutputStream
{
  public DLOutputStream(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public void ˋ(ASN1Encodable paramASN1Encodable)
  {
    if (paramASN1Encodable != null)
    {
      paramASN1Encodable.ez().eP().ˊ(this);
      return;
    }
    throw new IOException("null object detected");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DLOutputStream
 * JD-Core Version:    0.7.0.1
 */