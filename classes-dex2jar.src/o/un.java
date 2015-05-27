package o;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class un
  implements va
{
  private int ZM = 0;
  private final Inflater ZN;
  private final CRC32 crc = new CRC32();
  private final uo inflaterSource;
  private final ui source;
  
  public un(va paramva)
  {
    if (paramva == null) {
      throw new IllegalArgumentException("source == null");
    }
    this.ZN = new Inflater(true);
    this.source = up.ˋ(paramva);
    this.inflaterSource = new uo(this.source, this.ZN);
  }
  
  private void eo()
  {
    this.source.ᔇ(10L);
    int j = this.source.dS().ᔈ(3L);
    int i;
    if ((j >> 1 & 0x1) == 1) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      ˋ(this.source.dS(), 0L, 10L);
    }
    ˋ("ID1ID2", 8075, this.source.readShort());
    this.source.ᵋ(8L);
    if ((j >> 2 & 0x1) == 1)
    {
      this.source.ᔇ(2L);
      if (i != 0) {
        ˋ(this.source.dS(), 0L, 2L);
      }
      int k = this.source.dS().dZ();
      this.source.ᔇ(k);
      if (i != 0) {
        ˋ(this.source.dS(), 0L, k);
      }
      this.source.ᵋ(k);
    }
    long l;
    if ((j >> 3 & 0x1) == 1)
    {
      l = this.source.ʼ((byte)0);
      if (l == -1L) {
        throw new EOFException();
      }
      if (i != 0) {
        ˋ(this.source.dS(), 0L, l + 1L);
      }
      this.source.ᵋ(1L + l);
    }
    if ((j >> 4 & 0x1) == 1)
    {
      l = this.source.ʼ((byte)0);
      if (l == -1L) {
        throw new EOFException();
      }
      if (i != 0) {
        ˋ(this.source.dS(), 0L, l + 1L);
      }
      this.source.ᵋ(1L + l);
    }
    if (i != 0)
    {
      ˋ("FHCRC", this.source.dZ(), (short)(int)this.crc.getValue());
      this.crc.reset();
    }
  }
  
  private void ep()
  {
    ˋ("CRC", this.source.ea(), (int)this.crc.getValue());
    ˋ("ISIZE", this.source.ea(), this.ZN.getTotalOut());
  }
  
  private void ˋ(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 != paramInt1) {
      throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[] { paramString, Integer.valueOf(paramInt2), Integer.valueOf(paramInt1) }));
    }
  }
  
  private void ˋ(ue paramue, long paramLong1, long paramLong2)
  {
    Object localObject;
    long l1;
    long l2;
    for (paramue = paramue.ZG;; paramue = paramue.aaa)
    {
      localObject = paramue;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < paramue.limit - paramue.pos) {
        break;
      }
      paramLong1 -= paramue.limit - paramue.pos;
    }
    while (l2 > 0L)
    {
      int i = (int)(((ux)localObject).pos + l1);
      int j = (int)Math.min(((ux)localObject).limit - i, l2);
      this.crc.update(((ux)localObject).fw, i, j);
      l2 -= j;
      l1 = 0L;
      localObject = ((ux)localObject).aaa;
    }
  }
  
  public void close()
  {
    this.inflaterSource.close();
  }
  
  public long read(ue paramue, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (paramLong == 0L) {
      return 0L;
    }
    if (this.ZM == 0)
    {
      eo();
      this.ZM = 1;
    }
    if (this.ZM == 1)
    {
      long l = paramue.size;
      paramLong = this.inflaterSource.read(paramue, paramLong);
      if (paramLong != -1L)
      {
        ˋ(paramue, l, paramLong);
        return paramLong;
      }
      this.ZM = 2;
    }
    if (this.ZM == 2)
    {
      ep();
      this.ZM = 3;
      if (!this.source.dW()) {
        throw new IOException("gzip finished without exhausting source");
      }
    }
    return -1L;
  }
  
  public vb timeout()
  {
    return this.source.timeout();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.un
 * JD-Core Version:    0.7.0.1
 */