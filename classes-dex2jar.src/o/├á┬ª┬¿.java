package o;

public final class ন
{
  private int Bo;
  private int Bp;
  public byte[] fw;
  
  public ন() {}
  
  public ন(byte[] paramArrayOfByte)
  {
    this.fw = paramArrayOfByte;
  }
  
  private int readUnsignedByte()
  {
    int i;
    if (this.Bp != 0) {
      i = (this.fw[this.Bo] & 0xFF) << this.Bp | (this.fw[(this.Bo + 1)] & 0xFF) >>> 8 - this.Bp;
    } else {
      i = this.fw[this.Bo];
    }
    this.Bo += 1;
    return i & 0xFF;
  }
  
  private int ɿ(int paramInt)
  {
    return this.fw[paramInt] & 0xFF;
  }
  
  private int λ()
  {
    int i = 0;
    while (!ʎ()) {
      i += 1;
    }
    int j;
    if (i > 0) {
      j = ɾ(i);
    } else {
      j = 0;
    }
    return (1 << i) - 1 + j;
  }
  
  public void setPosition(int paramInt)
  {
    this.Bo = (paramInt / 8);
    this.Bp = (paramInt - this.Bo * 8);
  }
  
  public void ɪ(int paramInt)
  {
    this.Bo += paramInt / 8;
    this.Bp += paramInt % 8;
    if (this.Bp > 7)
    {
      this.Bo += 1;
      this.Bp -= 8;
    }
  }
  
  public int ɾ(int paramInt)
  {
    if (paramInt == 0) {
      return 0;
    }
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (i >= 8)
    {
      i -= 8;
      paramInt |= readUnsignedByte() << i;
    }
    j = paramInt;
    if (i > 0)
    {
      j = this.Bp + i;
      i = (byte)(255 >> 8 - i);
      if (j > 8)
      {
        paramInt |= (ɿ(this.Bo) << j - 8 | ɿ(this.Bo + 1) >> 16 - j) & i;
        this.Bo += 1;
      }
      else
      {
        i = paramInt | ɿ(this.Bo) >> 8 - j & i;
        paramInt = i;
        if (j == 8)
        {
          this.Bo += 1;
          paramInt = i;
        }
      }
      this.Bp = (j % 8);
      j = paramInt;
    }
    return j;
  }
  
  public boolean ʎ()
  {
    return ɾ(1) == 1;
  }
  
  public int ʝ()
  {
    return λ();
  }
  
  public int ʭ()
  {
    int j = λ();
    int i;
    if (j % 2 == 0) {
      i = -1;
    } else {
      i = 1;
    }
    return i * ((j + 1) / 2);
  }
  
  public void ʾ(byte[] paramArrayOfByte)
  {
    this.fw = paramArrayOfByte;
    this.Bo = 0;
    this.Bp = 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¦¨
 * JD-Core Version:    0.7.0.1
 */