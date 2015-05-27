package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1Integer;

public class SubsequentMessage
  extends ASN1Integer
{
  public static final SubsequentMessage agS = new SubsequentMessage(0);
  public static final SubsequentMessage agT = new SubsequentMessage(1);
  
  private SubsequentMessage(int paramInt)
  {
    super(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.SubsequentMessage
 * JD-Core Version:    0.7.0.1
 */