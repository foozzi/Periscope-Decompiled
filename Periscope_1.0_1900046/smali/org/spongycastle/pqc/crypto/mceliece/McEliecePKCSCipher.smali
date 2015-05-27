.class public Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# instance fields
.field private aKZ:Ljava/security/SecureRandom;

.field private aQb:I

.field private avM:I

.field private bdK:I

.field public bgh:I

.field public bgi:I

.field bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 5

    .line 203
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v2

    .line 206
    array-length v0, v2

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    aget-byte v0, v2, v3

    if-nez v0, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 212
    :cond_0
    aget-byte v0, v2, v3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 214
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: invalid ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    new-array v4, v3, [B

    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    return-object v4
.end method

.method private ﹷ([B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 4

    .line 144
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgh:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->avM:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v0, p1

    const/4 v1, 0x1

    aput-byte v1, v3, v0

    .line 147
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->avM:I

    invoke-static {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ʼ(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;)I
    .locals 2

    .line 90
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    if-eqz v0, :cond_0

    .line 92
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->kC()I

    move-result v0

    return v0

    .line 95
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->kC()I

    move-result v0

    return v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V
    .locals 2

    .line 117
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aQb:I

    .line 118
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->ri()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->avM:I

    .line 120
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->avM:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgh:I

    .line 121
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aQb:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgi:I

    .line 122
    return-void
.end method

.method public ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aKZ:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aKZ:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aKZ:Ljava/security/SecureRandom;

    .line 107
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aQb:I

    .line 108
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->ri()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->avM:I

    .line 109
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->rj()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bdK:I

    .line 110
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aQb:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgi:I

    .line 111
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->avM:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgh:I

    .line 112
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 53
    if-eqz p1, :cond_1

    .line 55
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 59
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aKZ:Ljava/security/SecureRandom;

    .line 60
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    .line 63
    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aKZ:Ljava/security/SecureRandom;

    .line 67
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 68
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    goto :goto_0

    .line 73
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 74
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V

    .line 77
    :goto_0
    return-void
.end method

.method public וֹ([B)[B
    .locals 8

    .line 132
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ﹷ([B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v3

    .line 133
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aQb:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bdK:I

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aKZ:Ljava/security/SecureRandom;

    invoke-direct {v4, v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(IILjava/security/SecureRandom;)V

    .line 135
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->rw()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v5

    .line 136
    invoke-virtual {v5, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v6

    .line 137
    invoke-virtual {v6, v4}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->ˏ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v7, v0

    .line 139
    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public ﹲ([B)[B
    .locals 19

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->aQb:I

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ʼ(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v2

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgj:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    move-object v3, v0

    .line 162
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v4

    .line 163
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rl()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 164
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rt()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    .line 165
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->ru()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    .line 166
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rv()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    .line 167
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rn()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v9

    .line 168
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->ro()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    .line 171
    invoke-virtual {v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->ˎ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v11

    .line 174
    invoke-virtual {v11}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->sE()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v12

    .line 177
    invoke-virtual {v2, v12}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v13, v0

    .line 180
    invoke-virtual {v9, v13}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˎ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v14, v0

    .line 183
    invoke-static {v14, v4, v5, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v15

    .line 184
    invoke-virtual {v13, v15}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˏ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object/from16 v16, v0

    .line 187
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object/from16 v16, v0

    .line 188
    invoke-virtual {v15, v11}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v15, v0

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->avM:I

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ە(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v17

    .line 194
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object/from16 v18, v0

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object v0

    return-object v0
.end method
