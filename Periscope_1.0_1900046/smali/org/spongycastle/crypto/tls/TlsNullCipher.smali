.class public Lorg/spongycastle/crypto/tls/TlsNullCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected aUS:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected aUT:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V
    .locals 11

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_2

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 34
    :cond_2
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 36
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 38
    if-eqz p2, :cond_3

    .line 40
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    invoke-interface {p3}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    add-int v8, v0, v1

    .line 42
    invoke-static {p1, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v9

    .line 44
    const/4 v10, 0x0

    .line 46
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsMac;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v9

    move v4, v10

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    move-object v6, v0

    .line 48
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    add-int/lit8 v10, v0, 0x0

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsMac;

    move-object v1, p1

    move-object v2, p3

    move-object v3, v9

    move v4, v10

    invoke-interface {p3}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    move-object v7, v0

    .line 52
    invoke-interface {p3}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    add-int/2addr v10, v0

    .line 54
    if-eq v10, v8, :cond_3

    .line 56
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 60
    :cond_3
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->mM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 63
    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    goto :goto_2

    .line 67
    :cond_4
    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 68
    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 70
    :goto_2
    return-void
.end method


# virtual methods
.method public ˊ(JS[BII)[B
    .locals 9

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    if-nez v0, :cond_0

    .line 87
    add-int v0, p5, p6

    invoke-static {p4, p5, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUS:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˎ(JS[BII)[B

    move-result-object v7

    .line 91
    array-length v0, v7

    add-int/2addr v0, p6

    new-array v8, v0, [B

    .line 92
    const/4 v0, 0x0

    invoke-static {p4, p5, v8, v0, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length v0, v7

    const/4 v1, 0x0

    invoke-static {v7, v1, v8, p6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    return-object v8
.end method

.method public ˋ(JS[BII)[B
    .locals 11

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    if-nez v0, :cond_0

    .line 102
    add-int v0, p5, p6

    move/from16 v1, p5

    invoke-static {p4, v1, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v7

    .line 106
    move/from16 v0, p6

    if-ge v0, v7, :cond_1

    .line 108
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 111
    :cond_1
    sub-int v8, p6, v7

    .line 113
    add-int v0, p5, v8

    add-int v1, p5, p6

    invoke-static {p4, v0, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsNullCipher;->aUT:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˎ(JS[BII)[B

    move-result-object v10

    .line 116
    invoke-static {v9, v10}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 121
    :cond_2
    add-int v0, p5, v8

    move/from16 v1, p5

    invoke-static {p4, v1, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
