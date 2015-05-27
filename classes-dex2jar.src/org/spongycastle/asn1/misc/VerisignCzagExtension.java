package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.DERIA5String;

public class VerisignCzagExtension
  extends DERIA5String
{
  public VerisignCzagExtension(DERIA5String paramDERIA5String)
  {
    super(paramDERIA5String.getString());
  }
  
  public String toString()
  {
    return "VerisignCzagExtension: " + getString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.misc.VerisignCzagExtension
 * JD-Core Version:    0.7.0.1
 */