.class public Lorg/spongycastle/crypto/engines/ElGamalEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final aKc:Ljava/math/BigInteger;


# instance fields
.field private aEW:Z

.field private aFa:Ljava/security/SecureRandom;

.field private aIv:I

.field private aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    .line 27
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    .line 28
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKc:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iB()I
    .locals 2

    .line 84
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aEW:Z

    if-eqz v0, :cond_0

    .line 86
    iget v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aIv:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    return v0

    .line 89
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aIv:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public iC()I
    .locals 2

    .line 101
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aEW:Z

    if-eqz v0, :cond_0

    .line 103
    iget v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aIv:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 106
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aIv:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 40
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 44
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    .line 45
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aFa:Ljava/security/SecureRandom;

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    .line 50
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aFa:Ljava/security/SecureRandom;

    .line 53
    :goto_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aEW:Z

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->kI()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aIv:I

    .line 59
    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ElGamalPublicKeyParameters are required for encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ElGamalPrivateKeyParameters are required for decryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    return-void
.end method

.method public ˑ([BII)[B
    .locals 18

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ElGamal engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aEW:Z

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aIv:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v5, v0, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/engines/ElGamalEngine;->iB()I

    move-result v5

    .line 132
    :goto_0
    move/from16 v0, p3

    if-le v0, v5, :cond_2

    .line 134
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input too large for ElGamal cipher.\n"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->kI()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v6

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-eqz v0, :cond_3

    .line 141
    div-int/lit8 v0, p3, 0x2

    new-array v7, v0, [B

    .line 142
    div-int/lit8 v0, p3, 0x2

    new-array v8, v0, [B

    .line 144
    array-length v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v1, v2, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    array-length v0, v7

    add-int v0, v0, p2

    array-length v1, v8

    move-object/from16 v2, p1

    const/4 v3, 0x0

    invoke-static {v2, v0, v8, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    new-instance v9, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v9, v0, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 148
    new-instance v10, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v10, v0, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    move-object v11, v0

    .line 153
    sget-object v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9, v0, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 155
    invoke-static {v12}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    .line 160
    :cond_3
    if-nez p2, :cond_4

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v1, p3

    if-eq v1, v0, :cond_5

    .line 162
    :cond_4
    move/from16 v0, p3

    new-array v7, v0, [B

    .line 164
    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    move/from16 v3, p3

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 168
    :cond_5
    move-object/from16 v7, p1

    .line 171
    :goto_1
    new-instance v8, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v8, v0, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 173
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 175
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input too large for ElGamal cipher.\n"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    move-object v9, v0

    .line 180
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    .line 181
    new-instance v11, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v11, v10, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 183
    :goto_2
    sget-object v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_8

    .line 185
    :cond_7
    new-instance v11, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v11, v10, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    goto :goto_2

    .line 188
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;->aKb:Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->kI()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v12

    .line 189
    invoke-virtual {v12, v11, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 190
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v11, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 192
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v15

    .line 193
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v16

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/engines/ElGamalEngine;->iC()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v17, v1

    .line 196
    array-length v0, v15

    move-object/from16 v1, v17

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_9

    .line 198
    move-object/from16 v0, v17

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    array-length v1, v15

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    array-length v1, v15

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    move-object/from16 v3, v17

    invoke-static {v15, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 202
    :cond_9
    move-object/from16 v0, v17

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    array-length v1, v15

    sub-int/2addr v0, v1

    array-length v1, v15

    const/4 v2, 0x0

    move-object/from16 v3, v17

    invoke-static {v15, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move-object/from16 v1, v17

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_a

    .line 207
    move-object/from16 v0, v17

    array-length v0, v0

    move-object/from16 v1, v16

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    move-object/from16 v1, v16

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v2, v16

    const/4 v3, 0x1

    move-object/from16 v4, v17

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 211
    :cond_a
    move-object/from16 v0, v17

    array-length v0, v0

    move-object/from16 v1, v16

    array-length v1, v1

    sub-int/2addr v0, v1

    move-object/from16 v1, v16

    array-length v1, v1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    move-object/from16 v4, v17

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    :goto_4
    return-object v17
.end method
