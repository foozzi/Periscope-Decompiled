package org.spongycastle.asn1.eac;

import java.util.Hashtable;

public class BidirectionalMap
  extends Hashtable
{
  Hashtable aiE = new Hashtable();
  
  public Object put(Object paramObject1, Object paramObject2)
  {
    this.aiE.put(paramObject2, paramObject1);
    return super.put(paramObject1, paramObject2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.BidirectionalMap
 * JD-Core Version:    0.7.0.1
 */