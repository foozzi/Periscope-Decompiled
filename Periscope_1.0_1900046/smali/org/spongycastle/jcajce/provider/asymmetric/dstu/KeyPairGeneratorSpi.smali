.class public Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source ""


# instance fields
.field aFa:Ljava/security/SecureRandom;

.field aJn:Z

.field aWI:Ljava/lang/String;

.field aWM:Ljava/lang/Object;

.field aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

.field aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    const-string v0, "DSTU4145"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 32
    new-instance v0, Lorg/spongycastle/crypto/generators/DSTU4145KeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DSTU4145KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    .line 34
    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aJn:Z

    .line 43
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    .line 156
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aJn:Z

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSTU Key Pair Generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v5, v0

    .line 163
    invoke-virtual {v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-object v6, v0

    .line 165
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-object v7, v0

    .line 169
    new-instance v8, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v8, v0, v5, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    .line 170
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v1, v2, v6, v8, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    invoke-direct {v0, v8, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 175
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v2, v3, v6}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 180
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    move-object v7, v0

    .line 182
    new-instance v8, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v8, v0, v5, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    .line 184
    new-instance v0, Ljava/security/KeyPair;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWI:Ljava/lang/String;

    invoke-direct {v1, v2, v6, v8, v7}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v0, v8, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    .line 49
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aFa:Ljava/security/SecureRandom;

    .line 51
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, v0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 59
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "key size not configurable."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "unknown key size."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :goto_0
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 12

    .line 73
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-object v7, v0

    .line 76
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 78
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 80
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aJn:Z

    .line 82
    goto/16 :goto_1

    .line 83
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_1

    .line 85
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    move-object v7, v0

    .line 86
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 88
    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 89
    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 91
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 93
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aJn:Z

    .line 95
    goto/16 :goto_1

    .line 96
    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;

    if-eqz v0, :cond_5

    .line 100
    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_3

    .line 102
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 106
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v7

    .line 110
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/spongycastle/asn1/ua/DSTU4145NamedCurves;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v8

    .line 111
    if-nez v8, :cond_4

    .line 113
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

    .line 116
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    move-object v9, v0

    .line 126
    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v10

    .line 127
    invoke-virtual {v9}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 129
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 131
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aJn:Z

    .line 133
    goto/16 :goto_1

    .line 134
    :cond_5
    if-nez p1, :cond_6

    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 136
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v7

    .line 137
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWM:Ljava/lang/Object;

    .line 139
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 141
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWN:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aWO:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->aJn:Z

    .line 143
    goto :goto_1

    .line 144
    :cond_6
    if-nez p1, :cond_7

    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-nez v0, :cond_7

    .line 146
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "null parameter passed but no implicitCA set"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
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

    .line 152
    :goto_1
    return-void
.end method
