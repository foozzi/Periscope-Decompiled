package o;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

abstract class lf
{
  byte[] OG = null;
  byte[] OH = null;
  boolean OI = false;
  String Oh;
  String Oi = "0123456789012345";
  
  public lf(String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      this.Oi = paramString2;
    }
    this.Oh = paramString1;
  }
  
  public static byte[] ˈ(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      localStringBuffer.append(Integer.toString((paramArrayOfByte[i] & 0xFF) + 256, 16).substring(1));
      i += 1;
    }
    try
    {
      paramArrayOfByte = localStringBuffer.toString().getBytes("UTF-8");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new lh(ˎ(12, paramArrayOfByte.toString()));
    }
  }
  
  public static byte[] ˉ(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = MessageDigest.getInstance("SHA-256").digest(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      throw new lh(ˎ(1111, paramArrayOfByte.toString()));
    }
  }
  
  private static lg ˎ(int paramInt, String paramString)
  {
    return lg.ˊ(lg.Ps, paramInt, paramString);
  }
  
  public static byte[] ι(String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance("MD5").digest(paramString.getBytes("UTF-8"));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new lh(ˎ(118, paramString.toString()));
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new lh(ˎ(119, paramString.toString()));
    }
  }
  
  public void aD()
  {
    if (this.OI) {
      return;
    }
    try
    {
      this.OG = new String(ˈ(ˉ(this.Oh.getBytes("UTF-8"))), "UTF-8").substring(0, 32).toLowerCase().getBytes("UTF-8");
      this.OH = this.Oi.getBytes("UTF-8");
      this.OI = true;
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new lh(ˎ(11, localUnsupportedEncodingException.toString()));
    }
  }
  
  public String ˢ(String paramString)
  {
    try
    {
      aD();
      IvParameterSpec localIvParameterSpec = new IvParameterSpec(this.OH);
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(this.OG, "AES");
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
      localCipher.init(2, localSecretKeySpec, localIvParameterSpec);
      paramString = new String(localCipher.doFinal(kh.ᵥ(paramString)), "UTF-8");
      return paramString;
    }
    catch (IllegalArgumentException paramString)
    {
      throw new lh(ˎ(111, paramString.toString()));
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new lh(ˎ(112, paramString.toString()));
    }
    catch (IllegalBlockSizeException paramString)
    {
      throw new lh(ˎ(113, paramString.toString()));
    }
    catch (BadPaddingException paramString)
    {
      throw new lh(ˎ(114, paramString.toString()));
    }
    catch (InvalidKeyException paramString)
    {
      throw new lh(ˎ(115, paramString.toString()));
    }
    catch (InvalidAlgorithmParameterException paramString)
    {
      throw new lh(ˎ(116, paramString.toString()));
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new lh(ˎ(117, paramString.toString()));
    }
    catch (NoSuchPaddingException paramString)
    {
      throw new lh(ˎ(118, paramString.toString()));
    }
  }
  
  public String ˤ(String paramString)
  {
    try
    {
      aD();
      IvParameterSpec localIvParameterSpec = new IvParameterSpec(this.OH);
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(this.OG, "AES");
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
      localCipher.init(1, localSecretKeySpec, localIvParameterSpec);
      paramString = new String(kh.ʿ(localCipher.doFinal(paramString.getBytes("UTF-8"))));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new lh(ˎ(13, paramString.toString()));
    }
    catch (NoSuchPaddingException paramString)
    {
      throw new lh(ˎ(14, paramString.toString()));
    }
    catch (InvalidKeyException paramString)
    {
      throw new lh(ˎ(15, paramString.toString()));
    }
    catch (InvalidAlgorithmParameterException paramString)
    {
      throw new lh(ˎ(16, paramString.toString()));
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new lh(ˎ(17, paramString.toString()));
    }
    catch (IllegalBlockSizeException paramString)
    {
      throw new lh(ˎ(18, paramString.toString()));
    }
    catch (BadPaddingException paramString)
    {
      throw new lh(ˎ(19, paramString.toString()));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lf
 * JD-Core Version:    0.7.0.1
 */