package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

public class DHPublicKey
  extends ASN1Object
{
  private ASN1Integer ahC;
  
  public DHPublicKey(ASN1Integer paramASN1Integer)
  {
    if (paramASN1Integer == null) {
      throw new IllegalArgumentException("'y' cannot be null");
    }
    this.ahC = paramASN1Integer;
  }
  
  public static DHPublicKey ᴷ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof DHPublicKey))) {
      return (DHPublicKey)paramObject;
    }
    if ((paramObject instanceof ASN1Integer)) {
      return new DHPublicKey((ASN1Integer)paramObject);
    }
    throw new IllegalArgumentException("Invalid DHPublicKey: " + paramObject.getClass().getName());
  }
  
  public ASN1Primitive ez()
  {
    return this.ahC;
  }
  
  public ASN1Integer ip()
  {
    return this.ahC;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.DHPublicKey
 * JD-Core Version:    0.7.0.1
 */