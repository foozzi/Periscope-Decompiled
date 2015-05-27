package org.spongycastle.pqc.crypto.mceliece;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.MessageEncryptor;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2Vector;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.GoppaCode;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;
import org.spongycastle.pqc.math.linearalgebra.Vector;

public class McEliecePKCSCipher
  implements MessageEncryptor
{
  private SecureRandom aKZ;
  private int aQb;
  private int avM;
  private int bdK;
  public int bgh;
  public int bgi;
  McElieceKeyParameters bgj;
  
  private byte[] ˊ(GF2Vector paramGF2Vector)
  {
    paramGF2Vector = paramGF2Vector.getEncoded();
    int i = paramGF2Vector.length - 1;
    while ((i >= 0) && (paramGF2Vector[i] == 0)) {
      i -= 1;
    }
    if (paramGF2Vector[i] != 1) {
      throw new Exception("Bad Padding: invalid ciphertext");
    }
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(paramGF2Vector, 0, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  private GF2Vector ﹷ(byte[] paramArrayOfByte)
  {
    int j = this.bgh;
    int i;
    if ((this.avM & 0x7) != 0) {
      i = 1;
    } else {
      i = 0;
    }
    byte[] arrayOfByte = new byte[j + i];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    arrayOfByte[paramArrayOfByte.length] = 1;
    return GF2Vector.ʼ(this.avM, arrayOfByte);
  }
  
  public int ˊ(McElieceKeyParameters paramMcElieceKeyParameters)
  {
    if ((paramMcElieceKeyParameters instanceof McEliecePublicKeyParameters)) {
      return ((McEliecePublicKeyParameters)paramMcElieceKeyParameters).kC();
    }
    if ((paramMcElieceKeyParameters instanceof McEliecePrivateKeyParameters)) {
      return ((McEliecePrivateKeyParameters)paramMcElieceKeyParameters).kC();
    }
    throw new IllegalArgumentException("unsupported type");
  }
  
  public void ˊ(McEliecePrivateKeyParameters paramMcEliecePrivateKeyParameters)
  {
    this.aQb = paramMcEliecePrivateKeyParameters.kC();
    this.avM = paramMcEliecePrivateKeyParameters.ri();
    this.bgh = (this.avM >> 3);
    this.bgi = (this.aQb >> 3);
  }
  
  public void ˊ(McEliecePublicKeyParameters paramMcEliecePublicKeyParameters)
  {
    SecureRandom localSecureRandom;
    if (this.aKZ != null) {
      localSecureRandom = this.aKZ;
    } else {
      localSecureRandom = new SecureRandom();
    }
    this.aKZ = localSecureRandom;
    this.aQb = paramMcEliecePublicKeyParameters.kC();
    this.avM = paramMcEliecePublicKeyParameters.ri();
    this.bdK = paramMcEliecePublicKeyParameters.rj();
    this.bgi = (this.aQb >> 3);
    this.bgh = (this.avM >> 3);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (paramBoolean)
    {
      if ((paramCipherParameters instanceof ParametersWithRandom))
      {
        paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
        this.aKZ = paramCipherParameters.iN();
        this.bgj = ((McEliecePublicKeyParameters)paramCipherParameters.lh());
        ˊ((McEliecePublicKeyParameters)this.bgj);
        return;
      }
      this.aKZ = new SecureRandom();
      this.bgj = ((McEliecePublicKeyParameters)paramCipherParameters);
      ˊ((McEliecePublicKeyParameters)this.bgj);
      return;
    }
    this.bgj = ((McEliecePrivateKeyParameters)paramCipherParameters);
    ˊ((McEliecePrivateKeyParameters)this.bgj);
  }
  
  public byte[] וֹ(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = ﹷ(paramArrayOfByte);
    GF2Vector localGF2Vector = new GF2Vector(this.aQb, this.bdK, this.aKZ);
    return ((GF2Vector)((McEliecePublicKeyParameters)this.bgj).rw().ˊ(paramArrayOfByte).ˏ(localGF2Vector)).getEncoded();
  }
  
  public byte[] ﹲ(byte[] paramArrayOfByte)
  {
    GF2Vector localGF2Vector = GF2Vector.ʼ(this.aQb, paramArrayOfByte);
    Object localObject3 = (McEliecePrivateKeyParameters)this.bgj;
    Object localObject2 = ((McEliecePrivateKeyParameters)localObject3).rk();
    PolynomialGF2mSmallM localPolynomialGF2mSmallM = ((McEliecePrivateKeyParameters)localObject3).rl();
    paramArrayOfByte = ((McEliecePrivateKeyParameters)localObject3).rt();
    Object localObject1 = ((McEliecePrivateKeyParameters)localObject3).ru();
    Permutation localPermutation = ((McEliecePrivateKeyParameters)localObject3).rv();
    GF2Matrix localGF2Matrix = ((McEliecePrivateKeyParameters)localObject3).rn();
    localObject3 = ((McEliecePrivateKeyParameters)localObject3).ro();
    localPermutation = ((Permutation)localObject1).ˎ(localPermutation);
    localGF2Vector = (GF2Vector)localGF2Vector.ˋ(localPermutation.sE());
    localObject2 = GoppaCode.ˊ((GF2Vector)localGF2Matrix.ˎ(localGF2Vector), (GF2mField)localObject2, localPolynomialGF2mSmallM, (PolynomialGF2mSmallM[])localObject3);
    localObject1 = (GF2Vector)((GF2Vector)localGF2Vector.ˏ((Vector)localObject2)).ˋ((Permutation)localObject1);
    localObject2 = (GF2Vector)((GF2Vector)localObject2).ˋ(localPermutation);
    return ˊ((GF2Vector)paramArrayOfByte.ˊ(((GF2Vector)localObject1).ە(this.avM)));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McEliecePKCSCipher
 * JD-Core Version:    0.7.0.1
 */