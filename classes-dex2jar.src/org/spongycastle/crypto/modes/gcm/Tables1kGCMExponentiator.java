package org.spongycastle.crypto.modes.gcm;

import java.util.Vector;
import org.spongycastle.util.Arrays;

public class Tables1kGCMExponentiator
  implements GCMExponentiator
{
  private Vector aPG;
  
  private void ʷ(int paramInt)
  {
    int i = this.aPG.size();
    if (i <= paramInt)
    {
      int[] arrayOfInt = (int[])this.aPG.elementAt(i - 1);
      int j;
      do
      {
        arrayOfInt = Arrays.י(arrayOfInt);
        GCMUtil.ˋ(arrayOfInt, arrayOfInt);
        this.aPG.addElement(arrayOfInt);
        j = i + 1;
        i = j;
      } while (j <= paramInt);
    }
  }
  
  public void init(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = GCMUtil.ᵋ(paramArrayOfByte);
    if ((this.aPG != null) && (Arrays.ՙ(paramArrayOfByte, (int[])this.aPG.elementAt(0)))) {
      return;
    }
    this.aPG = new Vector(8);
    this.aPG.addElement(paramArrayOfByte);
  }
  
  public void ˋ(long paramLong, byte[] paramArrayOfByte)
  {
    int[] arrayOfInt = GCMUtil.kn();
    int i = 0;
    while (paramLong > 0L)
    {
      if ((1L & paramLong) != 0L)
      {
        ʷ(i);
        GCMUtil.ˋ(arrayOfInt, (int[])this.aPG.elementAt(i));
      }
      i += 1;
      paramLong >>>= 1;
    }
    GCMUtil.ˊ(arrayOfInt, paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.gcm.Tables1kGCMExponentiator
 * JD-Core Version:    0.7.0.1
 */