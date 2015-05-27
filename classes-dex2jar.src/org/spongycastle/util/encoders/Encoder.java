package org.spongycastle.util.encoders;

import java.io.OutputStream;

public abstract interface Encoder
{
  public abstract int ˊ(String paramString, OutputStream paramOutputStream);
  
  public abstract int ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, OutputStream paramOutputStream);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.encoders.Encoder
 * JD-Core Version:    0.7.0.1
 */