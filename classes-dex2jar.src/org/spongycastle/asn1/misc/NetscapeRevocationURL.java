package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.DERIA5String;

public class NetscapeRevocationURL
  extends DERIA5String
{
  public NetscapeRevocationURL(DERIA5String paramDERIA5String)
  {
    super(paramDERIA5String.getString());
  }
  
  public String toString()
  {
    return "NetscapeRevocationURL: " + getString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.misc.NetscapeRevocationURL
 * JD-Core Version:    0.7.0.1
 */