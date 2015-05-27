package org.spongycastle.pqc.crypto.mceliece;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.prng.DigestRandomGenerator;
import org.spongycastle.pqc.crypto.MessageEncryptor;
import org.spongycastle.pqc.math.linearalgebra.ByteUtils;
import org.spongycastle.pqc.math.linearalgebra.GF2Vector;
import org.spongycastle.pqc.math.linearalgebra.IntegerFunctions;

public class McElieceKobaraImaiCipher
  implements MessageEncryptor
{
  public static final byte[] bgg = "a predetermined public constant".getBytes();
  private SecureRandom aKZ;
  private int aQb;
  private int avM;
  private int bdK;
  private Digest ber;
  McElieceCCA2KeyParameters bgd;
  
  private void ˊ(McElieceCCA2PublicKeyParameters paramMcElieceCCA2PublicKeyParameters)
  {
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
    this.avM = paramMcElieceCCA2PrivateKeyParameters.ri();
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
    int n = this.ber.iJ();
    int k = this.avM >> 3;
    int m = IntegerFunctions.ᵄ(this.aQb, this.bdK).bitLength() - 1 >> 3;
    int j = k + m - n - bgg.length;
    int i = j;
    if (paramArrayOfByte.length > j) {
      i = paramArrayOfByte.length;
    }
    int i1 = i + bgg.length;
    j = i1 + n - k - m;
    Object localObject1 = new byte[i1];
    System.arraycopy(paramArrayOfByte, 0, localObject1, 0, paramArrayOfByte.length);
    System.arraycopy(bgg, 0, localObject1, i, bgg.length);
    paramArrayOfByte = new byte[n];
    this.aKZ.nextBytes(paramArrayOfByte);
    Object localObject3 = new DigestRandomGenerator(new SHA1Digest());
    ((DigestRandomGenerator)localObject3).ʲ(paramArrayOfByte);
    Object localObject2 = new byte[i1];
    ((DigestRandomGenerator)localObject3).nextBytes((byte[])localObject2);
    i = i1 - 1;
    while (i >= 0)
    {
      localObject2[i] = ((byte)(localObject2[i] ^ localObject1[i]));
      i -= 1;
    }
    localObject1 = new byte[this.ber.iJ()];
    this.ber.update((byte[])localObject2, 0, localObject2.length);
    this.ber.doFinal((byte[])localObject1, 0);
    i = n - 1;
    while (i >= 0)
    {
      localObject1[i] = ((byte)(localObject1[i] ^ paramArrayOfByte[i]));
      i -= 1;
    }
    localObject1 = ByteUtils.ﹶ((byte[])localObject1, (byte[])localObject2);
    paramArrayOfByte = new byte[0];
    if (j > 0)
    {
      paramArrayOfByte = new byte[j];
      System.arraycopy(localObject1, 0, paramArrayOfByte, 0, j);
    }
    localObject2 = new byte[m];
    System.arraycopy(localObject1, j, localObject2, 0, m);
    localObject3 = new byte[k];
    System.arraycopy(localObject1, j + m, localObject3, 0, k);
    localObject1 = GF2Vector.ʼ(this.avM, (byte[])localObject3);
    localObject2 = Conversions.ˋ(this.aQb, this.bdK, (byte[])localObject2);
    localObject1 = McElieceCCA2Primitives.ˊ((McElieceCCA2PublicKeyParameters)this.bgd, (GF2Vector)localObject1, (GF2Vector)localObject2).getEncoded();
    if (j > 0) {
      return ByteUtils.ﹶ(paramArrayOfByte, (byte[])localObject1);
    }
    return localObject1;
  }
  
  public byte[] ﹲ(byte[] paramArrayOfByte)
  {
    int k = this.aQb >> 3;
    if (paramArrayOfByte.length < k) {
      throw new Exception("Bad Padding: Ciphertext too short.");
    }
    int i = this.ber.iJ();
    int j = this.avM >> 3;
    k = paramArrayOfByte.length - k;
    if (k > 0)
    {
      localObject = ByteUtils.ᐩ(paramArrayOfByte, k);
      paramArrayOfByte = localObject[0];
      localObject = localObject[1];
    }
    else
    {
      arrayOfByte = new byte[0];
      localObject = paramArrayOfByte;
      paramArrayOfByte = arrayOfByte;
    }
    Object localObject = GF2Vector.ʼ(this.aQb, (byte[])localObject);
    localObject = McElieceCCA2Primitives.ˊ((McElieceCCA2PrivateKeyParameters)this.bgd, (GF2Vector)localObject);
    byte[] arrayOfByte = localObject[0].getEncoded();
    GF2Vector localGF2Vector = localObject[1];
    localObject = arrayOfByte;
    if (arrayOfByte.length > j) {
      localObject = ByteUtils.ˮ(arrayOfByte, 0, j);
    }
    paramArrayOfByte = ByteUtils.ﹶ(ByteUtils.ﹶ(paramArrayOfByte, Conversions.ˊ(this.aQb, this.bdK, localGF2Vector)), (byte[])localObject);
    j = paramArrayOfByte.length - i;
    paramArrayOfByte = ByteUtils.ᐩ(paramArrayOfByte, i);
    localObject = paramArrayOfByte[0];
    paramArrayOfByte = paramArrayOfByte[1];
    arrayOfByte = new byte[this.ber.iJ()];
    this.ber.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    this.ber.doFinal(arrayOfByte, 0);
    i -= 1;
    while (i >= 0)
    {
      arrayOfByte[i] = ((byte)(arrayOfByte[i] ^ localObject[i]));
      i -= 1;
    }
    localObject = new DigestRandomGenerator(new SHA1Digest());
    ((DigestRandomGenerator)localObject).ʲ(arrayOfByte);
    arrayOfByte = new byte[j];
    ((DigestRandomGenerator)localObject).nextBytes(arrayOfByte);
    i = j - 1;
    while (i >= 0)
    {
      arrayOfByte[i] = ((byte)(arrayOfByte[i] ^ paramArrayOfByte[i]));
      i -= 1;
    }
    if (arrayOfByte.length < j) {
      throw new Exception("Bad Padding: invalid ciphertext");
    }
    paramArrayOfByte = ByteUtils.ᐩ(arrayOfByte, j - bgg.length);
    localObject = paramArrayOfByte[0];
    if (!ByteUtils.equals(paramArrayOfByte[1], bgg)) {
      throw new Exception("Bad Padding: invalid ciphertext");
    }
    return localObject;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceKobaraImaiCipher
 * JD-Core Version:    0.7.0.1
 */