package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

public class PKIStatus
  extends ASN1Object
{
  public static final PKIStatus adH = new PKIStatus(0);
  public static final PKIStatus adI = new PKIStatus(1);
  public static final PKIStatus adJ = new PKIStatus(2);
  public static final PKIStatus adK = new PKIStatus(3);
  public static final PKIStatus adL = new PKIStatus(4);
  public static final PKIStatus adM = new PKIStatus(5);
  public static final PKIStatus adN = new PKIStatus(6);
  private ASN1Integer adO;
  
  private PKIStatus(int paramInt)
  {
    this(new ASN1Integer(paramInt));
  }
  
  private PKIStatus(ASN1Integer paramASN1Integer)
  {
    this.adO = paramASN1Integer;
  }
  
  public ASN1Primitive ez()
  {
    return this.adO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.PKIStatus
 * JD-Core Version:    0.7.0.1
 */