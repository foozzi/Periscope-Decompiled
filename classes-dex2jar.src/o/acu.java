package o;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;

public class acu
{
  private final PublicKey bxY;
  private final String bxZ;
  private final String bya;
  
  public acu(PublicKey paramPublicKey, String paramString1, String paramString2)
  {
    this.bxY = paramPublicKey;
    this.bxZ = paramString1;
    this.bya = paramString2;
  }
  
  public acu(acs paramacs, String paramString1, String paramString2)
  {
    this(paramacs.getPublicKey(), paramString1, paramString2);
  }
  
  public boolean ˊ(act paramact)
  {
    PublicKey localPublicKey = this.bxY;
    byte[] arrayOfByte = paramact.wJ();
    if ((arrayOfByte == null) || (arrayOfByte.length == 0)) {
      return false;
    }
    try
    {
      Signature localSignature = Signature.getInstance(this.bxZ, this.bya);
      localSignature.initVerify(localPublicKey);
      localSignature.update(paramact.wI());
      boolean bool = localSignature.verify(arrayOfByte);
      return bool;
    }
    catch (InvalidKeyException|NoSuchAlgorithmException|NoSuchProviderException|SignatureException localInvalidKeyException)
    {
      throw new acv("Could not verify " + paramact, localInvalidKeyException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acu
 * JD-Core Version:    0.7.0.1
 */