package org.spongycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

class StreamUtil
{
  private static final long abz = Runtime.getRuntime().maxMemory();
  
  static int ʾ(InputStream paramInputStream)
  {
    if ((paramInputStream instanceof LimitedInputStream)) {
      return ((LimitedInputStream)paramInputStream).getRemaining();
    }
    if ((paramInputStream instanceof ASN1InputStream)) {
      return ((ASN1InputStream)paramInputStream).eE();
    }
    if ((paramInputStream instanceof ByteArrayInputStream)) {
      return ((ByteArrayInputStream)paramInputStream).available();
    }
    if ((paramInputStream instanceof FileInputStream)) {
      try
      {
        paramInputStream = ((FileInputStream)paramInputStream).getChannel();
        long l;
        if (paramInputStream != null) {
          l = paramInputStream.size();
        } else {
          l = 2147483647L;
        }
        if (l < 2147483647L) {
          return (int)l;
        }
      }
      catch (IOException paramInputStream) {}
    }
    if (abz > 2147483647L) {
      return 2147483647;
    }
    return (int)abz;
  }
  
  static int х(int paramInt)
  {
    int j = 1;
    int k = 1;
    if (paramInt > 127)
    {
      j = 1;
      int i = paramInt;
      paramInt = j;
      for (;;)
      {
        j = i >>> 8;
        i = j;
        if (j == 0) {
          break;
        }
        paramInt += 1;
      }
      i = (paramInt - 1) * 8;
      paramInt = k;
      for (;;)
      {
        j = paramInt;
        if (i < 0) {
          break;
        }
        paramInt += 1;
        i -= 8;
      }
    }
    return j;
  }
  
  static int ј(int paramInt)
  {
    int i = 1;
    if (paramInt >= 31)
    {
      if (paramInt < 128) {
        return 1 + 1;
      }
      byte[] arrayOfByte = new byte[5];
      i = arrayOfByte.length - 1;
      arrayOfByte[i] = ((byte)(paramInt & 0x7F));
      int j;
      int k;
      do
      {
        j = paramInt >> 7;
        k = i - 1;
        arrayOfByte[k] = ((byte)(j & 0x7F | 0x80));
        i = k;
        paramInt = j;
      } while (j > 127);
      i = arrayOfByte.length - k + 1;
    }
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.StreamUtil
 * JD-Core Version:    0.7.0.1
 */