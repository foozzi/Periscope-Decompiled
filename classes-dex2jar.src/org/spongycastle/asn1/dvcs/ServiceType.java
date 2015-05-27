package org.spongycastle.asn1.dvcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

public class ServiceType
  extends ASN1Object
{
  public static final ServiceType aiw = new ServiceType(1);
  public static final ServiceType aix = new ServiceType(2);
  public static final ServiceType aiy = new ServiceType(3);
  public static final ServiceType aiz = new ServiceType(4);
  private ASN1Enumerated aiA;
  
  public ServiceType(int paramInt)
  {
    this.aiA = new ASN1Enumerated(paramInt);
  }
  
  public BigInteger eA()
  {
    return this.aiA.eA();
  }
  
  public ASN1Primitive ez()
  {
    return this.aiA;
  }
  
  public String toString()
  {
    int i = this.aiA.eA().intValue();
    StringBuilder localStringBuilder = new StringBuilder().append("").append(i);
    String str;
    if (i == aiw.eA().intValue()) {
      str = "(CPD)";
    } else if (i == aix.eA().intValue()) {
      str = "(VSD)";
    } else if (i == aiy.eA().intValue()) {
      str = "(VPKC)";
    } else if (i == aiz.eA().intValue()) {
      str = "(CCPD)";
    } else {
      str = "?";
    }
    return str;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.ServiceType
 * JD-Core Version:    0.7.0.1
 */