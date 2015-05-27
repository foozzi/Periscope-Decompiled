package o;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class ᴐ$ˊ
{
  File[] cleanFiles;
  File[] dirtyFiles;
  private ᴐ.if fi;
  private final String key;
  private final long[] lengths;
  private boolean readable;
  private long sequenceNumber;
  
  private ᴐ$ˊ(ᴐ paramᴐ, String paramString)
  {
    this.key = paramString;
    this.lengths = new long[ᴐ.ᐝ(paramᴐ)];
    this.cleanFiles = new File[ᴐ.ᐝ(paramᴐ)];
    this.dirtyFiles = new File[ᴐ.ᐝ(paramᴐ)];
    paramString = new StringBuilder(paramString).append('.');
    int j = paramString.length();
    int i = 0;
    while (i < ᴐ.ᐝ(paramᴐ))
    {
      paramString.append(i);
      this.cleanFiles[i] = new File(ᴐ.ʻ(paramᴐ), paramString.toString());
      paramString.append(".tmp");
      this.dirtyFiles[i] = new File(ᴐ.ʻ(paramᴐ), paramString.toString());
      paramString.setLength(j);
      i += 1;
    }
  }
  
  private IOException invalidLengths(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }
  
  private void setLengths(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != ᴐ.ᐝ(this.fg)) {
      throw invalidLengths(paramArrayOfString);
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        this.lengths[i] = Long.parseLong(paramArrayOfString[i]);
        i += 1;
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw invalidLengths(paramArrayOfString);
    }
  }
  
  public File ʺ(int paramInt)
  {
    return this.dirtyFiles[paramInt];
  }
  
  public String ᵠ()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long[] arrayOfLong = this.lengths;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      localStringBuilder.append(' ').append(l);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public File ﻧ(int paramInt)
  {
    return this.cleanFiles[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.Ë
 * JD-Core Version:    0.7.0.1
 */