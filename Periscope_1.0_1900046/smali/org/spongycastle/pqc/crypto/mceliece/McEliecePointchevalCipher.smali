.class public Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# instance fields
.field private aKZ:Ljava/security/SecureRandom;

.field private aQb:I

.field private avM:I

.field private bdK:I

.field private ber:Lorg/spongycastle/crypto/Digest;

.field bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2

    .line 83
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->kC()I

    move-result v0

    return v0

    .line 88
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 90
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->kC()I

    move-result v0

    return v0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->rh()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ber:Lorg/spongycastle/crypto/Digest;

    .line 120
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aQb:I

    .line 121
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->ri()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->avM:I

    .line 122
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bdK:I

    .line 123
    return-void
.end method

.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aKZ:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aKZ:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aKZ:Ljava/security/SecureRandom;

    .line 111
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->rh()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ber:Lorg/spongycastle/crypto/Digest;

    .line 112
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aQb:I

    .line 113
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->ri()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->avM:I

    .line 114
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bdK:I

    .line 115
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 46
    if-eqz p1, :cond_1

    .line 48
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 52
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aKZ:Ljava/security/SecureRandom;

    .line 53
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 54
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aKZ:Ljava/security/SecureRandom;

    .line 60
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 66
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 67
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    .line 70
    :goto_0
    return-void
.end method

.method public וֹ([B)[B
    .locals 14

    .line 129
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->avM:I

    shr-int/lit8 v3, v0, 0x3

    .line 132
    new-array v4, v3, [B

    .line 133
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aKZ:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 136
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->avM:I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aKZ:Ljava/security/SecureRandom;

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(ILjava/security/SecureRandom;)V

    .line 139
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v6

    .line 142
    invoke-static {p1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v7

    .line 145
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ber:Lorg/spongycastle/crypto/Digest;

    array-length v1, v7

    const/4 v2, 0x0

    invoke-interface {v0, v7, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 146
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v8, v0, [B

    .line 147
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ber:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 151
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aQb:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bdK:I

    invoke-static {v0, v1, v8}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ˋ(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v9

    .line 154
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v0, v5, v9}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v10

    .line 158
    new-instance v11, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v11, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 161
    invoke-virtual {v11, v6}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ʲ([B)V

    .line 164
    array-length v0, p1

    add-int/2addr v0, v3

    new-array v12, v0, [B

    .line 165
    invoke-virtual {v11, v12}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 168
    const/4 v13, 0x0

    :goto_0
    array-length v0, p1

    if-ge v13, v0, :cond_0

    .line 170
    aget-byte v0, v12, v13

    aget-byte v1, p1, v13

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v12, v13

    .line 168
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 173
    :cond_0
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v3, :cond_1

    .line 175
    array-length v0, p1

    add-int/2addr v0, v13

    aget-byte v1, v12, v0

    aget-byte v2, v4, v13

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v12, v0

    .line 173
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 179
    :cond_1
    invoke-static {v10, v12}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public ﹲ([B)[B
    .locals 17

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aQb:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v3, v0, 0x3

    .line 187
    move-object/from16 v0, p1

    array-length v0, v0

    sub-int v4, v0, v3

    .line 190
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ᐩ([BI)[[B

    move-result-object v5

    .line 191
    const/4 v0, 0x0

    aget-object v6, v5, v0

    .line 192
    const/4 v0, 0x1

    aget-object v7, v5, v0

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aQb:I

    invoke-static {v0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ʼ(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v8

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v0, v8}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v9

    .line 198
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v10

    .line 200
    const/4 v0, 0x1

    aget-object v11, v9, v0

    .line 203
    new-instance v12, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v12, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 206
    invoke-virtual {v12, v10}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ʲ([B)V

    .line 209
    new-array v13, v4, [B

    .line 210
    invoke-virtual {v12, v13}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 213
    const/4 v14, 0x0

    :goto_0
    if-ge v14, v4, :cond_0

    .line 215
    aget-byte v0, v13, v14

    aget-byte v1, v7, v14

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v13, v14

    .line 213
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ber:Lorg/spongycastle/crypto/Digest;

    array-length v1, v13

    const/4 v2, 0x0

    invoke-interface {v0, v13, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v14, v0, [B

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->ber:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v14, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->aQb:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->bdK:I

    invoke-static {v0, v1, v14}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ˋ(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v8

    .line 227
    invoke-virtual {v8, v11}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: Invalid ciphertext."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->avM:I

    shr-int/lit8 v15, v0, 0x3

    .line 234
    sub-int v0, v4, v15

    invoke-static {v13, v0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ᐩ([BI)[[B

    move-result-object v16

    .line 237
    const/4 v0, 0x0

    aget-object v0, v16, v0

    return-object v0
.end method
