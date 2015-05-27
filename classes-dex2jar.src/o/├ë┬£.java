package o;

import android.annotation.TargetApi;
import android.media.MediaCodec.CryptoInfo;

public class ɜ
{
  public byte[] iv;
  public byte[] key;
  public int mode;
  public int[] numBytesOfClearData;
  public int[] numBytesOfEncryptedData;
  public int numSubSamples;
  private final MediaCodec.CryptoInfo qH;
  
  public ɜ()
  {
    MediaCodec.CryptoInfo localCryptoInfo;
    if (ผ.SDK_INT >= 16) {
      localCryptoInfo = הּ();
    } else {
      localCryptoInfo = null;
    }
    this.qH = localCryptoInfo;
  }
  
  @TargetApi(16)
  private MediaCodec.CryptoInfo הּ()
  {
    return new MediaCodec.CryptoInfo();
  }
  
  @TargetApi(16)
  private void כֿ()
  {
    this.qH.set(this.numSubSamples, this.numBytesOfClearData, this.numBytesOfEncryptedData, this.key, this.iv, this.mode);
  }
  
  public void set(int paramInt1, int[] paramArrayOfInt1, int[] paramArrayOfInt2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt2)
  {
    this.numSubSamples = paramInt1;
    this.numBytesOfClearData = paramArrayOfInt1;
    this.numBytesOfEncryptedData = paramArrayOfInt2;
    this.key = paramArrayOfByte1;
    this.iv = paramArrayOfByte2;
    this.mode = paramInt2;
    if (ผ.SDK_INT >= 16) {
      כֿ();
    }
  }
  
  @TargetApi(16)
  public MediaCodec.CryptoInfo 冖()
  {
    return this.qH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É
 * JD-Core Version:    0.7.0.1
 */