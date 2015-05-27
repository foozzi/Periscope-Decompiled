package o;

import android.util.Pair;
import java.util.Collections;

class ᘢ
  extends ᚁ
{
  private long sJ;
  private int state = 0;
  private int wO;
  private long wQ;
  private final ন wV = new ন(new byte[7]);
  private boolean wW;
  private boolean wX;
  private boolean wY;
  private int ww;
  
  public ᘢ(ᒳ paramᒳ)
  {
    super(paramᒳ);
  }
  
  private boolean ˊ(প paramপ, byte[] paramArrayOfByte, int paramInt)
  {
    int i = Math.min(paramপ.ϋ(), paramInt - this.wO);
    paramপ.ι(paramArrayOfByte, this.wO, i);
    this.wO += i;
    return this.wO == paramInt;
  }
  
  private boolean ᐝ(প paramপ)
  {
    byte[] arrayOfByte = paramপ.fw;
    int i = paramপ.getPosition();
    int k = paramপ.limit();
    while (i < k)
    {
      boolean bool;
      if ((arrayOfByte[i] & 0xFF) == 255) {
        bool = true;
      } else {
        bool = false;
      }
      int j;
      if ((this.wW) && (!bool) && ((arrayOfByte[i] & 0xF0) == 240)) {
        j = 1;
      } else {
        j = 0;
      }
      this.wW = bool;
      if (j != 0)
      {
        if ((arrayOfByte[i] & 0x1) == 0) {
          bool = true;
        } else {
          bool = false;
        }
        this.wX = bool;
        paramপ.setPosition(i + 1);
        this.wW = false;
        return true;
      }
      i += 1;
    }
    paramপ.setPosition(k);
    return false;
  }
  
  private void Ḻ()
  {
    this.wV.setPosition(0);
    if (!this.wY)
    {
      int i = this.wV.ɾ(2);
      int j = this.wV.ɾ(4);
      this.wV.ɪ(1);
      Object localObject = ܐ.ʿ(i + 1, j, this.wV.ɾ(3));
      Pair localPair = ܐ.ι((byte[])localObject);
      localObject = ب.ˋ("audio/mp4a-latm", -1, ((Integer)localPair.second).intValue(), ((Integer)localPair.first).intValue(), Collections.singletonList(localObject));
      this.wQ = (1024000000L / ((ب)localObject).sF);
      this.wZ.ˊ((ب)localObject);
      this.wY = true;
    }
    else
    {
      this.wV.ɪ(10);
    }
    this.wV.ɪ(4);
    this.ww = (this.wV.ɾ(13) - 2 - 5);
    if (this.wX) {
      this.ww -= 2;
    }
  }
  
  public void ˊ(প paramপ, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {
      this.sJ = paramLong;
    }
    while (paramপ.ϋ() > 0)
    {
      int i;
      switch (this.state)
      {
      default: 
        break;
      case 0: 
        if (ᐝ(paramপ))
        {
          this.wO = 0;
          this.state = 1;
        }
        break;
      case 1: 
        if (this.wX) {
          i = 7;
        } else {
          i = 5;
        }
        if (ˊ(paramপ, this.wV.fw, i))
        {
          Ḻ();
          this.wO = 0;
          this.state = 2;
        }
        break;
      case 2: 
        i = Math.min(paramপ.ϋ(), this.ww - this.wO);
        this.wZ.ˊ(paramপ, i);
        this.wO += i;
        if (this.wO == this.ww)
        {
          this.wZ.ˊ(this.sJ, 1, this.ww, 0, null);
          this.sJ += this.wQ;
          this.wO = 0;
          this.state = 0;
        }
        break;
      }
    }
  }
  
  public void ᒮ()
  {
    this.state = 0;
    this.wO = 0;
    this.wW = false;
  }
  
  public void ᴫ() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¢
 * JD-Core Version:    0.7.0.1
 */