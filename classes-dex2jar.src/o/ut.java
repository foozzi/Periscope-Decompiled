package o;

import java.io.OutputStream;

final class ut
  implements uh
{
  public final ue ZT;
  public final uz ZU;
  private boolean closed;
  
  public ut(uz paramuz)
  {
    this(paramuz, new ue());
  }
  
  public ut(uz paramuz, ue paramue)
  {
    if (paramuz == null) {
      throw new IllegalArgumentException("sink == null");
    }
    this.ZT = paramue;
    this.ZU = paramuz;
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    Object localObject1 = null;
    try
    {
      if (this.ZT.size > 0L) {
        this.ZU.write(this.ZT, this.ZT.size);
      }
    }
    catch (Throwable localThrowable1) {}
    Object localObject2;
    try
    {
      this.ZU.close();
      localObject2 = localThrowable1;
    }
    catch (Throwable localThrowable2)
    {
      localObject2 = localThrowable1;
      if (localThrowable1 == null) {
        localObject2 = localThrowable2;
      }
    }
    this.closed = true;
    if (localObject2 != null) {
      vd.ʻ((Throwable)localObject2);
    }
  }
  
  public ue dS()
  {
    return this.ZT;
  }
  
  public OutputStream dT()
  {
    return new uu(this);
  }
  
  public uh dV()
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    long l = this.ZT.size();
    if (l > 0L) {
      this.ZU.write(this.ZT, l);
    }
    return this;
  }
  
  public uh eh()
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    long l = this.ZT.dY();
    if (l > 0L) {
      this.ZU.write(this.ZT, l);
    }
    return this;
  }
  
  public void flush()
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if (this.ZT.size > 0L) {
      this.ZU.write(this.ZT, this.ZT.size);
    }
    this.ZU.flush();
  }
  
  public vb timeout()
  {
    return this.ZU.timeout();
  }
  
  public String toString()
  {
    return "buffer(" + this.ZU + ")";
  }
  
  public void write(ue paramue, long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.write(paramue, paramLong);
    eh();
  }
  
  public uh ǀ(int paramInt)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ﾉ(paramInt);
    return eh();
  }
  
  public uh ǃ(long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ı(paramLong);
    return eh();
  }
  
  public uh ɔ(int paramInt)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ﻟ(paramInt);
    return eh();
  }
  
  public uh ɟ(int paramInt)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ﺜ(paramInt);
    return eh();
  }
  
  public uh ʲ(long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ﾟ(paramLong);
    return eh();
  }
  
  public long ˊ(va paramva)
  {
    if (paramva == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l1 = 0L;
    for (;;)
    {
      long l2 = paramva.read(this.ZT, 2048L);
      if (l2 == -1L) {
        break;
      }
      l1 += l2;
      eh();
    }
    return l1;
  }
  
  public uh ˋ(uj paramuj)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ˊ(paramuj);
    return eh();
  }
  
  public uh ˌ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ˉ(paramArrayOfByte, paramInt1, paramInt2);
    return eh();
  }
  
  public uh ː(long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ᵗ(paramLong);
    return eh();
  }
  
  public uh ᐧ(byte[] paramArrayOfByte)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ـ(paramArrayOfByte);
    return eh();
  }
  
  public uh ﹰ(String paramString)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.ZT.ﯾ(paramString);
    return eh();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ut
 * JD-Core Version:    0.7.0.1
 */