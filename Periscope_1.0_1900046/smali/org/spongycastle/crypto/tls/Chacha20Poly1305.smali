.class public Lorg/spongycastle/crypto/tls/Chacha20Poly1305;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected aTa:Lorg/spongycastle/crypto/engines/ChaChaEngine;

.field protected aTb:Lorg/spongycastle/crypto/engines/ChaChaEngine;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 9

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 30
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v3

    .line 32
    new-instance v4, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-direct {v4, v3, v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 33
    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    const/16 v0, 0x20

    const/16 v1, 0x20

    invoke-direct {v5, v3, v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aTa:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    .line 36
    new-instance v0, Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aTb:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    .line 39
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->mM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    move-object v6, v5

    .line 42
    move-object v7, v4

    goto :goto_0

    .line 46
    :cond_1
    move-object v6, v4

    .line 47
    move-object v7, v5

    .line 50
    :goto_0
    const/16 v0, 0x8

    new-array v8, v0, [B

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aTa:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v6, v8}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aTb:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v7, v8}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected ˊ(Lorg/spongycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 9

    .line 106
    const/16 v0, 0x8

    new-array v6, v0, [B

    .line 107
    const/4 v0, 0x0

    invoke-static {p3, p4, v6, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(J[BI)V

    .line 109
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, p2, v0}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 111
    const/16 v0, 0x40

    new-array v7, v0, [B

    .line 112
    move-object v0, p1

    move-object v1, v7

    array-length v3, v7

    move-object v4, v7

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˋ([BII[BI)I

    .line 115
    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x10

    invoke-static {v7, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    new-instance v8, Lorg/spongycastle/crypto/params/KeyParameter;

    const/16 v0, 0x10

    const/16 v1, 0x20

    invoke-direct {v8, v7, v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 117
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->יּ([B)V

    .line 118
    return-object v8
.end method

.method protected ˊ(Lorg/spongycastle/crypto/Mac;[BII)V
    .locals 5

    .line 136
    invoke-interface {p1, p2, p3, p4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 138
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->ﹴ(J)[B

    move-result-object v4

    .line 139
    array-length v0, v4

    const/4 v1, 0x0

    invoke-interface {p1, v4, v1, v0}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 140
    return-void
.end method

.method protected ˊ(JSI)[B
    .locals 3

    .line 148
    const/16 v0, 0xd

    new-array v2, v0, [B

    .line 149
    const/4 v0, 0x0

    invoke-static {p1, p2, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(J[BI)V

    .line 150
    const/16 v0, 0x8

    invoke-static {p3, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(S[BI)V

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 152
    const/16 v0, 0xb

    invoke-static {p4, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʽ(I[BI)V

    .line 154
    return-object v2
.end method

.method public ˊ(JS[BII)[B
    .locals 11

    .line 63
    add-int/lit8 v6, p6, 0x10

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aTa:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ˊ(Lorg/spongycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v7

    .line 67
    new-array v8, v6, [B

    .line 68
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aTa:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    move-object v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˋ([BII[BI)I

    .line 70
    move/from16 v0, p6

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ˊ(JSI)[B

    move-result-object v9

    .line 71
    move-object v0, p0

    move-object v1, v7

    move-object v2, v9

    move-object v3, v8

    move/from16 v5, p6

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ˊ(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v10

    .line 72
    array-length v0, v10

    const/4 v1, 0x0

    move/from16 v2, p6

    invoke-static {v10, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v8
.end method

.method protected ˊ(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B
    .locals 4

    .line 123
    new-instance v2, Lorg/spongycastle/crypto/macs/Poly1305;

    invoke-direct {v2}, Lorg/spongycastle/crypto/macs/Poly1305;-><init>()V

    .line 124
    invoke-interface {v2, p1}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 126
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p2, v1, v0}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ˊ(Lorg/spongycastle/crypto/Mac;[BII)V

    .line 127
    invoke-virtual {p0, v2, p3, p4, p5}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ˊ(Lorg/spongycastle/crypto/Mac;[BII)V

    .line 129
    invoke-interface {v2}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v3, v0, [B

    .line 130
    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 131
    return-object v3
.end method

.method public ˋ(JS[BII)[B
    .locals 12

    .line 79
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ز(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 81
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 84
    :cond_0
    add-int/lit8 v6, p6, -0x10

    .line 86
    add-int v0, p5, v6

    add-int v1, p5, p6

    move-object/from16 v2, p4

    invoke-static {v2, v0, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aTb:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ˊ(Lorg/spongycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v8

    .line 90
    invoke-virtual {p0, p1, p2, p3, v6}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ˊ(JSI)[B

    move-result-object v9

    .line 91
    move-object v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ˊ(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v10

    .line 93
    invoke-static {v10, v7}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 98
    :cond_1
    new-array v11, v6, [B

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->aTb:Lorg/spongycastle/crypto/engines/ChaChaEngine;

    move-object/from16 v1, p4

    move/from16 v2, p5

    move v3, v6

    move-object v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->ˋ([BII[BI)I

    .line 101
    return-object v11
.end method

.method public ز(I)I
    .locals 1

    .line 58
    add-int/lit8 v0, p1, -0x10

    return v0
.end method
