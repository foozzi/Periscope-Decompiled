package o;

import java.io.Flushable;
import java.io.InputStream;
import java.io.OutputStream;

final class ɤ
  implements Flushable
{
  private final byte[] buffer;
  private final int limit;
  private final OutputStream nx;
  private int position;
  
  private ɤ(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    this.nx = paramOutputStream;
    this.buffer = paramArrayOfByte;
    this.position = 0;
    this.limit = paramArrayOfByte.length;
  }
  
  public static int ǃ(int paramInt1, int paramInt2)
  {
    return ﯾ(paramInt1) + 丶(paramInt2);
  }
  
  public static int ʲ(int paramInt1, int paramInt2)
  {
    return ﯾ(paramInt1) + ﭔ(paramInt2);
  }
  
  public static int ʾ(long paramLong)
  {
    if ((0xFFFFFF80 & paramLong) == 0L) {
      return 1;
    }
    if ((0xFFFFC000 & paramLong) == 0L) {
      return 2;
    }
    if ((0xFFE00000 & paramLong) == 0L) {
      return 3;
    }
    if ((0xF0000000 & paramLong) == 0L) {
      return 4;
    }
    if ((0x0 & paramLong) == 0L) {
      return 5;
    }
    if ((0x0 & paramLong) == 0L) {
      return 6;
    }
    if ((0x0 & paramLong) == 0L) {
      return 7;
    }
    if ((0x0 & paramLong) == 0L) {
      return 8;
    }
    if ((0x0 & paramLong) == 0L) {
      return 9;
    }
    return 10;
  }
  
  public static ɤ ˊ(OutputStream paramOutputStream, int paramInt)
  {
    return new ɤ(paramOutputStream, new byte[paramInt]);
  }
  
  public static int ˋ(int paramInt, float paramFloat)
  {
    return ﯾ(paramInt) + ـ(paramFloat);
  }
  
  public static int ˋ(int paramInt, long paramLong)
  {
    return ﯾ(paramInt) + ͺ(paramLong);
  }
  
  public static int ˋ(int paramInt, ŧ paramŧ)
  {
    return ﯾ(paramInt) + ˋ(paramŧ);
  }
  
  public static int ˋ(ŧ paramŧ)
  {
    return ﺗ(paramŧ.size()) + paramŧ.size();
  }
  
  public static ɤ ˏ(OutputStream paramOutputStream)
  {
    return ˊ(paramOutputStream, 4096);
  }
  
  public static int ː(int paramInt1, int paramInt2)
  {
    return ﯾ(paramInt1) + ﭠ(paramInt2);
  }
  
  public static int ˣ(int paramInt1, int paramInt2)
  {
    return ﯾ(paramInt1) + ﯦ(paramInt2);
  }
  
  public static int ͺ(long paramLong)
  {
    return ʾ(paramLong);
  }
  
  public static int ـ(float paramFloat)
  {
    return 4;
  }
  
  public static int ـ(int paramInt, boolean paramBoolean)
  {
    return ﯾ(paramInt) + ᐠ(paramBoolean);
  }
  
  public static int ᐠ(boolean paramBoolean)
  {
    return 1;
  }
  
  public static int 丶(int paramInt)
  {
    if (paramInt >= 0) {
      return ﺗ(paramInt);
    }
    return 10;
  }
  
  public static int ﭔ(int paramInt)
  {
    return ﺗ(paramInt);
  }
  
  public static int ﭠ(int paramInt)
  {
    return 丶(paramInt);
  }
  
  private void ﮣ()
  {
    if (this.nx == null) {
      throw new ɤ.if();
    }
    this.nx.write(this.buffer, 0, this.position);
    this.position = 0;
  }
  
  public static int ﯦ(int paramInt)
  {
    return ﺗ(＿(paramInt));
  }
  
  public static int ﯾ(int paramInt)
  {
    return ﺗ(ᴢ.ۦ(paramInt, 0));
  }
  
  public static int ﺗ(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0) {
      return 1;
    }
    if ((paramInt & 0xFFFFC000) == 0) {
      return 2;
    }
    if ((0xFFE00000 & paramInt) == 0) {
      return 3;
    }
    if ((0xF0000000 & paramInt) == 0) {
      return 4;
    }
    return 5;
  }
  
  public static int ＿(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  public void flush()
  {
    if (this.nx != null) {
      ﮣ();
    }
  }
  
  public void ı(int paramInt1, int paramInt2)
  {
    ו(paramInt1, 0);
    ⅰ(paramInt2);
  }
  
  public void ʽ(long paramLong)
  {
    ι(paramLong);
  }
  
  public void ˉ(String paramString)
  {
    paramString = paramString.getBytes("UTF-8");
    ﹰ(paramString.length);
    ͺ(paramString);
  }
  
  public void ˊ(byte paramByte)
  {
    if (this.position == this.limit) {
      ﮣ();
    }
    byte[] arrayOfByte = this.buffer;
    int i = this.position;
    this.position = (i + 1);
    arrayOfByte[i] = paramByte;
  }
  
  public void ˊ(int paramInt, float paramFloat)
  {
    ו(paramInt, 5);
    ˑ(paramFloat);
  }
  
  public void ˊ(int paramInt, long paramLong)
  {
    ו(paramInt, 0);
    ʽ(paramLong);
  }
  
  public void ˊ(int paramInt, String paramString)
  {
    ו(paramInt, 2);
    ˉ(paramString);
  }
  
  public void ˊ(int paramInt, ŧ paramŧ)
  {
    ו(paramInt, 2);
    ˊ(paramŧ);
  }
  
  public void ˊ(ŧ paramŧ)
  {
    ﹰ(paramŧ.size());
    ˎ(paramŧ);
  }
  
  public void ˊ(ŧ paramŧ, int paramInt1, int paramInt2)
  {
    if (this.limit - this.position >= paramInt2)
    {
      paramŧ.ˊ(this.buffer, paramInt1, this.position, paramInt2);
      this.position += paramInt2;
      return;
    }
    int j = this.limit - this.position;
    paramŧ.ˊ(this.buffer, paramInt1, this.position, j);
    int i = paramInt1 + j;
    paramInt1 = paramInt2 - j;
    this.position = this.limit;
    ﮣ();
    if (paramInt1 <= this.limit)
    {
      paramŧ.ˊ(this.buffer, i, 0, paramInt1);
      this.position = paramInt1;
      return;
    }
    paramŧ = paramŧ.ﮊ();
    if (i != paramŧ.skip(i)) {
      throw new IllegalStateException("Skip failed.");
    }
    while (paramInt1 > 0)
    {
      paramInt2 = Math.min(paramInt1, this.limit);
      i = paramŧ.read(this.buffer, 0, paramInt2);
      if (i != paramInt2) {
        throw new IllegalStateException("Read failed.");
      }
      this.nx.write(this.buffer, 0, i);
      paramInt1 -= i;
    }
  }
  
  public void ˎ(ŧ paramŧ)
  {
    ˊ(paramŧ, 0, paramŧ.size());
  }
  
  public void ˎ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.limit - this.position >= paramInt2)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buffer, this.position, paramInt2);
      this.position += paramInt2;
      return;
    }
    int i = this.limit - this.position;
    System.arraycopy(paramArrayOfByte, paramInt1, this.buffer, this.position, i);
    paramInt1 += i;
    paramInt2 -= i;
    this.position = this.limit;
    ﮣ();
    if (paramInt2 <= this.limit)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buffer, 0, paramInt2);
      this.position = paramInt2;
      return;
    }
    this.nx.write(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void ˑ(float paramFloat)
  {
    ﻳ(Float.floatToRawIntBits(paramFloat));
  }
  
  public void ˑ(int paramInt, boolean paramBoolean)
  {
    ו(paramInt, 0);
    ۥ(paramBoolean);
  }
  
  public void ͺ(byte[] paramArrayOfByte)
  {
    ˎ(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void ו(int paramInt1, int paramInt2)
  {
    ﹰ(ᴢ.ۦ(paramInt1, paramInt2));
  }
  
  public void ۥ(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    ﯩ(i);
  }
  
  public void ᵋ(int paramInt1, int paramInt2)
  {
    ו(paramInt1, 0);
    ᵤ(paramInt2);
  }
  
  public void ᵗ(int paramInt1, int paramInt2)
  {
    ו(paramInt1, 0);
    ⁿ(paramInt2);
  }
  
  public void ᵤ(int paramInt)
  {
    if (paramInt >= 0)
    {
      ﹰ(paramInt);
      return;
    }
    ι(paramInt);
  }
  
  public void ι(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFF80 & paramLong) == 0L)
      {
        ﯩ((int)paramLong);
        return;
      }
      ﯩ((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public void ⁿ(int paramInt)
  {
    ﹰ(paramInt);
  }
  
  public void Ⅰ(int paramInt)
  {
    ᵤ(paramInt);
  }
  
  public void ⅰ(int paramInt)
  {
    ﹰ(＿(paramInt));
  }
  
  public void ﯩ(int paramInt)
  {
    ˊ((byte)paramInt);
  }
  
  public void ﹰ(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        ﯩ(paramInt);
        return;
      }
      ﯩ(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public void ﻳ(int paramInt)
  {
    ﯩ(paramInt & 0xFF);
    ﯩ(paramInt >> 8 & 0xFF);
    ﯩ(paramInt >> 16 & 0xFF);
    ﯩ(paramInt >> 24 & 0xFF);
  }
  
  public void ﾟ(int paramInt1, int paramInt2)
  {
    ו(paramInt1, 0);
    Ⅰ(paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É¤
 * JD-Core Version:    0.7.0.1
 */