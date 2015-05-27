package o;

final class ux
{
  boolean ZY;
  boolean ZZ;
  ux aaa;
  ux aab;
  final byte[] fw;
  int limit;
  int pos;
  
  ux()
  {
    this.fw = new byte[2048];
    this.ZZ = true;
    this.ZY = false;
  }
  
  ux(ux paramux)
  {
    this(paramux.fw, paramux.pos, paramux.limit);
    paramux.ZY = true;
  }
  
  ux(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.fw = paramArrayOfByte;
    this.pos = paramInt1;
    this.limit = paramInt2;
    this.ZZ = false;
    this.ZY = true;
  }
  
  public ux et()
  {
    ux localux;
    if (this.aaa != this) {
      localux = this.aaa;
    } else {
      localux = null;
    }
    this.aab.aaa = this.aaa;
    this.aaa.aab = this.aab;
    this.aaa = null;
    this.aab = null;
    return localux;
  }
  
  public void eu()
  {
    if (this.aab == this) {
      throw new IllegalStateException();
    }
    if (!this.aab.ZZ) {
      return;
    }
    int j = this.limit - this.pos;
    int k = this.aab.limit;
    int i;
    if (this.aab.ZY) {
      i = 0;
    } else {
      i = this.aab.pos;
    }
    if (j > 2048 - k + i) {
      return;
    }
    ˊ(this.aab, j);
    et();
    uy.ˋ(this);
  }
  
  public ux ɺ(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > this.limit - this.pos)) {
      throw new IllegalArgumentException();
    }
    ux localux = new ux(this);
    localux.limit = (localux.pos + paramInt);
    this.pos += paramInt;
    this.aab.ˊ(localux);
    return localux;
  }
  
  public ux ˊ(ux paramux)
  {
    paramux.aab = this;
    paramux.aaa = this.aaa;
    this.aaa.aab = paramux;
    this.aaa = paramux;
    return paramux;
  }
  
  public void ˊ(ux paramux, int paramInt)
  {
    if (!paramux.ZZ) {
      throw new IllegalArgumentException();
    }
    if (paramux.limit + paramInt > 2048)
    {
      if (paramux.ZY) {
        throw new IllegalArgumentException();
      }
      if (paramux.limit + paramInt - paramux.pos > 2048) {
        throw new IllegalArgumentException();
      }
      System.arraycopy(paramux.fw, paramux.pos, paramux.fw, 0, paramux.limit - paramux.pos);
      paramux.limit -= paramux.pos;
      paramux.pos = 0;
    }
    System.arraycopy(this.fw, this.pos, paramux.fw, paramux.limit, paramInt);
    paramux.limit += paramInt;
    this.pos += paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ux
 * JD-Core Version:    0.7.0.1
 */