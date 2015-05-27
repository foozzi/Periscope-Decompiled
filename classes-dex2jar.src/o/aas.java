package o;

import java.nio.ByteBuffer;
import java.util.Collections;

public class aas
  extends aav
{
  private boolean buG = false;
  private int buH;
  private int buI;
  
  public aas(int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    super(paramInt1, "audio/mp4a-latm", paramString);
    this.buH = paramInt2;
    this.buI = paramInt3;
  }
  
  public static byte[] 丶(String paramString)
  {
    int j = paramString.length();
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (i < j)
    {
      arrayOfByte[(i / 2)] = ((byte)((Character.digit(paramString.charAt(i), 16) << 4) + Character.digit(paramString.charAt(i + 1), 16)));
      i += 2;
    }
    return arrayOfByte;
  }
  
  public int ˊ(int paramInt, long paramLong, م paramم, ڋ paramڋ, boolean paramBoolean)
  {
    if (paramBoolean) {
      return -2;
    }
    byte[] arrayOfByte = 丶(this.buW);
    if (!this.buG)
    {
      paramم.ry = ب.ˋ("audio/mp4a-latm", 0, this.buH, this.buI, Collections.singletonList(arrayOfByte));
      this.buG = true;
      return -4;
    }
    for (;;)
    {
      paramم = vM();
      if (paramم == null) {
        break;
      }
      arrayOfByte = paramم.Br().buffer;
      paramInt = paramم.Br().length;
      if (arrayOfByte[1] == 1)
      {
        paramInt -= 2;
        if (paramڋ.ko.capacity() < paramInt) {
          paramڋ.ʶ(paramInt);
        }
        paramڋ.ko.put(arrayOfByte, 2, paramInt);
        paramڋ.size = paramInt;
        paramڋ.sJ = (paramم.getTime() * 1000L);
        paramڋ.flags = 1;
        this.buM.ˎ(paramم);
        return -3;
      }
    }
    return -2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aas
 * JD-Core Version:    0.7.0.1
 */