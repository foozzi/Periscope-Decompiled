package org.spongycastle.crypto.signers;

import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class DSADigestSigner
  implements Signer
{
  private final Digest aFH;
  private final DSA aRZ;
  private boolean aSa;
  
  public DSADigestSigner(DSA paramDSA, Digest paramDigest)
  {
    this.aFH = paramDigest;
    this.aRZ = paramDSA;
  }
  
  private byte[] ˋ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(paramBigInteger1));
    localASN1EncodableVector.ˊ(new ASN1Integer(paramBigInteger2));
    return new DERSequence(localASN1EncodableVector).getEncoded("DER");
  }
  
  private BigInteger[] ᒡ(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (ASN1Sequence)ASN1Primitive.ՙ(paramArrayOfByte);
    return new BigInteger[] { ((ASN1Integer)paramArrayOfByte.ϲ(0)).eA(), ((ASN1Integer)paramArrayOfByte.ϲ(1)).eA() };
  }
  
  public byte[] iP()
  {
    if (!this.aSa) {
      throw new IllegalStateException("DSADigestSigner not initialised for signature generation.");
    }
    Object localObject = new byte[this.aFH.iJ()];
    this.aFH.doFinal((byte[])localObject, 0);
    localObject = this.aRZ.ᵎ((byte[])localObject);
    try
    {
      localObject = ˋ(localObject[0], localObject[1]);
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("unable to encode signature");
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
      throw new IllegalArgumentException("Signing Requires Private Key.");
    }
    if ((!paramBoolean) && (localAsymmetricKeyParameter.isPrivate())) {
      throw new IllegalArgumentException("Verification Requires Public Key.");
    }
    reset();
    this.aRZ.ˊ(paramBoolean, paramCipherParameters);
  }
  
  public boolean ᵔ(byte[] paramArrayOfByte)
  {
    if (this.aSa) {
      throw new IllegalStateException("DSADigestSigner not initialised for verification");
    }
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    try
    {
      paramArrayOfByte = ᒡ(paramArrayOfByte);
      boolean bool = this.aRZ.ˊ(arrayOfByte, paramArrayOfByte[0], paramArrayOfByte[1]);
      return bool;
    }
    catch (IOException paramArrayOfByte) {}
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.DSADigestSigner
 * JD-Core Version:    0.7.0.1
 */