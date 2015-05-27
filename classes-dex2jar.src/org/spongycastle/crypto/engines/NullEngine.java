package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;

public class NullEngine
  implements BlockCipher
{
  private boolean aJn;
  private final int fU;
  
  public NullEngine()
  {
    this(1);
  }
  
  public NullEngine(int paramInt)
  {
    this.fU = paramInt;
  }
  
  public int getBlockSize()
  {
    return this.fU;
  }
  
  public String iG()
  {
    return "Null";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (!this.aJn) {
      throw new IllegalStateException("Null engine not initialised");
    }
    if (this.fU + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (this.fU + paramInt2 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    int i = 0;
    while (i < this.fU)
    {
      paramArrayOfByte2[(paramInt2 + i)] = paramArrayOfByte1[(paramInt1 + i)];
      i += 1;
    }
    return this.fU;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aJn = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.NullEngine
 * JD-Core Version:    0.7.0.1
 */