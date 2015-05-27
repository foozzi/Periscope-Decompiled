.class public Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 27

    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v19

    .line 36
    ushr-int/lit8 v20, v19, 0x1

    .line 37
    sub-int v21, v19, v20

    .line 38
    div-int/lit8 v22, v19, 0x3

    .line 39
    ushr-int/lit8 v23, v19, 0x2

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v15

    .line 46
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ˊ(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 53
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ˊ(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 56
    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v24

    .line 57
    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 59
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 67
    invoke-virtual {v13}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 73
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 74
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v13}, Lorg/spongycastle/math/ec/WNafUtil;->ᐨ(Ljava/math/BigInteger;)I

    move-result v0

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 85
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ˊ(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 86
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 94
    move-object/from16 v18, v11

    .line 95
    move-object v11, v12

    .line 96
    move-object/from16 v12, v18

    .line 99
    :cond_3
    sget-object v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 100
    sget-object v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 101
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 106
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 113
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    .line 114
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    .line 115
    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    .line 117
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v13, v15}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    move-object v3, v13

    move-object v4, v15

    move-object v5, v14

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    invoke-direct/range {v2 .. v10}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method protected ˊ(ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    .line 133
    :goto_0
    new-instance v2, Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v2, p1, v1, v0}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 135
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->kD()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    goto :goto_0

    .line 150
    :cond_2
    return-object v2
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->aNm:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    .line 26
    return-void
.end method
