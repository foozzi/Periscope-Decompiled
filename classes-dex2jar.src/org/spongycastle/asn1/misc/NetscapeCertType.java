package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.DERBitString;

public class NetscapeCertType
  extends DERBitString
{
  public NetscapeCertType(DERBitString paramDERBitString)
  {
    super(paramDERBitString.getBytes(), paramDERBitString.ff());
  }
  
  public String toString()
  {
    return "NetscapeCertType: 0x" + Integer.toHexString(this.fw[0] & 0xFF);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.misc.NetscapeCertType
 * JD-Core Version:    0.7.0.1
 */