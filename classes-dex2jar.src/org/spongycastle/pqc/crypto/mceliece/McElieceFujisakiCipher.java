package org.spongycastle.pqc.crypto.mceliece;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.prng.DigestRandomGenerator;
import org.spongycastle.pqc.crypto.MessageEncryptor;
import org.spongycastle.pqc.math.linearalgebra.ByteUtils;
import org.spongycastle.pqc.math.linearalgebra.GF2Vector;

public class McElieceFujisakiCipher
  implements MessageEncryptor
{
  private SecureRandom aKZ;
  private int aQb;
  private int avM;
  private int bdK;
  private Digest ber;
  McElieceCCA2KeyParameters bgd;
  
  private void ˊ(McElieceCCA2PublicKeyParameters paramMcElieceCCA2PublicKeyParameters)
  {
    SecureRandom localSecureRandom;
    if (this.aKZ != null) {
      localSecureRandom = this.aKZ;
    } else {
      localSecureRandom = new SecureRandom();
    }
    this.aKZ = localSecureRandom;
    this.ber = paramMcElieceCCA2PublicKeyParameters.rg().rh();
    this.aQb = paramMcElieceCCA2PublicKeyParameters.kC();
    this.avM = paramMcElieceCCA2PublicKeyParameters.ri();
    this.bdK = paramMcElieceCCA2PublicKeyParameters.rj();
  }
  
  public int ˊ(McElieceCCA2KeyParameters paramMcElieceCCA2KeyParameters)
  {
    if ((paramMcElieceCCA2KeyParameters instanceof McElieceCCA2PublicKeyParameters)) {
      return ((McElieceCCA2PublicKeyParameters)paramMcElieceCCA2KeyParameters).kC();
    }
    if ((paramMcElieceCCA2KeyParameters instanceof McElieceCCA2PrivateKeyParameters)) {
      return ((McElieceCCA2PrivateKeyParameters)paramMcElieceCCA2KeyParameters).kC();
    }
    throw new IllegalArgumentException("unsupported type");
  }
  
  public void ˊ(McElieceCCA2PrivateKeyParameters paramMcElieceCCA2PrivateKeyParameters)
  {
    this.ber = paramMcElieceCCA2PrivateKeyParameters.rg().rh();
    this.aQb = paramMcElieceCCA2PrivateKeyParameters.kC();
    this.bdK = paramMcElieceCCA2PrivateKeyParameters.rj();
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (paramBoolean)
    {
      if ((paramCipherParameters instanceof ParametersWithRandom))
      {
        paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
        this.aKZ = paramCipherParameters.iN();
        this.bgd = ((McElieceCCA2PublicKeyParameters)paramCipherParameters.lh());
        ˊ((McElieceCCA2PublicKeyParameters)this.bgd);
        return;
      }
      this.aKZ = new SecureRandom();
      this.bgd = ((McElieceCCA2PublicKeyParameters)paramCipherParameters);
      ˊ((McElieceCCA2PublicKeyParameters)this.bgd);
      return;
    }
    this.bgd = ((McElieceCCA2PrivateKeyParameters)paramCipherParameters);
    ˊ((McElieceCCA2PrivateKeyParameters)this.bgd);
  }
  
  public byte[] וֹ(byte[] paramArrayOfByte)
  {
    Object localObject1 = new GF2Vector(this.avM, this.aKZ);
    byte[] arrayOfByte = ((GF2Vector)localObject1).getEncoded();
    Object localObject2 = ByteUtils.ﹶ(arrayOfByte, paramArrayOfByte);
    this.ber.update((byte[])localObject2, 0, localObject2.length);
    localObject2 = new byte[this.ber.iJ()];
    this.ber.doFinal((byte[])localObject2, 0);
    localObject2 = Conversions.ˋ(this.aQb, this.bdK, (byte[])localObject2);
    localObject1 = McElieceCCA2Primitives.ˊ((McElieceCCA2PublicKeyParameters)this.bgd, (GF2Vector)localObject1, (GF2Vector)localObject2).getEncoded();
    localObject2 = new DigestRandomGenerator(new SHA1Digest());
    ((DigestRandomGenerator)localObject2).ʲ(arrayOfByte);
    arrayOfByte = new byte[paramArrayOfByte.length];
    ((DigestRandomGenerator)localObject2).nextBytes(arrayOfByte);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)(arrayOfByte[i] ^ paramArrayOfByte[i]));
      i += 1;
    }
    return ByteUtils.ﹶ((byte[])localObject1, arrayOfByte);
  }
  
  public byte[] ﹲ(byte[] paramArrayOfByte)
  {
    int i = this.aQb + 7 >> 3;
    int j = paramArrayOfByte.length - i;
    paramArrayOfByte = ByteUtils.ᐩ(paramArrayOfByte, i);
    byte b = paramArrayOfByte[0];
    paramArrayOfByte = paramArrayOfByte[1];
    Object localObject = GF2Vector.ʼ(this.aQb, b);
    localObject = McElieceCCA2Primitives.ˊ((McElieceCCA2PrivateKeyParameters)this.bgd, (GF2Vector)localObject);
    byte[] arrayOfByte2 = localObject[0].getEncoded();
    localObject = localObject[1];
    DigestRandomGenerator localDigestRandomGenerator = new DigestRandomGenerator(new SHA1Digest());
    localDigestRandomGenerator.ʲ(arrayOfByte2);
    byte[] arrayOfByte1 = new byte[j];
    localDigestRandomGenerator.nextBytes(arrayOfByte1);
    i = 0;
    while (i < j)
    {
      arrayOfByte1[i] = ((byte)(arrayOfByte1[i] ^ paramArrayOfByte[i]));
      i += 1;
    }
    paramArrayOfByte = ByteUtils.ﹶ(arrayOfByte2, arrayOfByte1);
    arrayOfByte2 = new byte[this.ber.iJ()];
    this.ber.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    this.ber.doFinal(arrayOfByte2, 0);
    if (!Conversions.ˋ(this.aQb, this.bdK, arrayOfByte2).equals(localObject)) {
      throw new Exception("Bad Padding: invalid ciphertext");
    }
    return arrayOfByte1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceFujisakiCipher
 * JD-Core Version:    0.7.0.1
 */