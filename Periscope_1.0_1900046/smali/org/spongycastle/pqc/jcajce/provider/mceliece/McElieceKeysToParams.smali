.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 13

    .line 38
    instance-of v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    move-object v12, v0

    .line 41
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->rp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->kC()I

    move-result v2

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->ri()I

    move-result v3

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v4

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->rl()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->rt()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->ru()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->rv()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->rn()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v9

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->ro()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->rZ()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify McEliece private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 7

    .line 23
    instance-of v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    if-eqz v0, :cond_0

    .line 25
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    move-object v6, v0

    .line 27
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->rp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->kC()I

    move-result v2

    invoke-virtual {v6}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->rj()I

    move-result v3

    invoke-virtual {v6}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->rw()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v4

    invoke-virtual {v6}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->rZ()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t identify McEliece public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
