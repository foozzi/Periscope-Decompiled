package o;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.logging.Level;
import java.util.logging.Logger;

public class qu
  implements Closeable
{
  private static final Logger Wr = Logger.getLogger(qu.class.getName());
  private final RandomAccessFile Ws;
  int Wt;
  private if Wu;
  private if Wv;
  private final byte[] buffer = new byte[16];
  private int elementCount;
  
  public qu(File paramFile)
  {
    if (!paramFile.exists()) {
      ʻ(paramFile);
    }
    this.Ws = ʼ(paramFile);
    readHeader();
  }
  
  private int cK()
  {
    return this.Wt - cJ();
  }
  
  private void readHeader()
  {
    this.Ws.seek(0L);
    this.Ws.readFully(this.buffer);
    this.Wt = ʽ(this.buffer, 0);
    if (this.Wt > this.Ws.length()) {
      throw new IOException("File is truncated. Expected length: " + this.Wt + ", Actual length: " + this.Ws.length());
    }
    this.elementCount = ʽ(this.buffer, 4);
    int i = ʽ(this.buffer, 8);
    int j = ʽ(this.buffer, 12);
    this.Wu = ⁔(i);
    this.Wv = ⁔(j);
  }
  
  private void setLength(int paramInt)
  {
    this.Ws.setLength(paramInt);
    this.Ws.getChannel().force(true);
  }
  
  private static void ʻ(File paramFile)
  {
    File localFile = new File(paramFile.getPath() + ".tmp");
    RandomAccessFile localRandomAccessFile = ʼ(localFile);
    try
    {
      localRandomAccessFile.setLength(4096L);
      localRandomAccessFile.seek(0L);
      byte[] arrayOfByte = new byte[16];
      ˊ(arrayOfByte, new int[] { 4096, 0, 0, 0 });
      localRandomAccessFile.write(arrayOfByte);
      localRandomAccessFile.close();
    }
    finally
    {
      localRandomAccessFile.close();
    }
    throw new IOException("Rename failed!");
  }
  
  private static RandomAccessFile ʼ(File paramFile)
  {
    return new RandomAccessFile(paramFile, "rwd");
  }
  
  private static int ʽ(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 24) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 3)] & 0xFF);
  }
  
  private static void ʾ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >> 24));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 16));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >> 8));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)paramInt2);
  }
  
  private static <T> T ˊ(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new NullPointerException(paramString);
    }
    return paramT;
  }
  
  private void ˊ(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    paramInt1 = 丨(paramInt1);
    if (paramInt1 + paramInt3 <= this.Wt)
    {
      this.Ws.seek(paramInt1);
      this.Ws.write(paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    int i = this.Wt - paramInt1;
    this.Ws.seek(paramInt1);
    this.Ws.write(paramArrayOfByte, paramInt2, i);
    this.Ws.seek(16L);
    this.Ws.write(paramArrayOfByte, paramInt2 + i, paramInt3 - i);
  }
  
  private static void ˊ(byte[] paramArrayOfByte, int... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      ʾ(paramArrayOfByte, j, paramVarArgs[i]);
      j += 4;
      i += 1;
    }
  }
  
  private void ˋ(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    paramInt1 = 丨(paramInt1);
    if (paramInt1 + paramInt3 <= this.Wt)
    {
      this.Ws.seek(paramInt1);
      this.Ws.readFully(paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    int i = this.Wt - paramInt1;
    this.Ws.seek(paramInt1);
    this.Ws.readFully(paramArrayOfByte, paramInt2, i);
    this.Ws.seek(16L);
    this.Ws.readFully(paramArrayOfByte, paramInt2 + i, paramInt3 - i);
  }
  
  private void ͺ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ˊ(this.buffer, new int[] { paramInt1, paramInt2, paramInt3, paramInt4 });
    this.Ws.seek(0L);
    this.Ws.write(this.buffer);
  }
  
  private if ⁔(int paramInt)
  {
    if (paramInt == 0) {
      return if.Wz;
    }
    this.Ws.seek(paramInt);
    return new if(paramInt, this.Ws.readInt());
  }
  
  private int 丨(int paramInt)
  {
    if (paramInt < this.Wt) {
      return paramInt;
    }
    return paramInt + 16 - this.Wt;
  }
  
  private void 氵(int paramInt)
  {
    int m = paramInt + 4;
    paramInt = cK();
    if (paramInt >= m) {
      return;
    }
    int i = this.Wt;
    int k;
    int j;
    do
    {
      k = paramInt + i;
      j = i << 1;
      i = j;
      paramInt = k;
    } while (k < m);
    setLength(j);
    paramInt = 丨(this.Wv.position + 4 + this.Wv.length);
    if (paramInt < this.Wu.position)
    {
      FileChannel localFileChannel = this.Ws.getChannel();
      localFileChannel.position(this.Wt);
      paramInt -= 4;
      if (localFileChannel.transferTo(16L, paramInt, localFileChannel) != paramInt) {
        throw new AssertionError("Copied insufficient number of bytes!");
      }
    }
    if (this.Wv.position < this.Wu.position)
    {
      paramInt = this.Wt + this.Wv.position - 16;
      ͺ(j, this.elementCount, this.Wu.position, paramInt);
      this.Wv = new if(paramInt, this.Wv.length);
    }
    else
    {
      ͺ(j, this.elementCount, this.Wu.position, this.Wv.position);
    }
    this.Wt = j;
  }
  
  public int cJ()
  {
    if (this.elementCount == 0) {
      return 16;
    }
    if (this.Wv.position >= this.Wu.position) {
      return this.Wv.position - this.Wu.position + 4 + this.Wv.length + 16;
    }
    return this.Wv.position + 4 + this.Wv.length + this.Wt - this.Wu.position;
  }
  
  public void close()
  {
    try
    {
      this.Ws.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean isEmpty()
  {
    try
    {
      int i = this.elementCount;
      boolean bool;
      if (i == 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append('[');
    localStringBuilder.append("fileLength=").append(this.Wt);
    localStringBuilder.append(", size=").append(this.elementCount);
    localStringBuilder.append(", first=").append(this.Wu);
    localStringBuilder.append(", last=").append(this.Wv);
    localStringBuilder.append(", element lengths=[");
    try
    {
      ˊ(new qv(this, localStringBuilder));
    }
    catch (IOException localIOException)
    {
      Wr.log(Level.WARNING, "read error", localIOException);
    }
    localStringBuilder.append("]]");
    return localStringBuilder.toString();
  }
  
  public void ʿ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      ˊ(paramArrayOfByte, "buffer");
      if (((paramInt1 | paramInt2) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
        throw new IndexOutOfBoundsException();
      }
      氵(paramInt2);
      boolean bool = isEmpty();
      int i;
      if (bool) {
        i = 16;
      } else {
        i = 丨(this.Wv.position + 4 + this.Wv.length);
      }
      if localif = new if(i, paramInt2);
      ʾ(this.buffer, 0, paramInt2);
      ˊ(localif.position, this.buffer, 0, 4);
      ˊ(localif.position + 4, paramArrayOfByte, paramInt1, paramInt2);
      if (bool) {
        paramInt1 = localif.position;
      } else {
        paramInt1 = this.Wu.position;
      }
      ͺ(this.Wt, this.elementCount + 1, paramInt1, localif.position);
      this.Wv = localif;
      this.elementCount += 1;
      if (bool) {
        this.Wu = this.Wv;
      }
      return;
    }
    finally {}
  }
  
  public void ˊ(qu.ˋ paramˋ)
  {
    try
    {
      int j = this.Wu.position;
      int i = 0;
      while (i < this.elementCount)
      {
        if localif = ⁔(j);
        paramˋ.ˊ(new qu.ˊ(this, localif, null), localif.length);
        j = 丨(localif.position + 4 + localif.length);
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void ˍ(byte[] paramArrayOfByte)
  {
    ʿ(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public boolean ᒢ(int paramInt1, int paramInt2)
  {
    return cJ() + 4 + paramInt1 <= paramInt2;
  }
  
  static class if
  {
    static final if Wz = new if(0, 0);
    final int length;
    final int position;
    
    if(int paramInt1, int paramInt2)
    {
      this.position = paramInt1;
      this.length = paramInt2;
    }
    
    public String toString()
    {
      return getClass().getSimpleName() + "[" + "position = " + this.position + ", length = " + this.length + "]";
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qu
 * JD-Core Version:    0.7.0.1
 */