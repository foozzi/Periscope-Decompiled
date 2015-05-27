package org.spongycastle.crypto.signers;

import java.io.IOException;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;

public class RSADigestSigner
  implements Signer
{
  private static final Hashtable aSB = new Hashtable();
  private final Digest aFH;
  private final AsymmetricBlockCipher aSA = new PKCS1Encoding(new RSABlindedEngine());
  private boolean aSa;
  private final AlgorithmIdentifier agJ;
  
  static
  {
    aSB.put("RIPEMD128", TeleTrusTObjectIdentifiers.ava);
    aSB.put("RIPEMD160", TeleTrusTObjectIdentifiers.auZ);
    aSB.put("RIPEMD256", TeleTrusTObjectIdentifiers.avb);
    aSB.put("SHA-1", X509ObjectIdentifiers.aCd);
    aSB.put("SHA-224", NISTObjectIdentifiers.aoe);
    aSB.put("SHA-256", NISTObjectIdentifiers.aob);
    aSB.put("SHA-384", NISTObjectIdentifiers.aoc);
    aSB.put("SHA-512", NISTObjectIdentifiers.aod);
    aSB.put("SHA-512/224", NISTObjectIdentifiers.aof);
    aSB.put("SHA-512/256", NISTObjectIdentifiers.aog);
    aSB.put("MD2", PKCSObjectIdentifiers.aqR);
    aSB.put("MD4", PKCSObjectIdentifiers.aqS);
    aSB.put("MD5", PKCSObjectIdentifiers.aqT);
  }
  
  public RSADigestSigner(Digest paramDigest, ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    this.aFH = paramDigest;
    this.agJ = new AlgorithmIdentifier(paramASN1ObjectIdentifier, DERNull.abj);
  }
  
  private byte[] ᵙ(byte[] paramArrayOfByte)
  {
    return new DigestInfo(this.agJ, paramArrayOfByte).getEncoded("DER");
  }
  
  public byte[] iP()
  {
    if (!this.aSa) {
      throw new IllegalStateException("RSADigestSigner not initialised for signature generation.");
    }
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    try
    {
      arrayOfByte = ᵙ(arrayOfByte);
      arrayOfByte = this.aSA.ˑ(arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new CryptoException("unable to encode signature: " + localIOException.getMessage(), localIOException);
    }
  }
  
  public void reset()
  {
    this.aFH.reset();
  }
  
  public void update(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aSa = paramBoolean;
    AsymmetricKeyParameter localAsymmetricKeyParameter;
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      localAsymmetricKeyParameter = (AsymmetricKeyParameter)((ParametersWithRandom)paramCipherParameters).lh();
    } else {
      localAsymmetricKeyParameter = (AsymmetricKeyParameter)paramCipherParameters;
    }
    if ((paramBoolean) && (!localAsymmetricKeyParameter.isPrivate())) {
      throw new IllegalArgumentException("signing requires private key");
    }
    if ((!paramBoolean) && (localAsymmetricKeyParameter.isPrivate())) {
      throw new IllegalArgumentException("verification requires public key");
    }
    reset();
    this.aSA.ˊ(paramBoolean, paramCipherParameters);
  }
  
  public boolean ᵔ(byte[] paramArrayOfByte)
  {
    if (this.aSa) {
      throw new IllegalStateException("RSADigestSigner not initialised for verification");
    }
    byte[] arrayOfByte1 = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte1, 0);
    byte[] arrayOfByte2;
    try
    {
      paramArrayOfByte = this.aSA.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
      arrayOfByte2 = ᵙ(arrayOfByte1);
    }
    catch (Exception paramArrayOfByte)
    {
      return false;
    }
    if (paramArrayOfByte.length == arrayOfByte2.length) {
      return Arrays.ｰ(paramArrayOfByte, arrayOfByte2);
    }
    if (paramArrayOfByte.length == arrayOfByte2.length - 2)
    {
      int k = paramArrayOfByte.length - arrayOfByte1.length - 2;
      int m = arrayOfByte2.length;
      int n = arrayOfByte1.length;
      arrayOfByte2[1] = ((byte)(arrayOfByte2[1] - 2));
      arrayOfByte2[3] = ((byte)(arrayOfByte2[3] - 2));
      int i = 0;
      int j = 0;
      while (j < arrayOfByte1.length)
      {
        i |= paramArrayOfByte[(k + j)] ^ arrayOfByte2[(m - n - 2 + j)];
        j += 1;
      }
      j = 0;
      while (j < k)
      {
        i |= paramArrayOfByte[j] ^ arrayOfByte2[j];
        j += 1;
      }
      return i == 0;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.RSADigestSigner
 * JD-Core Version:    0.7.0.1
 */