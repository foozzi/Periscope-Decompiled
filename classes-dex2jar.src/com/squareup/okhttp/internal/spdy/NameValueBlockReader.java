package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import o.ui;
import o.uj;
import o.uo;
import o.up;

class NameValueBlockReader
{
  private int compressedLimit;
  private final uo inflaterSource = new uo(new NameValueBlockReader.1(this, paramui), new NameValueBlockReader.2(this));
  private final ui source = up.ˋ(this.inflaterSource);
  
  public NameValueBlockReader(ui paramui) {}
  
  private void doneReading()
  {
    if (this.compressedLimit > 0)
    {
      this.inflaterSource.eq();
      if (this.compressedLimit != 0) {
        throw new IOException("compressedLimit > 0: " + this.compressedLimit);
      }
    }
  }
  
  private uj readByteString()
  {
    int i = this.source.readInt();
    return this.source.ᗮ(i);
  }
  
  public void close()
  {
    this.source.close();
  }
  
  public List<Header> readNameValueBlock(int paramInt)
  {
    this.compressedLimit += paramInt;
    int i = this.source.readInt();
    if (i < 0) {
      throw new IOException("numberOfPairs < 0: " + i);
    }
    if (i > 1024) {
      throw new IOException("numberOfPairs > 1024: " + i);
    }
    ArrayList localArrayList = new ArrayList(i);
    paramInt = 0;
    while (paramInt < i)
    {
      uj localuj1 = readByteString().em();
      uj localuj2 = readByteString();
      if (localuj1.size() == 0) {
        throw new IOException("name.size == 0");
      }
      localArrayList.add(new Header(localuj1, localuj2));
      paramInt += 1;
    }
    doneReading();
    return localArrayList;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.NameValueBlockReader
 * JD-Core Version:    0.7.0.1
 */