package org.spongycastle.asn1.x509;

import java.text.ParseException;
import java.util.Date;
import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1UTCTime;

public class Time
  extends ASN1Object
  implements ASN1Choice
{
  ASN1Primitive afW;
  
  public Time(ASN1Primitive paramASN1Primitive)
  {
    if ((!(paramASN1Primitive instanceof ASN1UTCTime)) && (!(paramASN1Primitive instanceof ASN1GeneralizedTime))) {
      throw new IllegalArgumentException("unknown object passed to Time");
    }
    this.afW = paramASN1Primitive;
  }
  
  public static Time ᒃ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof Time))) {
      return (Time)paramObject;
    }
    if ((paramObject instanceof ASN1UTCTime)) {
      return new Time((ASN1UTCTime)paramObject);
    }
    if ((paramObject instanceof ASN1GeneralizedTime)) {
      return new Time((ASN1GeneralizedTime)paramObject);
    }
    throw new IllegalArgumentException("unknown object in factory: " + paramObject.getClass().getName());
  }
  
  public String eB()
  {
    if ((this.afW instanceof ASN1UTCTime)) {
      return ((ASN1UTCTime)this.afW).fa();
    }
    return ((ASN1GeneralizedTime)this.afW).eB();
  }
  
  public ASN1Primitive ez()
  {
    return this.afW;
  }
  
  public Date getDate()
  {
    try
    {
      if ((this.afW instanceof ASN1UTCTime))
      {
        localDate = ((ASN1UTCTime)this.afW).eZ();
        return localDate;
      }
      Date localDate = ((ASN1GeneralizedTime)this.afW).getDate();
      return localDate;
    }
    catch (ParseException localParseException)
    {
      throw new IllegalStateException("invalid date string: " + localParseException.getMessage());
    }
  }
  
  public String toString()
  {
    return eB();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.Time
 * JD-Core Version:    0.7.0.1
 */