.class public Lorg/spongycastle/crypto/tls/TlsAEADCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected aNz:I

.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected aUJ:I

.field protected aUK:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field protected aUL:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field protected aUM:[B

.field protected aUN:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V
    .locals 15

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 30
    :cond_0
    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 31
    move/from16 v0, p5

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aNz:I

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    .line 37
    const/4 v4, 0x4

    .line 39
    mul-int/lit8 v0, p4, 0x2

    add-int/lit8 v5, v0, 0x8

    .line 41
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v6

    .line 43
    const/4 v7, 0x0

    .line 45
    new-instance v8, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p4

    invoke-direct {v8, v6, v7, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 46
    add-int/lit8 v7, p4, 0x0

    .line 47
    new-instance v9, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p4

    invoke-direct {v9, v6, v7, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 48
    add-int v7, v7, p4

    .line 49
    add-int/lit8 v0, v7, 0x4

    invoke-static {v6, v7, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 50
    add-int/lit8 v7, v7, 0x4

    .line 51
    add-int/lit8 v0, v7, 0x4

    invoke-static {v6, v7, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 52
    add-int/lit8 v7, v7, 0x4

    .line 54
    if-eq v7, v5, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 60
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->mM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUK:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 63
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUL:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 64
    iput-object v11, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUM:[B

    .line 65
    iput-object v10, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUN:[B

    .line 66
    move-object v12, v9

    .line 67
    move-object v13, v8

    goto :goto_0

    .line 71
    :cond_2
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUK:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 72
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUL:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 73
    iput-object v10, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUM:[B

    .line 74
    iput-object v11, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUN:[B

    .line 75
    move-object v12, v8

    .line 76
    move-object v13, v9

    .line 79
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    add-int/lit8 v0, v0, 0x4

    new-array v14, v0, [B

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUK:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/AEADParameters;

    mul-int/lit8 v2, p5, 0x8

    invoke-direct {v1, v12, v2, v14}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUL:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/AEADParameters;

    mul-int/lit8 v2, p5, 0x8

    invoke-direct {v1, v13, v2, v14}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected ˊ(JSI)[B
    .locals 3

    .line 185
    const/16 v0, 0xd

    new-array v2, v0, [B

    .line 186
    const/4 v0, 0x0

    invoke-static {p1, p2, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(J[BI)V

    .line 187
    const/16 v0, 0x8

    invoke-static {p3, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(S[BI)V

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 189
    const/16 v0, 0xb

    invoke-static {p4, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʽ(I[BI)V

    .line 191
    return-object v2
.end method

.method public ˊ(JS[BII)[B
    .locals 15

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUM:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUM:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUM:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUM:[B

    array-length v0, v0

    move-wide/from16 v1, p1

    invoke-static {v1, v2, v6, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(J[BI)V

    .line 104
    move/from16 v7, p5

    .line 105
    move/from16 v8, p6

    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUK:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, v8}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v9

    .line 108
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    add-int/2addr v0, v9

    new-array v10, v0, [B

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUM:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    const/4 v2, 0x0

    invoke-static {v6, v0, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget v11, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    .line 112
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {p0, v0, v1, v2, v8}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->ˊ(JSI)[B

    move-result-object v12

    .line 113
    new-instance v13, Lorg/spongycastle/crypto/params/AEADParameters;

    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aNz:I

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {v13, v1, v0, v6, v12}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUK:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v13}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUK:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-object/from16 v1, p4

    move v2, v7

    move v3, v8

    move-object v4, v10

    move v5, v11

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˋ([BII[BI)I

    move-result v0

    add-int/2addr v11, v0

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUK:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, v10, v11}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v11, v0

    .line 124
    goto :goto_0

    .line 121
    :catch_0
    move-exception v14

    .line 123
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 126
    :goto_0
    array-length v0, v10

    if-eq v11, v0, :cond_0

    .line 129
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 132
    :cond_0
    return-object v10
.end method

.method public ˋ(JS[BII)[B
    .locals 15

    .line 138
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->ز(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 140
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUN:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUN:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUN:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUN:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v2, v3, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    add-int v7, p5, v0

    .line 148
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    sub-int v8, p6, v0

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUL:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, v8}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v9

    .line 151
    new-array v10, v9, [B

    .line 152
    const/4 v11, 0x0

    .line 154
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {p0, v0, v1, v2, v9}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->ˊ(JSI)[B

    move-result-object v12

    .line 155
    new-instance v13, Lorg/spongycastle/crypto/params/AEADParameters;

    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aNz:I

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {v13, v1, v0, v6, v12}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUL:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v13}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUL:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-object/from16 v1, p4

    move v2, v7

    move v3, v8

    move-object v4, v10

    move v5, v11

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->ˋ([BII[BI)I

    move-result v0

    add-int/lit8 v11, v0, 0x0

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUL:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, v10, v11}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v11, v0

    .line 166
    goto :goto_0

    .line 163
    :catch_0
    move-exception v14

    .line 165
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 168
    :goto_0
    array-length v0, v10

    if-eq v11, v0, :cond_1

    .line 171
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 174
    :cond_1
    return-object v10
.end method

.method public ز(I)I
    .locals 2

    .line 88
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aNz:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->aUJ:I

    sub-int/2addr v0, v1

    return v0
.end method
