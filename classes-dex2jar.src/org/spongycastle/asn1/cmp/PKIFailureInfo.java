package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.DERBitString;

public class PKIFailureInfo
  extends DERBitString
{
  public String toString()
  {
    return "PKIFailureInfo: 0x" + Integer.toHexString(intValue());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.PKIFailureInfo
 * JD-Core Version:    0.7.0.1
 */