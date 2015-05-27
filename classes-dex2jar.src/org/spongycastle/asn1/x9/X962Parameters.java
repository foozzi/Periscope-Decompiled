package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;

public class X962Parameters
  extends ASN1Object
  implements ASN1Choice
{
  private ASN1Primitive aDv = null;
  
  public X962Parameters(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    this.aDv = paramASN1ObjectIdentifier;
  }
  
  public X962Parameters(ASN1Primitive paramASN1Primitive)
  {
    this.aDv = paramASN1Primitive;
  }
  
  public X962Parameters(X9ECParameters paramX9ECParameters)
  {
    this.aDv = paramX9ECParameters.ez();
  }
  
  public static X962Parameters ⅼ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof X962Parameters))) {
      return (X962Parameters)paramObject;
    }
    if ((paramObject instanceof ASN1Primitive)) {
      return new X962Parameters((ASN1Primitive)paramObject);
    }
    throw new IllegalArgumentException("unknown object in getInstance()");
  }
  
  public ASN1Primitive ez()
  {
    return this.aDv;
  }
  
  public boolean gA()
  {
    return this.aDv instanceof ASN1ObjectIdentifier;
  }
  
  public boolean is()
  {
    return this.aDv instanceof ASN1Null;
  }
  
  public ASN1Primitive it()
  {
    return this.aDv;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962Parameters
 * JD-Core Version:    0.7.0.1
 */