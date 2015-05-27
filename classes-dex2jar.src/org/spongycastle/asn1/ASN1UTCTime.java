package org.spongycastle.asn1;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

public class ASN1UTCTime
  extends ASN1Primitive
{
  private byte[] aam;
  
  ASN1UTCTime(byte[] paramArrayOfByte)
  {
    this.aam = paramArrayOfByte;
  }
  
  public String eB()
  {
    String str3 = Strings.ї(this.aam);
    if ((str3.indexOf('-') < 0) && (str3.indexOf('+') < 0))
    {
      if (str3.length() == 11) {
        return str3.substring(0, 10) + "00GMT+00:00";
      }
      return str3.substring(0, 12) + "GMT+00:00";
    }
    int j = str3.indexOf('-');
    int i = j;
    if (j < 0) {
      i = str3.indexOf('+');
    }
    String str1 = str3;
    String str2 = str1;
    if (i == str3.length() - 3) {
      str2 = str1 + "00";
    }
    if (i == 10) {
      return str2.substring(0, 10) + "00GMT" + str2.substring(10, 13) + ":" + str2.substring(13, 15);
    }
    return str2.substring(0, 12) + "GMT" + str2.substring(12, 15) + ":" + str2.substring(15, 17);
  }
  
  public Date eZ()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
    localSimpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
    return localSimpleDateFormat.parse(fa());
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
  
  public String fa()
  {
    String str = eB();
    if (str.charAt(0) < '5') {
      return "20" + str;
    }
    return "19" + str;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(this.aam);
  }
  
  public String toString()
  {
    return Strings.ї(this.aam);
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.write(23);
    int j = this.aam.length;
    paramASN1OutputStream.Ί(j);
    int i = 0;
    while (i != j)
    {
      paramASN1OutputStream.write(this.aam[i]);
      i += 1;
    }
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1UTCTime)) {
      return false;
    }
    return Arrays.ﹺ(this.aam, ((ASN1UTCTime)paramASN1Primitive).aam);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1UTCTime
 * JD-Core Version:    0.7.0.1
 */