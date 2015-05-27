package o;

import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class ue
  implements ui, uh, Cloneable
{
  private static final byte[] ZF = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  ux ZG;
  long size;
  
  public void clear()
  {
    try
    {
      ᵋ(this.size);
      return;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public void close() {}
  
  public ue dS()
  {
    return this;
  }
  
  public OutputStream dT()
  {
    return new uf(this);
  }
  
  public ue dU()
  {
    return this;
  }
  
  public uh dV()
  {
    return this;
  }
  
  public boolean dW()
  {
    return this.size == 0L;
  }
  
  public InputStream dX()
  {
    return new ug(this);
  }
  
  public long dY()
  {
    long l2 = this.size;
    if (l2 == 0L) {
      return 0L;
    }
    ux localux = this.ZG.aab;
    long l1 = l2;
    if (localux.limit < 2048)
    {
      l1 = l2;
      if (localux.ZZ) {
        l1 = l2 - (localux.limit - localux.pos);
      }
    }
    return l1;
  }
  
  public short dZ()
  {
    return vd.ˊ(readShort());
  }
  
  public int ea()
  {
    return vd.ɼ(readInt());
  }
  
  public long eb()
  {
    if (this.size == 0L) {
      throw new IllegalStateException("size == 0");
    }
    long l3 = 0L;
    int i1 = 0;
    int n = 0;
    int i = 0;
    long l2 = -7L;
    int m;
    int j;
    long l1;
    do
    {
      Object localObject = this.ZG;
      byte[] arrayOfByte = ((ux)localObject).fw;
      int k = ((ux)localObject).pos;
      int i3 = ((ux)localObject).limit;
      m = n;
      j = i1;
      l1 = l3;
      int i2;
      for (;;)
      {
        i2 = i;
        if (k >= i3) {
          break;
        }
        n = arrayOfByte[k];
        if ((n >= 48) && (n <= 57))
        {
          i1 = 48 - n;
          if ((l1 < -922337203685477580L) || ((l1 == -922337203685477580L) && (i1 < l2)))
          {
            localObject = new ue().ﾟ(l1).ﺜ(n);
            if (m == 0) {
              ((ue)localObject).readByte();
            }
            throw new NumberFormatException("Number too large: " + ((ue)localObject).ed());
          }
          l1 = l1 * 10L + i1;
        }
        else if ((n == 45) && (j == 0))
        {
          m = 1;
          l2 -= 1L;
        }
        else
        {
          if (j == 0) {
            throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(n));
          }
          i2 = 1;
          break;
        }
        k += 1;
        j += 1;
      }
      if (k == i3)
      {
        this.ZG = ((ux)localObject).et();
        uy.ˋ((ux)localObject);
      }
      else
      {
        ((ux)localObject).pos = k;
      }
      if (i2 != 0) {
        break;
      }
      l3 = l1;
      i1 = j;
      n = m;
      i = i2;
    } while (this.ZG != null);
    this.size -= j;
    if (m != 0) {
      return l1;
    }
    return -l1;
  }
  
  public long ec()
  {
    if (this.size == 0L) {
      throw new IllegalStateException("size == 0");
    }
    long l1 = 0L;
    int i = 0;
    int j = 0;
    int k;
    long l2;
    do
    {
      Object localObject = this.ZG;
      byte[] arrayOfByte = ((ux)localObject).fw;
      int m = ((ux)localObject).pos;
      int i1 = ((ux)localObject).limit;
      k = i;
      l2 = l1;
      int n;
      for (;;)
      {
        n = j;
        if (m >= i1) {
          break;
        }
        n = arrayOfByte[m];
        if ((n >= 48) && (n <= 57))
        {
          i = n - 48;
        }
        else if ((n >= 97) && (n <= 102))
        {
          i = n - 97 + 10;
        }
        else if ((n >= 65) && (n <= 70))
        {
          i = n - 65 + 10;
        }
        else
        {
          if (k == 0) {
            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(n));
          }
          n = 1;
          break;
        }
        if ((0x0 & l2) != 0L)
        {
          localObject = new ue().ı(l2).ﺜ(n);
          throw new NumberFormatException("Number too large: " + ((ue)localObject).ed());
        }
        l2 = l2 << 4 | i;
        m += 1;
        k += 1;
      }
      if (m == i1)
      {
        this.ZG = ((ux)localObject).et();
        uy.ˋ((ux)localObject);
      }
      else
      {
        ((ux)localObject).pos = m;
      }
      if (n != 0) {
        break;
      }
      l1 = l2;
      i = k;
      j = n;
    } while (this.ZG != null);
    this.size -= k;
    return l2;
  }
  
  public String ed()
  {
    try
    {
      String str = ˊ(this.size, vd.UTF_8);
      return str;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public String ee()
  {
    long l = ʼ((byte)10);
    if (l == -1L)
    {
      ue localue = new ue();
      ˊ(localue, 0L, Math.min(32L, this.size));
      throw new EOFException("\\n not found: size=" + size() + " content=" + localue.readByteString().el() + "...");
    }
    return ᴸ(l);
  }
  
  public byte[] ef()
  {
    try
    {
      byte[] arrayOfByte = ᵀ(this.size);
      return arrayOfByte;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public ue eg()
  {
    ue localue = new ue();
    if (this.size == 0L) {
      return localue;
    }
    localue.ZG = new ux(this.ZG);
    ux localux1 = localue.ZG;
    ux localux2 = localue.ZG;
    ux localux3 = localue.ZG;
    localux2.aab = localux3;
    localux1.aaa = localux3;
    for (localux1 = this.ZG.aaa; localux1 != this.ZG; localux1 = localux1.aaa) {
      localue.ZG.aab.ˊ(new ux(localux1));
    }
    localue.size = this.size;
    return localue;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ue)) {
      return false;
    }
    paramObject = (ue)paramObject;
    if (this.size != paramObject.size) {
      return false;
    }
    if (this.size == 0L) {
      return true;
    }
    Object localObject1 = this.ZG;
    paramObject = paramObject.ZG;
    int i = ((ux)localObject1).pos;
    int j = paramObject.pos;
    long l1 = 0L;
    while (l1 < this.size)
    {
      long l2 = Math.min(((ux)localObject1).limit - i, paramObject.limit - j);
      int m = 0;
      int k;
      for (;;)
      {
        k = j;
        j = i;
        if (m >= l2) {
          break;
        }
        localObject2 = ((ux)localObject1).fw;
        i = j + 1;
        int n = localObject2[j];
        localObject2 = paramObject.fw;
        j = k + 1;
        if (n != localObject2[k]) {
          return false;
        }
        m += 1;
      }
      Object localObject2 = localObject1;
      i = j;
      if (j == ((ux)localObject1).limit)
      {
        localObject2 = ((ux)localObject1).aaa;
        i = ((ux)localObject2).pos;
      }
      Object localObject3 = paramObject;
      j = k;
      if (k == paramObject.limit)
      {
        localObject3 = paramObject.aaa;
        j = ((ux)localObject3).pos;
      }
      l1 += l2;
      localObject1 = localObject2;
      paramObject = localObject3;
    }
    return true;
  }
  
  public void flush() {}
  
  public int hashCode()
  {
    Object localObject = this.ZG;
    if (localObject == null) {
      return 0;
    }
    int i = 1;
    int j;
    ux localux;
    do
    {
      int k = ((ux)localObject).pos;
      int m = ((ux)localObject).limit;
      j = i;
      while (k < m)
      {
        j = j * 31 + localObject.fw[k];
        k += 1;
      }
      localux = ((ux)localObject).aaa;
      localObject = localux;
      i = j;
    } while (localux != this.ZG);
    return j;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    vd.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    ux localux = this.ZG;
    if (localux == null) {
      return -1;
    }
    paramInt2 = Math.min(paramInt2, localux.limit - localux.pos);
    System.arraycopy(localux.fw, localux.pos, paramArrayOfByte, paramInt1, paramInt2);
    localux.pos += paramInt2;
    this.size -= paramInt2;
    if (localux.pos == localux.limit)
    {
      this.ZG = localux.et();
      uy.ˋ(localux);
    }
    return paramInt2;
  }
  
  public long read(ue paramue, long paramLong)
  {
    if (paramue == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.size == 0L) {
      return -1L;
    }
    long l = paramLong;
    if (paramLong > this.size) {
      l = this.size;
    }
    paramue.write(this, l);
    return l;
  }
  
  public byte readByte()
  {
    if (this.size == 0L) {
      throw new IllegalStateException("size == 0");
    }
    ux localux = this.ZG;
    int i = localux.pos;
    int j = localux.limit;
    byte[] arrayOfByte = localux.fw;
    int k = i + 1;
    byte b = arrayOfByte[i];
    this.size -= 1L;
    if (k == j)
    {
      this.ZG = localux.et();
      uy.ˋ(localux);
      return b;
    }
    localux.pos = k;
    return b;
  }
  
  public uj readByteString()
  {
    return new uj(ef());
  }
  
  public void readFully(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = read(paramArrayOfByte, i, paramArrayOfByte.length - i);
      if (j == -1) {
        throw new EOFException();
      }
      i += j;
    }
  }
  
  public int readInt()
  {
    if (this.size < 4L) {
      throw new IllegalStateException("size < 4: " + this.size);
    }
    ux localux = this.ZG;
    int j = localux.pos;
    int i = localux.limit;
    if (i - j < 4) {
      return (readByte() & 0xFF) << 24 | (readByte() & 0xFF) << 16 | (readByte() & 0xFF) << 8 | readByte() & 0xFF;
    }
    byte[] arrayOfByte = localux.fw;
    int k = j + 1;
    j = arrayOfByte[j];
    int n = k + 1;
    k = arrayOfByte[k];
    int m = n + 1;
    int i1 = arrayOfByte[n];
    n = m + 1;
    j = (j & 0xFF) << 24 | (k & 0xFF) << 16 | (i1 & 0xFF) << 8 | arrayOfByte[m] & 0xFF;
    this.size -= 4L;
    if (n == i)
    {
      this.ZG = localux.et();
      uy.ˋ(localux);
      return j;
    }
    localux.pos = n;
    return j;
  }
  
  public long readLong()
  {
    if (this.size < 8L) {
      throw new IllegalStateException("size < 8: " + this.size);
    }
    ux localux = this.ZG;
    int k = localux.pos;
    int i = localux.limit;
    if (i - k < 8) {
      return (readInt() & 0xFFFFFFFF) << 32 | readInt() & 0xFFFFFFFF;
    }
    byte[] arrayOfByte = localux.fw;
    int j = k + 1;
    long l1 = arrayOfByte[k];
    k = j + 1;
    long l2 = arrayOfByte[j];
    j = k + 1;
    long l3 = arrayOfByte[k];
    k = j + 1;
    long l4 = arrayOfByte[j];
    j = k + 1;
    long l5 = arrayOfByte[k];
    k = j + 1;
    long l6 = arrayOfByte[j];
    j = k + 1;
    long l7 = arrayOfByte[k];
    k = j + 1;
    l1 = (l1 & 0xFF) << 56 | (l2 & 0xFF) << 48 | (l3 & 0xFF) << 40 | (l4 & 0xFF) << 32 | (l5 & 0xFF) << 24 | (l6 & 0xFF) << 16 | (l7 & 0xFF) << 8 | arrayOfByte[j] & 0xFF;
    this.size -= 8L;
    if (k == i)
    {
      this.ZG = localux.et();
      uy.ˋ(localux);
      return l1;
    }
    localux.pos = k;
    return l1;
  }
  
  public short readShort()
  {
    if (this.size < 2L) {
      throw new IllegalStateException("size < 2: " + this.size);
    }
    ux localux = this.ZG;
    int k = localux.pos;
    int i = localux.limit;
    if (i - k < 2) {
      return (short)((readByte() & 0xFF) << 8 | readByte() & 0xFF);
    }
    byte[] arrayOfByte = localux.fw;
    int j = k + 1;
    k = arrayOfByte[k];
    int m = j + 1;
    j = arrayOfByte[j];
    this.size -= 2L;
    if (m == i)
    {
      this.ZG = localux.et();
      uy.ˋ(localux);
    }
    else
    {
      localux.pos = m;
    }
    return (short)((k & 0xFF) << 8 | j & 0xFF);
  }
  
  public long size()
  {
    return this.size;
  }
  
  public vb timeout()
  {
    return vb.NONE;
  }
  
  public String toString()
  {
    if (this.size == 0L) {
      return "Buffer[size=0]";
    }
    Object localObject;
    if (this.size <= 16L)
    {
      localObject = eg().readByteString();
      return String.format("Buffer[size=%s data=%s]", new Object[] { Long.valueOf(this.size), ((uj)localObject).el() });
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(this.ZG.fw, this.ZG.pos, this.ZG.limit - this.ZG.pos);
      for (localObject = this.ZG.aaa; localObject != this.ZG; localObject = ((ux)localObject).aaa) {
        localMessageDigest.update(((ux)localObject).fw, ((ux)localObject).pos, ((ux)localObject).limit - ((ux)localObject).pos);
      }
      localObject = String.format("Buffer[size=%s md5=%s]", new Object[] { Long.valueOf(this.size), uj.ᐨ(localMessageDigest.digest()).el() });
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new AssertionError();
    }
  }
  
  public void write(ue paramue, long paramLong)
  {
    if (paramue == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramue == this) {
      throw new IllegalArgumentException("source == this");
    }
    vd.checkOffsetAndCount(paramue.size, 0L, paramLong);
    while (paramLong > 0L)
    {
      if (paramLong < paramue.ZG.limit - paramue.ZG.pos)
      {
        if (this.ZG != null) {
          localux1 = this.ZG.aab;
        } else {
          localux1 = null;
        }
        if ((localux1 != null) && (localux1.ZZ))
        {
          l = localux1.limit;
          int i;
          if (localux1.ZY) {
            i = 0;
          } else {
            i = localux1.pos;
          }
          if (l + paramLong - i <= 2048L)
          {
            paramue.ZG.ˊ(localux1, (int)paramLong);
            paramue.size -= paramLong;
            this.size += paramLong;
            return;
          }
        }
        paramue.ZG = paramue.ZG.ɺ((int)paramLong);
      }
      ux localux1 = paramue.ZG;
      long l = localux1.limit - localux1.pos;
      paramue.ZG = localux1.et();
      if (this.ZG == null)
      {
        this.ZG = localux1;
        localux1 = this.ZG;
        ux localux2 = this.ZG;
        ux localux3 = this.ZG;
        localux2.aab = localux3;
        localux1.aaa = localux3;
      }
      else
      {
        this.ZG.aab.ˊ(localux1).eu();
      }
      paramue.size -= l;
      this.size += l;
      paramLong -= l;
    }
  }
  
  public ue ı(long paramLong)
  {
    if (paramLong == 0L) {
      return ﺜ(48);
    }
    int j = Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4 + 1;
    ux localux = ľ(j);
    byte[] arrayOfByte = localux.fw;
    int i = localux.limit + j - 1;
    int k = localux.limit;
    while (i >= k)
    {
      arrayOfByte[i] = ZF[((int)(0xF & paramLong))];
      paramLong >>>= 4;
      i -= 1;
    }
    localux.limit += j;
    this.size += j;
    return this;
  }
  
  ux ľ(int paramInt)
  {
    if ((paramInt < 1) || (paramInt > 2048)) {
      throw new IllegalArgumentException();
    }
    Object localObject;
    if (this.ZG == null)
    {
      this.ZG = uy.ev();
      localObject = this.ZG;
      localux1 = this.ZG;
      ux localux2 = this.ZG;
      localux1.aab = localux2;
      ((ux)localObject).aaa = localux2;
      return localux2;
    }
    ux localux1 = this.ZG.aab;
    if (localux1.limit + paramInt <= 2048)
    {
      localObject = localux1;
      if (localux1.ZZ) {}
    }
    else
    {
      localObject = localux1.ˊ(uy.ev());
    }
    return localObject;
  }
  
  public long ʼ(byte paramByte)
  {
    return ˊ(paramByte, 0L);
  }
  
  public ue ˉ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    vd.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      ux localux = ľ(1);
      int j = Math.min(i - paramInt1, 2048 - localux.limit);
      System.arraycopy(paramArrayOfByte, paramInt1, localux.fw, localux.limit, j);
      paramInt1 += j;
      localux.limit += j;
    }
    this.size += paramInt2;
    return this;
  }
  
  public long ˊ(byte paramByte, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("fromIndex < 0");
    }
    Object localObject1 = this.ZG;
    if (localObject1 == null) {
      return -1L;
    }
    long l1 = 0L;
    Object localObject2;
    do
    {
      int i = ((ux)localObject1).limit - ((ux)localObject1).pos;
      if (paramLong >= i)
      {
        paramLong -= i;
      }
      else
      {
        localObject2 = ((ux)localObject1).fw;
        paramLong = ((ux)localObject1).pos + paramLong;
        long l2 = ((ux)localObject1).limit;
        while (paramLong < l2)
        {
          if (localObject2[((int)paramLong)] == paramByte) {
            return l1 + paramLong - ((ux)localObject1).pos;
          }
          paramLong += 1L;
        }
        paramLong = 0L;
      }
      l1 += i;
      localObject2 = ((ux)localObject1).aaa;
      localObject1 = localObject2;
    } while (localObject2 != this.ZG);
    return -1L;
  }
  
  public long ˊ(va paramva)
  {
    if (paramva == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l2;
    for (long l1 = 0L;; l1 += l2)
    {
      l2 = paramva.read(this, 2048L);
      if (l2 == -1L) {
        break;
      }
    }
    return l1;
  }
  
  public String ˊ(long paramLong, Charset paramCharset)
  {
    vd.checkOffsetAndCount(this.size, 0L, paramLong);
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    if (paramLong == 0L) {
      return "";
    }
    ux localux = this.ZG;
    if (localux.pos + paramLong > localux.limit) {
      return new String(ᵀ(paramLong), paramCharset);
    }
    paramCharset = new String(localux.fw, localux.pos, (int)paramLong, paramCharset);
    localux.pos = ((int)(localux.pos + paramLong));
    this.size -= paramLong;
    if (localux.pos == localux.limit)
    {
      this.ZG = localux.et();
      uy.ˋ(localux);
    }
    return paramCharset;
  }
  
  public ue ˊ(String paramString, Charset paramCharset)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("string == null");
    }
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (paramCharset.equals(vd.UTF_8)) {
      return ﯾ(paramString);
    }
    paramString = paramString.getBytes(paramCharset);
    return ˉ(paramString, 0, paramString.length);
  }
  
  public ue ˊ(ue paramue, long paramLong1, long paramLong2)
  {
    if (paramue == null) {
      throw new IllegalArgumentException("out == null");
    }
    vd.checkOffsetAndCount(this.size, paramLong1, paramLong2);
    if (paramLong2 == 0L) {
      return this;
    }
    paramue.size += paramLong2;
    ux localux2;
    long l1;
    long l2;
    for (ux localux1 = this.ZG;; localux1 = localux1.aaa)
    {
      localux2 = localux1;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < localux1.limit - localux1.pos) {
        break;
      }
      paramLong1 -= localux1.limit - localux1.pos;
    }
    while (l2 > 0L)
    {
      localux1 = new ux(localux2);
      localux1.pos = ((int)(localux1.pos + l1));
      localux1.limit = Math.min(localux1.pos + (int)l2, localux1.limit);
      if (paramue.ZG == null)
      {
        localux1.aab = localux1;
        localux1.aaa = localux1;
        paramue.ZG = localux1;
      }
      else
      {
        paramue.ZG.aab.ˊ(localux1);
      }
      l2 -= localux1.limit - localux1.pos;
      l1 = 0L;
      localux2 = localux2.aaa;
    }
    return this;
  }
  
  public ue ˊ(uj paramuj)
  {
    if (paramuj == null) {
      throw new IllegalArgumentException("byteString == null");
    }
    paramuj.ˊ(this);
    return this;
  }
  
  public void ˊ(ue paramue, long paramLong)
  {
    if (this.size < paramLong)
    {
      paramue.write(this, this.size);
      throw new EOFException();
    }
    paramue.write(this, paramLong);
  }
  
  public ue ـ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    return ˉ(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void ᔇ(long paramLong)
  {
    if (this.size < paramLong) {
      throw new EOFException();
    }
  }
  
  public byte ᔈ(long paramLong)
  {
    vd.checkOffsetAndCount(this.size, paramLong, 1L);
    for (ux localux = this.ZG;; localux = localux.aaa)
    {
      int i = localux.limit - localux.pos;
      if (paramLong < i) {
        return localux.fw[(localux.pos + (int)paramLong)];
      }
      paramLong -= i;
    }
  }
  
  public uj ᗮ(long paramLong)
  {
    return new uj(ᵀ(paramLong));
  }
  
  public String ᴶ(long paramLong)
  {
    return ˊ(paramLong, vd.UTF_8);
  }
  
  String ᴸ(long paramLong)
  {
    if ((paramLong > 0L) && (ᔈ(paramLong - 1L) == 13))
    {
      str = ᴶ(paramLong - 1L);
      ᵋ(2L);
      return str;
    }
    String str = ᴶ(paramLong);
    ᵋ(1L);
    return str;
  }
  
  public byte[] ᵀ(long paramLong)
  {
    vd.checkOffsetAndCount(this.size, 0L, paramLong);
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    byte[] arrayOfByte = new byte[(int)paramLong];
    readFully(arrayOfByte);
    return arrayOfByte;
  }
  
  public void ᵋ(long paramLong)
  {
    while (paramLong > 0L)
    {
      if (this.ZG == null) {
        throw new EOFException();
      }
      int i = (int)Math.min(paramLong, this.ZG.limit - this.ZG.pos);
      this.size -= i;
      paramLong -= i;
      ux localux = this.ZG;
      localux.pos += i;
      if (this.ZG.pos == this.ZG.limit)
      {
        localux = this.ZG;
        this.ZG = localux.et();
        uy.ˋ(localux);
      }
    }
  }
  
  public ue ᵗ(long paramLong)
  {
    ux localux = ľ(8);
    byte[] arrayOfByte = localux.fw;
    int j = localux.limit;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(int)(paramLong >>> 56 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(int)(paramLong >>> 48 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(int)(paramLong >>> 40 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(int)(paramLong >>> 32 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(int)(paramLong >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(int)(paramLong >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(int)(paramLong >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(int)(0xFF & paramLong));
    localux.limit = (i + 1);
    this.size += 8L;
    return this;
  }
  
  public ue ﯾ(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("string == null");
    }
    int i = 0;
    int k = paramString.length();
    while (i < k)
    {
      int i1 = paramString.charAt(i);
      int j;
      if (i1 < 128)
      {
        ux localux = ľ(1);
        byte[] arrayOfByte = localux.fw;
        int m = localux.limit - i;
        int n = Math.min(k, 2048 - m);
        j = i + 1;
        arrayOfByte[(i + m)] = ((byte)i1);
        for (i = j; i < n; i = j)
        {
          i1 = paramString.charAt(i);
          if (i1 >= 128) {
            break;
          }
          j = i + 1;
          arrayOfByte[(i + m)] = ((byte)i1);
        }
        j = i + m - localux.limit;
        localux.limit += j;
        this.size += j;
      }
      else if (i1 < 2048)
      {
        ﺜ(i1 >> 6 | 0xC0);
        ﺜ(i1 & 0x3F | 0x80);
        i += 1;
      }
      else if ((i1 < 55296) || (i1 > 57343))
      {
        ﺜ(i1 >> 12 | 0xE0);
        ﺜ(i1 >> 6 & 0x3F | 0x80);
        ﺜ(i1 & 0x3F | 0x80);
        i += 1;
      }
      else
      {
        if (i + 1 < k) {
          j = paramString.charAt(i + 1);
        } else {
          j = 0;
        }
        if ((i1 > 56319) || (j < 56320) || (j > 57343))
        {
          ﺜ(63);
          i += 1;
        }
        else
        {
          j = 65536 + ((0xFFFF27FF & i1) << 10 | 0xFFFF23FF & j);
          ﺜ(j >> 18 | 0xF0);
          ﺜ(j >> 12 & 0x3F | 0x80);
          ﺜ(j >> 6 & 0x3F | 0x80);
          ﺜ(j & 0x3F | 0x80);
          i += 2;
        }
      }
    }
    return this;
  }
  
  public ue ﺜ(int paramInt)
  {
    ux localux = ľ(1);
    byte[] arrayOfByte = localux.fw;
    int i = localux.limit;
    localux.limit = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    this.size += 1L;
    return this;
  }
  
  public ue ﻟ(int paramInt)
  {
    ux localux = ľ(2);
    byte[] arrayOfByte = localux.fw;
    int i = localux.limit;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[j] = ((byte)(paramInt & 0xFF));
    localux.limit = (j + 1);
    this.size += 2L;
    return this;
  }
  
  public ue ﾉ(int paramInt)
  {
    ux localux = ľ(4);
    byte[] arrayOfByte = localux.fw;
    int j = localux.limit;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
    localux.limit = (i + 1);
    this.size += 4L;
    return this;
  }
  
  public ue ﾟ(long paramLong)
  {
    if (paramLong == 0L) {
      return ﺜ(48);
    }
    int j = 0;
    long l = paramLong;
    if (paramLong < 0L)
    {
      l = -paramLong;
      if (l < 0L) {
        return ﯾ("-9223372036854775808");
      }
      j = 1;
    }
    if (l < 100000000L)
    {
      if (l < 10000L)
      {
        if (l < 100L)
        {
          if (l < 10L) {
            i = 1;
          } else {
            i = 2;
          }
        }
        else if (l < 1000L) {
          i = 3;
        } else {
          i = 4;
        }
      }
      else if (l < 1000000L)
      {
        if (l < 100000L) {
          i = 5;
        } else {
          i = 6;
        }
      }
      else if (l < 10000000L) {
        i = 7;
      } else {
        i = 8;
      }
    }
    else if (l < 1000000000000L)
    {
      if (l < 10000000000L)
      {
        if (l < 1000000000L) {
          i = 9;
        } else {
          i = 10;
        }
      }
      else if (l < 100000000000L) {
        i = 11;
      } else {
        i = 12;
      }
    }
    else if (l < 1000000000000000L)
    {
      if (l < 10000000000000L) {
        i = 13;
      } else if (l < 100000000000000L) {
        i = 14;
      } else {
        i = 15;
      }
    }
    else if (l < 100000000000000000L)
    {
      if (l < 10000000000000000L) {
        i = 16;
      } else {
        i = 17;
      }
    }
    else if (l < 1000000000000000000L) {
      i = 18;
    } else {
      i = 19;
    }
    int k = i;
    if (j != 0) {
      k = i + 1;
    }
    ux localux = ľ(k);
    byte[] arrayOfByte = localux.fw;
    int i = localux.limit + k;
    while (l != 0L)
    {
      int m = (int)(l % 10L);
      i -= 1;
      arrayOfByte[i] = ZF[m];
      l /= 10L;
    }
    if (j != 0) {
      arrayOfByte[(i - 1)] = 45;
    }
    localux.limit += k;
    this.size += k;
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ue
 * JD-Core Version:    0.7.0.1
 */