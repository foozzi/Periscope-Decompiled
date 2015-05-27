.class public Lorg/spongycastle/crypto/tls/TlsBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field private aUC:Z

.field protected aUO:[B

.field protected aUP:Z

.field protected aUQ:Lorg/spongycastle/crypto/BlockCipher;

.field protected aUR:Lorg/spongycastle/crypto/BlockCipher;

.field protected aUS:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected aUT:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V
    .locals 17

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 45
    const/16 v0, 0x100

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUO:[B

    .line 46
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->lF()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUO:[B

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    .line 48
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˏ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUP:Z

    .line 49
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUC:Z

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    .line 51
    mul-int/lit8 v0, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    add-int v6, v0, v1

    .line 55
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUP:Z

    if-nez v0, :cond_0

    .line 57
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 60
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v7

    .line 62
    const/4 v8, 0x0

    .line 64
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsMac;

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object v3, v7

    move v4, v8

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    move-object v9, v0

    .line 66
    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    add-int/lit8 v8, v0, 0x0

    .line 67
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsMac;

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object v3, v7

    move v4, v8

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    move-object v10, v0

    .line 69
    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    add-int/2addr v8, v0

    .line 71
    new-instance v11, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v11, v7, v8, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 72
    add-int v8, v8, p6

    .line 73
    new-instance v12, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v12, v7, v8, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 74
    add-int v8, v8, p6

    .line 77
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUP:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v13, v0, [B

    .line 80
    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v14, v0, [B

    goto :goto_0

    .line 84
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr v0, v8

    invoke-static {v7, v8, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 85
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr v8, v0

    .line 86
    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr v0, v8

    invoke-static {v7, v8, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 87
    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr v8, v0

    .line 90
    :goto_0
    if-eq v8, v6, :cond_2

    .line 92
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 96
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->mM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 99
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 100
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUQ:Lorg/spongycastle/crypto/BlockCipher;

    .line 101
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUR:Lorg/spongycastle/crypto/BlockCipher;

    .line 102
    new-instance v15, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v15, v12, v14}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 103
    new-instance v16, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, v16

    invoke-direct {v0, v11, v13}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    goto :goto_1

    .line 107
    :cond_3
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 108
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 109
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUQ:Lorg/spongycastle/crypto/BlockCipher;

    .line 110
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUR:Lorg/spongycastle/crypto/BlockCipher;

    .line 111
    new-instance v15, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v15, v11, v13}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 112
    new-instance v16, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v14}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 115
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUQ:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v15}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUR:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected ˊ([BIIII)I
    .locals 9

    .line 319
    add-int v2, p2, p3

    .line 320
    add-int/lit8 v0, v2, -0x1

    aget-byte v3, p1, v0

    .line 321
    and-int/lit16 v4, v3, 0xff

    .line 322
    add-int/lit8 v5, v4, 0x1

    .line 324
    const/4 v6, 0x0

    .line 325
    const/4 v7, 0x0

    .line 327
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt v5, p4, :cond_1

    :cond_0
    add-int v0, p5, v5

    if-le v0, p3, :cond_2

    .line 329
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 333
    :cond_2
    sub-int v8, v2, v5

    .line 336
    :cond_3
    move v0, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v0, p1, v0

    xor-int/2addr v0, v3

    or-int/2addr v0, v7

    int-to-byte v7, v0

    .line 338
    if-lt v8, v2, :cond_3

    .line 340
    move v6, v5

    .line 342
    if-eqz v7, :cond_4

    .line 344
    const/4 v5, 0x0

    .line 350
    :cond_4
    :goto_0
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUO:[B

    .line 351
    :goto_1
    const/16 v0, 0x100

    if-ge v6, v0, :cond_5

    .line 353
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, v8, v0

    xor-int/2addr v0, v3

    or-int/2addr v0, v7

    int-to-byte v7, v0

    goto :goto_1

    .line 356
    :cond_5
    const/4 v0, 0x0

    aget-byte v0, v8, v0

    xor-int/2addr v0, v7

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v8, v1

    .line 359
    return v5
.end method

.method public ˊ(JS[BII)[B
    .locals 17

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUQ:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v7

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v8

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v9

    .line 157
    move/from16 v10, p6

    .line 158
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    if-nez v0, :cond_0

    .line 160
    add-int/2addr v10, v8

    .line 163
    :cond_0
    add-int/lit8 v0, v7, -0x1

    rem-int v1, v10, v7

    sub-int v11, v0, v1

    .line 166
    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    rsub-int v0, v11, 0xff

    div-int v12, v0, v7

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lG()Ljava/security/SecureRandom;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0, v12}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->ˋ(Ljava/security/SecureRandom;I)I

    move-result v13

    .line 171
    mul-int v0, v13, v7

    add-int/2addr v11, v0

    .line 174
    :cond_1
    add-int v0, p6, v8

    add-int/2addr v0, v11

    add-int/lit8 v12, v0, 0x1

    .line 175
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUP:Z

    if-eqz v0, :cond_2

    .line 177
    add-int/2addr v12, v7

    .line 180
    :cond_2
    new-array v13, v12, [B

    .line 181
    const/4 v14, 0x0

    .line 183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUP:Z

    if-eqz v0, :cond_3

    .line 185
    new-array v15, v7, [B

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lF()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v0

    invoke-interface {v0, v15}, Lorg/spongycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUQ:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v15}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 190
    const/4 v0, 0x0

    invoke-static {v15, v0, v13, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    add-int/lit8 v14, v7, 0x0

    .line 194
    :cond_3
    move v15, v14

    .line 196
    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v13, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int v14, v14, p6

    .line 199
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    if-nez v0, :cond_4

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˎ(JS[BII)[B

    move-result-object v16

    .line 202
    move-object/from16 v0, v16

    array-length v0, v0

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v13, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move-object/from16 v0, v16

    array-length v0, v0

    add-int/2addr v14, v0

    .line 206
    :cond_4
    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-gt v0, v11, :cond_5

    .line 208
    move v0, v14

    add-int/lit8 v14, v14, 0x1

    int-to-byte v1, v11

    aput-byte v1, v13, v0

    .line 206
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 211
    :cond_5
    move/from16 v16, v15

    :goto_1
    move/from16 v0, v16

    if-ge v0, v14, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUQ:Lorg/spongycastle/crypto/BlockCipher;

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-interface {v0, v13, v1, v13, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 211
    add-int v16, v16, v7

    goto :goto_1

    .line 216
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    if-eqz v0, :cond_7

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object v4, v13

    move v6, v14

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˎ(JS[BII)[B

    move-result-object v16

    .line 219
    move-object/from16 v0, v16

    array-length v0, v0

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v2, v13, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    move-object/from16 v0, v16

    array-length v0, v0

    add-int/2addr v14, v0

    .line 225
    :cond_7
    return-object v13
.end method

.method protected ˋ(Ljava/security/SecureRandom;I)I
    .locals 3

    .line 366
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    .line 367
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->ᒣ(I)I

    move-result v2

    .line 368
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public ˋ(JS[BII)[B
    .locals 20

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUR:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v9

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v10

    .line 234
    move v11, v9

    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    if-eqz v0, :cond_0

    .line 237
    add-int/2addr v11, v10

    goto :goto_0

    .line 241
    :cond_0
    add-int/lit8 v0, v10, 0x1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 244
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUP:Z

    if-eqz v0, :cond_1

    .line 246
    add-int/2addr v11, v9

    .line 249
    :cond_1
    move/from16 v0, p6

    if-ge v0, v11, :cond_2

    .line 251
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 254
    :cond_2
    move/from16 v12, p6

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    if-eqz v0, :cond_3

    .line 257
    sub-int/2addr v12, v10

    .line 260
    :cond_3
    rem-int v0, v12, v9

    if-eqz v0, :cond_4

    .line 262
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 265
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    if-eqz v0, :cond_6

    .line 267
    add-int v13, p5, p6

    .line 268
    sub-int v0, v13, v10

    move-object/from16 v1, p4

    invoke-static {v1, v0, v13}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    sub-int v6, p6, v10

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˎ(JS[BII)[B

    move-result-object v15

    .line 271
    invoke-static {v15, v14}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v16, 0x1

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    .line 273
    :goto_1
    if-eqz v16, :cond_6

    .line 275
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 279
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUP:Z

    if-eqz v0, :cond_7

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUR:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v1, v2, v3, v4, v9}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 283
    add-int p5, p5, v9

    .line 284
    sub-int/2addr v12, v9

    .line 287
    :cond_7
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_8

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUR:Lorg/spongycastle/crypto/BlockCipher;

    add-int v1, p5, v13

    add-int v2, p5, v13

    move-object/from16 v3, p4

    move-object/from16 v4, p4

    invoke-interface {v0, v3, v1, v4, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 287
    add-int/2addr v13, v9

    goto :goto_2

    .line 293
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move v3, v12

    move v4, v9

    move-object/from16 v5, p0

    iget-boolean v5, v5, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    move v5, v10

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->ˊ([BIIII)I

    move-result v13

    .line 295
    sub-int v14, v12, v13

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUC:Z

    if-nez v0, :cond_c

    .line 299
    sub-int/2addr v14, v10

    .line 300
    move v15, v14

    .line 301
    add-int v16, p5, v15

    .line 302
    add-int v0, v16, v10

    move-object/from16 v1, p4

    move/from16 v2, v16

    invoke-static {v1, v2, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move v6, v15

    sub-int v7, v12, v10

    move-object/from16 v8, p0

    iget-object v8, v8, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->aUO:[B

    invoke-virtual/range {v0 .. v8}, Lorg/spongycastle/crypto/tls/TlsMac;->ˊ(JS[BIII[B)[B

    move-result-object v18

    .line 306
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v19, 0x1

    goto :goto_4

    :cond_a
    const/16 v19, 0x0

    .line 308
    :goto_4
    if-nez v19, :cond_b

    if-nez v13, :cond_c

    .line 310
    :cond_b
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 314
    :cond_c
    add-int v0, p5, v14

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v1, v2, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected ᒣ(I)I
    .locals 2

    .line 373
    if-nez p1, :cond_0

    .line 375
    const/16 v0, 0x20

    return v0

    .line 378
    :cond_0
    const/4 v1, 0x0

    .line 379
    :goto_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    .line 381
    add-int/lit8 v1, v1, 0x1

    .line 382
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    return v1
.end method
