package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.DERBitString;

public class ReasonFlags
  extends DERBitString
{
  public ReasonFlags(DERBitString paramDERBitString)
  {
    super(paramDERBitString.getBytes(), paramDERBitString.ff());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.ReasonFlags
 * JD-Core Version:    0.7.0.1
 */