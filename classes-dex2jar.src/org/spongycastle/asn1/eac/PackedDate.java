package org.spongycastle.asn1.eac;

import org.spongycastle.util.Arrays;

public class PackedDate
{
  private byte[] aam;
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PackedDate)) {
      return false;
    }
    paramObject = (PackedDate)paramObject;
    return Arrays.ﹺ(this.aam, paramObject.aam);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(this.aam);
  }
  
  public String toString()
  {
    char[] arrayOfChar = new char[this.aam.length];
    int i = 0;
    while (i != arrayOfChar.length)
    {
      arrayOfChar[i] = ((char)((this.aam[i] & 0xFF) + 48));
      i += 1;
    }
    return new String(arrayOfChar);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.PackedDate
 * JD-Core Version:    0.7.0.1
 */