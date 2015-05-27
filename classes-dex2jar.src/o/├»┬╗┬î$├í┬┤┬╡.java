package o;

import java.lang.ref.WeakReference;

abstract class ﻌ$ᴵ
  extends ﻌ.if
{
  private static final WeakReference<byte[]> EX = new WeakReference(null);
  private WeakReference<byte[]> EW = EX;
  
  ﻌ$ᴵ(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  byte[] getBytes()
  {
    try
    {
      byte[] arrayOfByte2 = (byte[])this.EW.get();
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null)
      {
        arrayOfByte1 = 々();
        this.EW = new WeakReference(arrayOfByte1);
      }
      return arrayOfByte1;
    }
    finally {}
  }
  
  protected abstract byte[] 々();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï».á´µ
 * JD-Core Version:    0.7.0.1
 */