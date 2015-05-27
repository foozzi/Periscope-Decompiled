package org.spongycastle.asn1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

public class ASN1GeneralizedTime
  extends ASN1Primitive
{
  private byte[] aam;
  
  public ASN1GeneralizedTime(String paramString)
  {
    this.aam = Strings.Ϊ(paramString);
    try
    {
      getDate();
      return;
    }
    catch (ParseException paramString)
    {
      throw new IllegalArgumentException("invalid date string: " + paramString.getMessage());
    }
  }
  
  ASN1GeneralizedTime(byte[] paramArrayOfByte)
  {
    this.aam = paramArrayOfByte;
  }
  
  private String eC()
  {
    String str = "+";
    TimeZone localTimeZone = TimeZone.getDefault();
    int j = localTimeZone.getRawOffset();
    int i = j;
    if (j < 0)
    {
      str = "-";
      i = -j;
    }
    j = i / 3600000;
    int k = (i - j * 60 * 60 * 1000) / 60000;
    i = j;
    try
    {
      if (localTimeZone.useDaylightTime())
      {
        i = j;
        if (localTimeZone.inDaylightTime(getDate()))
        {
          boolean bool = str.equals("+");
          if (bool) {
            i = 1;
          } else {
            i = -1;
          }
          i += j;
        }
      }
    }
    catch (ParseException localParseException)
    {
      i = j;
    }
    return "GMT" + str + ˠ(i) + ":" + ˠ(k);
  }
  
  private boolean eD()
  {
    int i = 0;
    while (i != this.aam.length)
    {
      if ((this.aam[i] == 46) && (i == 14)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private String ˠ(int paramInt)
  {
    if (paramInt < 10) {
      return "0" + paramInt;
    }
    return Integer.toString(paramInt);
  }
  
  public static ASN1GeneralizedTime ᵥ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1GeneralizedTime))) {
      return (ASN1GeneralizedTime)paramObject;
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = (ASN1GeneralizedTime)ՙ((byte[])paramObject);
        return paramObject;
      }
      catch (Exception paramObject)
      {
        throw new IllegalArgumentException("encoding error in getInstance: " + paramObject.toString());
      }
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  public String eB()
  {
    String str = Strings.ї(this.aam);
    if (str.charAt(str.length() - 1) == 'Z') {
      return str.substring(0, str.length() - 1) + "GMT+00:00";
    }
    int i = str.length() - 5;
    int j = str.charAt(i);
    if ((j == 45) || (j == 43)) {
      return str.substring(0, i) + "GMT" + str.substring(i, i + 3) + ":" + str.substring(i + 3);
    }
    i = str.length() - 3;
    j = str.charAt(i);
    if ((j == 45) || (j == 43)) {
      return str.substring(0, i) + "GMT" + str.substring(i) + ":00";
    }
    return str + eC();
  }
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    int i = this.aam.length;
    return StreamUtil.х(i) + 1 + i;
  }
  
  public Date getDate()
  {
    Object localObject1 = Strings.ї(this.aam);
    Object localObject2 = localObject1;
    SimpleDateFormat localSimpleDateFormat;
    if (((String)localObject1).endsWith("Z"))
    {
      if (eD()) {
        localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'");
      } else {
        localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
      }
      localSimpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
    }
    else if ((((String)localObject1).indexOf('-') > 0) || (((String)localObject1).indexOf('+') > 0))
    {
      localObject2 = eB();
      if (eD()) {
        localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSSz");
      } else {
        localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
      }
      localSimpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
    }
    else
    {
      if (eD()) {
        localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSS");
      } else {
        localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
      }
      localSimpleDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
    }
    localObject1 = localObject2;
    if (eD())
    {
      String str = ((String)localObject2).substring(14);
      int i = 1;
      while (i < str.length())
      {
        int j = str.charAt(i);
        if ((48 > j) || (j > 57)) {
          break;
        }
        i += 1;
      }
      if (i - 1 > 3)
      {
        localObject1 = str.substring(0, 4) + str.substring(i);
        localObject1 = ((String)localObject2).substring(0, 14) + (String)localObject1;
      }
      else if (i - 1 == 1)
      {
        localObject1 = str.substring(0, i) + "00" + str.substring(i);
        localObject1 = ((String)localObject2).substring(0, 14) + (String)localObject1;
      }
      else
      {
        localObject1 = localObject2;
        if (i - 1 == 2)
        {
          localObject1 = str.substring(0, i) + "0" + str.substring(i);
          localObject1 = ((String)localObject2).substring(0, 14) + (String)localObject1;
        }
      }
    }
    return localSimpleDateFormat.parse((String)localObject1);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(this.aam);
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.ˊ(24, this.aam);
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1GeneralizedTime)) {
      return false;
    }
    return Arrays.ﹺ(this.aam, ((ASN1GeneralizedTime)paramASN1Primitive).aam);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1GeneralizedTime
 * JD-Core Version:    0.7.0.1
 */