package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PrivateKey;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McElieceCCA2PrivateKey;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2Parameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PrivateKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

public class BCMcElieceCCA2PrivateKey
  implements CipherParameters, PrivateKey
{
  private int aQb;
  private String aby;
  private int avM;
  private GF2mField bfX;
  private PolynomialGF2mSmallM bfY;
  private Permutation bfZ;
  private GF2Matrix bga;
  private PolynomialGF2mSmallM[] bgb;
  private McElieceCCA2Parameters biu;
  
  public BCMcElieceCCA2PrivateKey(String paramString, int paramInt1, int paramInt2, GF2mField paramGF2mField, PolynomialGF2mSmallM paramPolynomialGF2mSmallM, Permutation paramPermutation, GF2Matrix paramGF2Matrix, PolynomialGF2mSmallM[] paramArrayOfPolynomialGF2mSmallM)
  {
    this.aby = paramString;
    this.aQb = paramInt1;
    this.avM = paramInt2;
    this.bfX = paramGF2mField;
    this.bfY = paramPolynomialGF2mSmallM;
    this.bfZ = paramPermutation;
    this.bga = paramGF2Matrix;
    this.bgb = paramArrayOfPolynomialGF2mSmallM;
  }
  
  public BCMcElieceCCA2PrivateKey(McElieceCCA2PrivateKeyParameters paramMcElieceCCA2PrivateKeyParameters)
  {
    this(paramMcElieceCCA2PrivateKeyParameters.rp(), paramMcElieceCCA2PrivateKeyParameters.kC(), paramMcElieceCCA2PrivateKeyParameters.ri(), paramMcElieceCCA2PrivateKeyParameters.rk(), paramMcElieceCCA2PrivateKeyParameters.rl(), paramMcElieceCCA2PrivateKeyParameters.rm(), paramMcElieceCCA2PrivateKeyParameters.rn(), paramMcElieceCCA2PrivateKeyParameters.ro());
    this.biu = paramMcElieceCCA2PrivateKeyParameters.rg();
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof BCMcElieceCCA2PrivateKey))) {
      return false;
    }
    paramObject = (BCMcElieceCCA2PrivateKey)paramObject;
    return (this.aQb == paramObject.aQb) && (this.avM == paramObject.avM) && (this.bfX.equals(paramObject.bfX)) && (this.bfY.equals(paramObject.bfY)) && (this.bfZ.equals(paramObject.bfZ)) && (this.bga.equals(paramObject.bga));
  }
  
  public String getAlgorithm()
  {
    return "McEliece";
  }
  
  public byte[] getEncoded()
  {
    Object localObject = new McElieceCCA2PrivateKey(new ASN1ObjectIdentifier(this.aby), this.aQb, this.avM, this.bfX, this.bfY, this.bfZ, this.bga, this.bgb);
    try
    {
      localObject = new PrivateKeyInfo(new AlgorithmIdentifier(nV(), DERNull.abj), (ASN1Encodable)localObject);
    }
    catch (IOException localIOException1)
    {
      localIOException1.printStackTrace();
      return null;
    }
    try
    {
      byte[] arrayOfByte = localIOException1.getEncoded();
      return arrayOfByte;
    }
    catch (IOException localIOException2)
    {
      localIOException2.printStackTrace();
    }
    return null;
  }
  
  public String getFormat()
  {
    return null;
  }
  
  public int hashCode()
  {
    return this.avM + this.aQb + this.bfX.hashCode() + this.bfY.hashCode() + this.bfZ.hashCode() + this.bga.hashCode();
  }
  
  public int kC()
  {
    return this.aQb;
  }
  
  protected ASN1ObjectIdentifier nV()
  {
    return new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.2");
  }
  
  public McElieceCCA2Parameters rY()
  {
    return this.biu;
  }
  
  public int ri()
  {
    return this.avM;
  }
  
  public GF2mField rk()
  {
    return this.bfX;
  }
  
  public PolynomialGF2mSmallM rl()
  {
    return this.bfY;
  }
  
  public Permutation rm()
  {
    return this.bfZ;
  }
  
  public GF2Matrix rn()
  {
    return this.bga;
  }
  
  public PolynomialGF2mSmallM[] ro()
  {
    return this.bgb;
  }
  
  public String rp()
  {
    return this.aby;
  }
  
  public String toString()
  {
    String str = "" + " extension degree of the field      : " + this.aQb + "\n";
    str = str + " dimension of the code              : " + this.avM + "\n";
    return str + " irreducible Goppa polynomial       : " + this.bfY + "\n";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.BCMcElieceCCA2PrivateKey
 * JD-Core Version:    0.7.0.1
 */