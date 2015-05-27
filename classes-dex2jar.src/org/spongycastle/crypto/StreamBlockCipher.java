package org.spongycastle.crypto;

public abstract class StreamBlockCipher
  implements BlockCipher, StreamCipher
{
  private final BlockCipher aEX;
  
  public StreamBlockCipher(BlockCipher paramBlockCipher)
  {
    this.aEX = paramBlockCipher;
  }
  
  public BlockCipher iH()
  {
    return this.aEX;
  }
  
  public final byte ʽ(byte paramByte)
  {
    return ͺ(paramByte);
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt3 + paramInt2 > paramArrayOfByte2.length) {
      throw new DataLengthException("output buffer too short");
    }
    if (paramInt1 + paramInt2 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too small");
    }
    int j = paramInt1;
    int i = paramInt3;
    paramInt3 = j;
    while (paramInt3 < paramInt1 + paramInt2)
    {
      j = i + 1;
      int k = paramInt3 + 1;
      paramArrayOfByte2[i] = ͺ(paramArrayOfByte1[paramInt3]);
      paramInt3 = k;
      i = j;
    }
    return paramInt2;
  }
  
  public abstract byte ͺ(byte paramByte);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.StreamBlockCipher
 * JD-Core Version:    0.7.0.1
 */