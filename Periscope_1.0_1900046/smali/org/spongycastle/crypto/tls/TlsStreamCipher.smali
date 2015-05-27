.class public Lorg/spongycastle/crypto/tls/TlsStreamCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected aUS:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected aUT:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected aVX:Lorg/spongycastle/crypto/StreamCipher;

.field protected aVY:Lorg/spongycastle/crypto/StreamCipher;

.field protected aVZ:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IZ)V
    .locals 17

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->mM()Z

    move-result v6

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 42
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVZ:Z

    .line 44
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVX:Lorg/spongycastle/crypto/StreamCipher;

    .line 45
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVY:Lorg/spongycastle/crypto/StreamCipher;

    .line 47
    mul-int/lit8 v0, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    add-int v7, v0, v1

    .line 50
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v8

    .line 52
    const/4 v9, 0x0

    .line 55
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsMac;

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object v3, v8

    move v4, v9

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    move-object v10, v0

    .line 57
    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    add-int/lit8 v9, v0, 0x0

    .line 58
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsMac;

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object v3, v8

    move v4, v9

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    move-object v11, v0

    .line 60
    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    add-int/2addr v9, v0

    .line 63
    new-instance v12, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v12, v8, v9, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 64
    add-int v9, v9, p6

    .line 65
    new-instance v13, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v13, v8, v9, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 66
    add-int v9, v9, p6

    .line 68
    if-eq v9, v7, :cond_0

    .line 70
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 74
    :cond_0
    if-eqz v6, :cond_1

    .line 76
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 77
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVX:Lorg/spongycastle/crypto/StreamCipher;

    .line 79
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVY:Lorg/spongycastle/crypto/StreamCipher;

    .line 80
    move-object v14, v13

    .line 81
    move-object v15, v12

    goto :goto_0

    .line 85
    :cond_1
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 86
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 87
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVX:Lorg/spongycastle/crypto/StreamCipher;

    .line 88
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVY:Lorg/spongycastle/crypto/StreamCipher;

    .line 89
    move-object v14, v12

    .line 90
    move-object v15, v13

    .line 93
    :goto_0
    if-eqz p7, :cond_2

    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 96
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v14, v0

    .line 97
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v15, v0

    .line 100
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVX:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v14}, Lorg/spongycastle/crypto/StreamCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVY:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v15}, Lorg/spongycastle/crypto/StreamCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 102
    return-void
.end method

.method private ˊ(JS[BII[BII)V
    .locals 9

    .line 163
    invoke-static {p4, p5, p6}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v1, p1

    move v3, p3

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˎ(JS[BII)[B

    move-result-object v8

    .line 166
    invoke-static {v7, v8}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 170
    :cond_0
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/StreamCipher;ZJ)V
    .locals 3

    .line 174
    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 175
    const/4 v0, 0x0

    invoke-static {p3, p4, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(J[BI)V

    .line 176
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/crypto/StreamCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 177
    return-void
.end method


# virtual methods
.method public ˊ(JS[BII)[B
    .locals 9

    .line 117
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVZ:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVX:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->ˊ(Lorg/spongycastle/crypto/StreamCipher;ZJ)V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    add-int/2addr v0, p6

    new-array v7, v0, [B

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVX:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p4

    move v2, p5

    move v3, p6

    move-object v4, v7

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˎ(JS[BII)[B

    move-result-object v8

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVX:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, v8

    array-length v3, v8

    move-object v4, v7

    move v5, p6

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 129
    return-object v7
.end method

.method public ˋ(JS[BII)[B
    .locals 13

    .line 141
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVZ:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVY:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->ˊ(Lorg/spongycastle/crypto/StreamCipher;ZJ)V

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v10

    .line 147
    move/from16 v0, p6

    if-ge v0, v10, :cond_1

    .line 149
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 152
    :cond_1
    sub-int v11, p6, v10

    .line 154
    move/from16 v0, p6

    new-array v12, v0, [B

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->aVY:Lorg/spongycastle/crypto/StreamCipher;

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, v12

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 156
    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move-object v4, v12

    move v5, v11

    move/from16 v6, p6

    move-object v7, v12

    move v9, v11

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->ˊ(JS[BII[BII)V

    .line 157
    const/4 v0, 0x0

    invoke-static {v12, v0, v11}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
