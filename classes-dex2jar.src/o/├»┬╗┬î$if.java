package o;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;

abstract class ﻌ$if
{
  private int ET;
  
  protected ﻌ$if(byte[] paramArrayOfByte)
  {
    boolean bool;
    if (paramArrayOfByte.length == 25) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˏ(bool, "cert hash data has incorrect length");
    this.ET = Arrays.hashCode(paramArrayOfByte);
  }
  
  protected static byte[] ᒽ(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("ISO-8859-1");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof if))) {
      return false;
    }
    paramObject = (if)paramObject;
    return Arrays.equals(getBytes(), paramObject.getBytes());
  }
  
  abstract byte[] getBytes();
  
  public int hashCode()
  {
    return this.ET;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï».if
 * JD-Core Version:    0.7.0.1
 */