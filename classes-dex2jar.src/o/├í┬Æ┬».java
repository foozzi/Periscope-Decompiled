package o;

import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;

final class ᒯ
{
  private final ʎ uK;
  private final int uL;
  private final ᒯ.if uM;
  private final LinkedBlockingDeque<ɢ> uN;
  private final ᒯ.ˊ uO;
  private final প uP;
  private long uQ;
  private long uR;
  private ɢ uS;
  private int uT;
  
  public ᒯ(ʎ paramʎ)
  {
    this.uK = paramʎ;
    this.uL = paramʎ.ﾏ();
    this.uM = new ᒯ.if();
    this.uN = new LinkedBlockingDeque();
    this.uO = new ᒯ.ˊ(null);
    this.uP = new প(32);
    this.uT = this.uL;
  }
  
  private void ˊ(long paramLong, ByteBuffer paramByteBuffer, int paramInt)
  {
    while (paramInt > 0)
    {
      ﹶ(paramLong);
      int i = (int)(paramLong - this.uQ);
      int j = Math.min(paramInt, this.uL - i);
      ɢ localɢ = (ɢ)this.uN.peek();
      paramByteBuffer.put(localɢ.fw, localɢ.ｨ(i), j);
      paramLong += j;
      paramInt -= j;
    }
  }
  
  private void ˊ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      ﹶ(paramLong);
      int j = (int)(paramLong - this.uQ);
      int k = Math.min(paramInt - i, this.uL - j);
      ɢ localɢ = (ɢ)this.uN.peek();
      System.arraycopy(localɢ.fw, localɢ.ｨ(j), paramArrayOfByte, i, k);
      paramLong += k;
      i += k;
    }
  }
  
  private void ˊ(ڋ paramڋ, ᒯ.ˊ paramˊ)
  {
    long l = paramˊ.oR;
    ˊ(l, this.uP.fw, 1);
    l += 1L;
    int j = this.uP.fw[0];
    if ((j & 0x80) != 0) {
      i = 1;
    } else {
      i = 0;
    }
    j &= 0x7F;
    if (paramڋ.sI.iv == null) {
      paramڋ.sI.iv = new byte[16];
    }
    ˊ(l, paramڋ.sI.iv, j);
    l += j;
    if (i != 0)
    {
      ˊ(l, this.uP.fw, 2);
      l += 2L;
      this.uP.setPosition(0);
      j = this.uP.readUnsignedShort();
    }
    else
    {
      j = 1;
    }
    Object localObject2 = paramڋ.sI.numBytesOfClearData;
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (localObject2.length >= j) {}
    }
    else
    {
      localObject1 = new int[j];
    }
    int[] arrayOfInt = paramڋ.sI.numBytesOfEncryptedData;
    if (arrayOfInt != null)
    {
      localObject2 = arrayOfInt;
      if (arrayOfInt.length >= j) {}
    }
    else
    {
      localObject2 = new int[j];
    }
    if (i != 0)
    {
      i = j * 6;
      ˋ(this.uP, i);
      ˊ(l, this.uP.fw, i);
      l += i;
      this.uP.setPosition(0);
      i = 0;
      while (i < j)
      {
        localObject1[i] = this.uP.readUnsignedShort();
        localObject2[i] = this.uP.ѕ();
        i += 1;
      }
    }
    else
    {
      localObject1[0] = 0;
      localObject2[0] = (paramڋ.size - (int)(l - paramˊ.oR));
    }
    paramڋ.sI.set(j, (int[])localObject1, (int[])localObject2, paramˊ.ve, paramڋ.sI.iv, 1);
    int i = (int)(l - paramˊ.oR);
    paramˊ.oR += i;
    paramڋ.size -= i;
  }
  
  private static void ˋ(প paramপ, int paramInt)
  {
    if (paramপ.limit() < paramInt) {
      paramপ.ʻ(new byte[paramInt], paramInt);
    }
  }
  
  private void ᘢ()
  {
    if (this.uT == this.uL)
    {
      this.uT = 0;
      this.uS = this.uK.ｮ();
      this.uN.add(this.uS);
    }
  }
  
  private void ﹶ(long paramLong)
  {
    int j = (int)(paramLong - this.uQ) / this.uL;
    int i = 0;
    while (i < j)
    {
      this.uK.ˊ((ɢ)this.uN.remove());
      this.uQ += this.uL;
      i += 1;
    }
  }
  
  public void clear()
  {
    this.uM.clear();
    while (!this.uN.isEmpty()) {
      this.uK.ˊ((ɢ)this.uN.remove());
    }
    this.uQ = 0L;
    this.uR = 0L;
    this.uS = null;
    this.uT = this.uL;
  }
  
  public void ˊ(long paramLong1, int paramInt1, long paramLong2, int paramInt2, byte[] paramArrayOfByte)
  {
    this.uM.ˊ(paramLong1, paramInt1, paramLong2, paramInt2, paramArrayOfByte);
  }
  
  public int ˋ(ᒑ paramᒑ, int paramInt)
  {
    ᘢ();
    paramInt = Math.min(paramInt, this.uL - this.uT);
    paramᒑ.readFully(this.uS.fw, this.uS.ｨ(this.uT), paramInt);
    this.uT += paramInt;
    this.uR += paramInt;
    return paramInt;
  }
  
  public boolean ˋ(ڋ paramڋ)
  {
    return this.uM.ˋ(paramڋ, this.uO);
  }
  
  public void ˎ(প paramপ, int paramInt)
  {
    int i = paramInt;
    while (i > 0)
    {
      ᘢ();
      int j = Math.min(i, this.uL - this.uT);
      paramপ.ι(this.uS.fw, this.uS.ｨ(this.uT), j);
      this.uT += j;
      i -= j;
    }
    this.uR += paramInt;
  }
  
  public boolean ˎ(ڋ paramڋ)
  {
    if (!this.uM.ˋ(paramڋ, this.uO)) {
      return false;
    }
    if (paramڋ.ւ()) {
      ˊ(paramڋ, this.uO);
    }
    if ((paramڋ.ko == null) || (paramڋ.ko.capacity() < paramڋ.size)) {
      paramڋ.ʶ(paramڋ.size);
    }
    if (paramڋ.ko != null) {
      ˊ(this.uO.oR, paramڋ.ko, paramڋ.size);
    }
    ﹶ(this.uM.ᚁ());
    return true;
  }
  
  public void ᔫ()
  {
    ﹶ(this.uM.ᚁ());
  }
  
  public long ᘂ()
  {
    return this.uR;
  }
  
  public boolean ᴵ(long paramLong)
  {
    paramLong = this.uM.ﹺ(paramLong);
    if (paramLong == -1L) {
      return false;
    }
    ﹶ(paramLong);
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¯
 * JD-Core Version:    0.7.0.1
 */