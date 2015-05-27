package o;

import android.util.Log;

class Ỳ$ˊ
  extends Ỳ.ˎ
{
  private long sJ;
  private int state;
  private int wO;
  private final ন xC;
  private final ᚁ xD;
  private boolean xE;
  private boolean xF;
  private int xG;
  private int xH;
  
  public Ỳ$ˊ(Ỳ paramỲ, ᚁ paramᚁ)
  {
    super(null);
    this.xD = paramᚁ;
    this.xC = new ন(new byte[9]);
    this.state = 0;
  }
  
  private void setState(int paramInt)
  {
    this.state = paramInt;
    this.wO = 0;
  }
  
  private boolean ˊ(প paramপ, byte[] paramArrayOfByte, int paramInt)
  {
    int i = Math.min(paramপ.ϋ(), paramInt - this.wO);
    if (i <= 0) {
      return true;
    }
    if (paramArrayOfByte == null) {
      paramপ.ʰ(i);
    } else {
      paramপ.ι(paramArrayOfByte, this.wO, i);
    }
    this.wO += i;
    return this.wO == paramInt;
  }
  
  private boolean Ṫ()
  {
    this.xC.setPosition(0);
    int i = this.xC.ɾ(24);
    if (i != 1)
    {
      Log.w("TsExtractor", "Unexpected start code prefix: " + i);
      this.xH = -1;
      return false;
    }
    this.xC.ɪ(8);
    i = this.xC.ɾ(16);
    this.xC.ɪ(8);
    this.xF = this.xC.ʎ();
    this.xC.ɪ(7);
    this.xG = this.xC.ɾ(8);
    if (i == 0) {
      this.xH = -1;
    } else {
      this.xH = (i + 6 - 9 - this.xG);
    }
    return true;
  }
  
  private void Ỳ()
  {
    this.xC.setPosition(0);
    this.sJ = 0L;
    if (this.xF)
    {
      this.xC.ɪ(4);
      long l1 = this.xC.ɾ(3);
      this.xC.ɪ(1);
      long l2 = this.xC.ɾ(15) << 15;
      this.xC.ɪ(1);
      long l3 = this.xC.ɾ(15);
      this.xC.ɪ(1);
      this.sJ = this.xB.ˆ(l1 << 30 | l2 | l3);
    }
  }
  
  public void ˊ(প paramপ, boolean paramBoolean, ᒬ paramᒬ)
  {
    if (paramBoolean)
    {
      switch (this.state)
      {
      default: 
        break;
      case 0: 
      case 1: 
        break;
      case 2: 
        Log.w("TsExtractor", "Unexpected start indicator reading extended header");
        break;
      case 3: 
        if (this.xH != -1) {
          Log.w("TsExtractor", "Unexpected start indicator: expected " + this.xH + " more bytes");
        }
        if (this.xE) {
          this.xD.ᴫ();
        }
        break;
      }
      setState(1);
    }
    while (paramপ.ϋ() > 0)
    {
      int i;
      switch (this.state)
      {
      default: 
        break;
      case 0: 
        paramপ.ʰ(paramপ.ϋ());
        break;
      case 1: 
        if (ˊ(paramপ, this.xC.fw, 9))
        {
          if (Ṫ()) {
            i = 2;
          } else {
            i = 0;
          }
          setState(i);
        }
        break;
      case 2: 
        i = Math.min(5, this.xG);
        if ((ˊ(paramপ, this.xC.fw, i)) && (ˊ(paramপ, null, this.xG)))
        {
          Ỳ();
          this.xE = false;
          setState(3);
        }
        break;
      case 3: 
        int k = paramপ.ϋ();
        if (this.xH == -1) {
          i = 0;
        } else {
          i = k - this.xH;
        }
        int j = k;
        if (i > 0)
        {
          j = k - i;
          paramপ.ʟ(paramপ.getPosition() + j);
        }
        paramᒬ = this.xD;
        long l = this.sJ;
        if (!this.xE) {
          paramBoolean = true;
        } else {
          paramBoolean = false;
        }
        paramᒬ.ˊ(paramপ, l, paramBoolean);
        this.xE = true;
        if (this.xH != -1)
        {
          this.xH -= j;
          if (this.xH == 0)
          {
            this.xD.ᴫ();
            setState(1);
          }
        }
        break;
      }
    }
  }
  
  public void ᒮ()
  {
    this.state = 0;
    this.wO = 0;
    this.xE = false;
    this.xD.ᒮ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»².Ë
 * JD-Core Version:    0.7.0.1
 */