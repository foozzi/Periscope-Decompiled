package o;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class ȯ
  implements ϒ
{
  private final byte[] xZ;
  private final byte[] yb;
  private final ϒ zP;
  private CipherInputStream zQ;
  
  public ȯ(ϒ paramϒ, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.zP = paramϒ;
    this.xZ = paramArrayOfByte1;
    this.yb = paramArrayOfByte2;
  }
  
  public void close()
  {
    this.zQ = null;
    this.zP.close();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    boolean bool;
    if (this.zQ != null) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    paramInt1 = this.zQ.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 < 0) {
      return -1;
    }
    return paramInt1;
  }
  
  public long ˊ(к paramк)
  {
    Cipher localCipher;
    try
    {
      localCipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
    }
    catch (NoSuchAlgorithmException paramк)
    {
      throw new RuntimeException(paramк);
    }
    catch (NoSuchPaddingException paramк)
    {
      throw new RuntimeException(paramк);
    }
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(this.xZ, "AES");
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(this.yb);
    try
    {
      localCipher.init(2, localSecretKeySpec, localIvParameterSpec);
    }
    catch (InvalidKeyException paramк)
    {
      throw new RuntimeException(paramк);
    }
    catch (InvalidAlgorithmParameterException paramк)
    {
      throw new RuntimeException(paramк);
    }
    this.zQ = new CipherInputStream(new Ϝ(this.zP, paramк), localCipher);
    return -1L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.È¯
 * JD-Core Version:    0.7.0.1
 */