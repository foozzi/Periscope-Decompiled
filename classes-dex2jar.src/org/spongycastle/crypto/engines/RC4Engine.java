package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;

public class RC4Engine
  implements StreamCipher
{
  private byte[] aIZ = null;
  private byte[] aLa = null;
  private int x = 0;
  private int y = 0;
  
  private void ˇ(byte[] paramArrayOfByte)
  {
    this.aIZ = paramArrayOfByte;
    this.x = 0;
    this.y = 0;
    if (this.aLa == null) {
      this.aLa = new byte[256];
    }
    int j = 0;
    while (j < 256)
    {
      this.aLa[j] = ((byte)j);
      j += 1;
    }
    int k = 0;
    int m = 0;
    j = 0;
    while (j < 256)
    {
      m = (paramArrayOfByte[k] & 0xFF) + this.aLa[j] + m & 0xFF;
      int i = this.aLa[j];
      this.aLa[j] = this.aLa[m];
      this.aLa[m] = i;
      k = (k + 1) % paramArrayOfByte.length;
      j += 1;
    }
  }
  
  public String iG()
  {
    return "RC4";
  }
  
  public void reset()
  {
    ˇ(this.aIZ);
  }
  
  public byte ʽ(byte paramByte)
  {
    this.x = (this.x + 1 & 0xFF);
    this.y = (this.aLa[this.x] + this.y & 0xFF);
    int i = this.aLa[this.x];
    this.aLa[this.x] = this.aLa[this.y];
    this.aLa[this.y] = i;
    return (byte)(this.aLa[(this.aLa[this.x] + this.aLa[this.y] & 0xFF)] ^ paramByte);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof KeyParameter))
    {
      this.aIZ = ((KeyParameter)paramCipherParameters).getKey();
      ˇ(this.aIZ);
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to RC4 init - " + paramCipherParameters.getClass().getName());
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt1 + paramInt2 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt3 + paramInt2 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    int j = 0;
    while (j < paramInt2)
    {
      this.x = (this.x + 1 & 0xFF);
      this.y = (this.aLa[this.x] + this.y & 0xFF);
      int i = this.aLa[this.x];
      this.aLa[this.x] = this.aLa[this.y];
      this.aLa[this.y] = i;
      paramArrayOfByte2[(j + paramInt3)] = ((byte)(paramArrayOfByte1[(j + paramInt1)] ^ this.aLa[(this.aLa[this.x] + this.aLa[this.y] & 0xFF)]));
      j += 1;
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RC4Engine
 * JD-Core Version:    0.7.0.1
 */