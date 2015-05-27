package o;

import java.io.InputStream;
import java.io.RandomAccessFile;

final class qu$ˊ
  extends InputStream
{
  private int gn;
  private int position;
  
  private qu$ˊ(qu paramqu, qu.if paramif)
  {
    this.position = qu.ˊ(paramqu, paramif.position + 4);
    this.gn = paramif.length;
  }
  
  public int read()
  {
    if (this.gn == 0) {
      return -1;
    }
    qu.ˊ(this.Wy).seek(this.position);
    int i = qu.ˊ(this.Wy).read();
    this.position = qu.ˊ(this.Wy, this.position + 1);
    this.gn -= 1;
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    qu.ˋ(paramArrayOfByte, "buffer");
    if (((paramInt1 | paramInt2) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    if (this.gn > 0)
    {
      int i = paramInt2;
      if (paramInt2 > this.gn) {
        i = this.gn;
      }
      qu.ˊ(this.Wy, this.position, paramArrayOfByte, paramInt1, i);
      this.position = qu.ˊ(this.Wy, this.position + i);
      this.gn -= i;
      return i;
    }
    return -1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qu.Ë
 * JD-Core Version:    0.7.0.1
 */