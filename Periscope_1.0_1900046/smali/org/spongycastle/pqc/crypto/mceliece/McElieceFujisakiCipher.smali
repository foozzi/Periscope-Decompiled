.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aKZ:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aKZ:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aKZ:Ljava/security/SecureRandom;

    .line 99
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->rh()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    .line 100
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aQb:I

    .line 101
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->ri()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->avM:I

    .line 102
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bdK:I

    .line 103
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2

    .line 82
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->kC()I

    move-result v0

    return v0

    .line 87
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 89
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->kC()I

    move-result v0

    return v0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->rh()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    .line 109
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aQb:I

    .line 110
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bdK:I

    .line 111
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 51
    if-eqz p1, :cond_1

    .line 53
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 57
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aKZ:Ljava/security/SecureRandom;

    .line 58
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 59
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 61
    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aKZ:Ljava/security/SecureRandom;

    .line 65
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 66
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 71
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 72
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    .line 75
    :goto_0
    return-void
.end method

.method public וֹ([B)[B
    .locals 12

    .line 119
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->avM:I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aKZ:Ljava/security/SecureRandom;

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(ILjava/security/SecureRandom;)V

    .line 122
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v4

    .line 125
    invoke-static {v4, p1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v5

    .line 128
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 129
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v6, v0, [B

    .line 130
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 133
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aQb:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bdK:I

    invoke-static {v0, v1, v6}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ˋ(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v7

    .line 136
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v0, v3, v7}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v8

    .line 140
    new-instance v9, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v9, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 143
    invoke-virtual {v9, v4}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ʲ([B)V

    .line 146
    array-length v0, p1

    new-array v10, v0, [B

    .line 147
    invoke-virtual {v9, v10}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 150
    const/4 v11, 0x0

    :goto_0
    array-length v0, p1

    if-ge v11, v0, :cond_0

    .line 152
    aget-byte v0, v10, v11

    aget-byte v1, p1, v11

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v10, v11

    .line 150
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {v8, v10}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public ﹲ([B)[B
    .locals 16

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aQb:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v3, v0, 0x3

    .line 164
    move-object/from16 v0, p1

    array-length v0, v0

    sub-int v4, v0, v3

    .line 167
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ᐩ([BI)[[B

    move-result-object v5

    .line 168
    const/4 v0, 0x0

    aget-object v6, v5, v0

    .line 169
    const/4 v0, 0x1

    aget-object v7, v5, v0

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aQb:I

    invoke-static {v0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ʼ(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v8

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v0, v8}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v9

    .line 175
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v10

    .line 177
    const/4 v0, 0x1

    aget-object v11, v9, v0

    .line 180
    new-instance v12, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v12, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 183
    invoke-virtual {v12, v10}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ʲ([B)V

    .line 186
    new-array v13, v4, [B

    .line 187
    invoke-virtual {v12, v13}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 190
    const/4 v14, 0x0

    :goto_0
    if-ge v14, v4, :cond_0

    .line 192
    aget-byte v0, v13, v14

    aget-byte v1, v7, v14

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v13, v14

    .line 190
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {v10, v13}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v14

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v15, v0, [B

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    array-length v1, v14

    const/4 v2, 0x0

    invoke-interface {v0, v14, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v15, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->aQb:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->bdK:I

    invoke-static {v0, v1, v15}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ˋ(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v8

    .line 206
    invoke-virtual {v8, v11}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: invalid ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    return-object v13
.end method
