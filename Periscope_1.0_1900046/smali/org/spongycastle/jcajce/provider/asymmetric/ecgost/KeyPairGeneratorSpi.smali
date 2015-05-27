.class public Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source ""


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aFb:I

.field aJn:Z

.field aWI:Ljava/lang/String;

.field aWM:Ljava/lang/Object;

.field aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

.field aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const-string v0, "ECGOST3410"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    .line 32
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    .line 34
    const/16 v0, 0xef

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aFb:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aJn:Z

    .line 41
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    .line 154
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aJn:Z

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EC Key Pair Generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v5, v0

    .line 161
    invoke-virtual {v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-object v6, v0

    .line 163
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-object v7, v0

    .line 167
    new-instance v8, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v8, v0, v5, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    .line 168
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v1, v2, v6, v8, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    invoke-direct {v0, v8, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v2, v3, v6}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 178
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    move-object v7, v0

    .line 180
    new-instance v8, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v8, v0, v5, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    .line 182
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v1, v2, v6, v8, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v0, v8, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    .line 47
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aFb:I

    .line 48
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 50
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, v0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 58
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "key size not configurable."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "unknown key size."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :goto_0
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 12

    .line 72
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-object v7, v0

    .line 75
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 77
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 79
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aJn:Z

    .line 81
    goto/16 :goto_1

    .line 82
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_1

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    move-object v7, v0

    .line 85
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 87
    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 88
    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v8, v9, v2, v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 92
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aJn:Z

    .line 94
    goto/16 :goto_1

    .line 95
    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;

    if-eqz v0, :cond_5

    .line 99
    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_3

    .line 101
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 105
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    :goto_0
    invoke-static {v7}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ʶ(Ljava/lang/String;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v8

    .line 109
    if-nez v8, :cond_4

    .line 111
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_4
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    move-object v9, v0

    .line 124
    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v10

    .line 125
    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 127
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v10, v11, v2, v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 129
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aJn:Z

    .line 131
    goto/16 :goto_1

    .line 132
    :cond_5
    if-nez p1, :cond_6

    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 134
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v7

    .line 135
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 137
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 139
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->aJn:Z

    .line 141
    goto :goto_1

    .line 142
    :cond_6
    if-nez p1, :cond_7

    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-nez v0, :cond_7

    .line 144
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "null parameter passed but no implicitCA set"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter object not a ECParameterSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :goto_1
    return-void
.end method
