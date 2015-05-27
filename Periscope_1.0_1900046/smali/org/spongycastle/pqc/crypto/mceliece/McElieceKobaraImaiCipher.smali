.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final bgg:[B


# instance fields
.field private aKZ:Ljava/security/SecureRandom;

.field private aQb:I

.field private avM:I

.field private bdK:I

.field private ber:Lorg/spongycastle/crypto/Digest;

.field bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "a predetermined public constant"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgg:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->rh()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    .line 104
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aQb:I

    .line 105
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->ri()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->avM:I

    .line 106
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bdK:I

    .line 108
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2

    .line 89
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->kC()I

    move-result v0

    return v0

    .line 94
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 96
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->kC()I

    move-result v0

    return v0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->rh()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    .line 113
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aQb:I

    .line 114
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->ri()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->avM:I

    .line 115
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bdK:I

    .line 116
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 55
    if-eqz p1, :cond_1

    .line 57
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 61
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aKZ:Ljava/security/SecureRandom;

    .line 62
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 63
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 65
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aKZ:Ljava/security/SecureRandom;

    .line 69
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 70
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 75
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 76
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    .line 79
    :goto_0
    return-void
.end method

.method public וֹ([B)[B
    .locals 22

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v4

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->avM:I

    shr-int/lit8 v5, v0, 0x3

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aQb:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bdK:I

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ᵄ(II)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v6, v0, 0x3

    .line 127
    add-int v0, v5, v6

    sub-int/2addr v0, v4

    sget-object v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgg:[B

    array-length v1, v1

    sub-int v7, v0, v1

    .line 128
    move-object/from16 v0, p1

    array-length v0, v0

    if-le v0, v7, :cond_0

    .line 130
    move-object/from16 v0, p1

    array-length v7, v0

    .line 133
    :cond_0
    sget-object v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgg:[B

    array-length v0, v0

    add-int v8, v7, v0

    .line 134
    add-int v0, v8, v4

    sub-int/2addr v0, v5

    sub-int v9, v0, v6

    .line 137
    new-array v10, v8, [B

    .line 138
    move-object/from16 v0, p1

    array-length v0, v0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    sget-object v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgg:[B

    sget-object v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgg:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v10, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    new-array v11, v4, [B

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aKZ:Ljava/security/SecureRandom;

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 148
    new-instance v12, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v12, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 151
    invoke-virtual {v12, v11}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ʲ([B)V

    .line 154
    new-array v13, v8, [B

    .line 155
    invoke-virtual {v12, v13}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 158
    add-int/lit8 v14, v8, -0x1

    :goto_0
    if-ltz v14, :cond_1

    .line 160
    aget-byte v0, v13, v14

    aget-byte v1, v10, v14

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v13, v14

    .line 158
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v14, v0, [B

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    array-length v1, v13

    const/4 v2, 0x0

    invoke-interface {v0, v13, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v14, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 169
    add-int/lit8 v15, v4, -0x1

    :goto_1
    if-ltz v15, :cond_2

    .line 171
    aget-byte v0, v14, v15

    aget-byte v1, v11, v15

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v14, v15

    .line 169
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 175
    :cond_2
    invoke-static {v14, v13}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v15

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 181
    if-lez v9, :cond_3

    .line 183
    new-array v0, v9, [B

    move-object/from16 v16, v0

    .line 184
    const/4 v0, 0x0

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v15, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    :cond_3
    new-array v0, v6, [B

    move-object/from16 v17, v0

    .line 188
    move-object/from16 v0, v17

    const/4 v1, 0x0

    invoke-static {v15, v9, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    new-array v0, v5, [B

    move-object/from16 v18, v0

    .line 191
    add-int v0, v9, v6

    move-object/from16 v1, v18

    const/4 v2, 0x0

    invoke-static {v15, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->avM:I

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ʼ(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v19

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aQb:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bdK:I

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ˋ(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v20

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v21

    .line 204
    if-lez v9, :cond_4

    .line 207
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v0

    return-object v0

    .line 210
    :cond_4
    return-object v21
.end method

.method public ﹲ([B)[B
    .locals 26

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aQb:I

    shr-int/lit8 v4, v0, 0x3

    .line 220
    move-object/from16 v0, p1

    array-length v0, v0

    if-ge v0, v4, :cond_0

    .line 222
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: Ciphertext too short."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->avM:I

    shr-int/lit8 v6, v0, 0x3

    .line 227
    move-object/from16 v0, p1

    array-length v0, v0

    sub-int v7, v0, v4

    .line 231
    if-lez v7, :cond_1

    .line 233
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ᐩ([BI)[[B

    move-result-object v10

    .line 234
    const/4 v0, 0x0

    aget-object v8, v10, v0

    .line 235
    const/4 v0, 0x1

    aget-object v9, v10, v0

    .line 236
    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, 0x0

    new-array v8, v0, [B

    .line 240
    move-object/from16 v9, p1

    .line 244
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aQb:I

    invoke-static {v0, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ʼ(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v10

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgd:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v0, v10}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v11

    .line 249
    const/4 v0, 0x0

    aget-object v0, v11, v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v12

    .line 250
    const/4 v0, 0x1

    aget-object v13, v11, v0

    .line 253
    array-length v0, v12

    if-le v0, v6, :cond_2

    .line 256
    const/4 v0, 0x0

    invoke-static {v12, v0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ˮ([BII)[B

    move-result-object v12

    .line 260
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->aQb:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bdK:I

    invoke-static {v0, v1, v13}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ˊ(IILorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object v14

    .line 263
    invoke-static {v8, v14}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v15

    .line 264
    invoke-static {v15, v12}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ﹶ([B[B)[B

    move-result-object v15

    .line 268
    array-length v0, v15

    sub-int v16, v0, v5

    .line 269
    invoke-static {v15, v5}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ᐩ([BI)[[B

    move-result-object v17

    .line 270
    const/4 v0, 0x0

    aget-object v18, v17, v0

    .line 271
    const/4 v0, 0x1

    aget-object v19, v17, v0

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v20, v1

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v19

    array-length v1, v1

    move-object/from16 v2, v19

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->ber:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, v20

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 279
    add-int/lit8 v21, v5, -0x1

    :goto_1
    if-ltz v21, :cond_3

    .line 281
    aget-byte v0, v20, v21

    aget-byte v1, v18, v21

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v20, v21

    .line 279
    add-int/lit8 v21, v21, -0x1

    goto :goto_1

    .line 285
    :cond_3
    new-instance v21, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v1, v21

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 288
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ʲ([B)V

    .line 291
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 292
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 295
    add-int/lit8 v23, v16, -0x1

    :goto_2
    if-ltz v23, :cond_4

    .line 297
    aget-byte v0, v22, v23

    aget-byte v1, v19, v23

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v22, v23

    .line 295
    add-int/lit8 v23, v23, -0x1

    goto :goto_2

    .line 300
    :cond_4
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 302
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: invalid ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_5
    sget-object v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgg:[B

    array-length v0, v0

    sub-int v0, v16, v0

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->ᐩ([BI)[[B

    move-result-object v23

    .line 307
    const/4 v0, 0x0

    aget-object v24, v23, v0

    .line 308
    const/4 v0, 0x1

    aget-object v25, v23, v0

    .line 310
    sget-object v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->bgg:[B

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 312
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: invalid ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_6
    return-object v24
.end method
