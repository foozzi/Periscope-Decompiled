.class public Lorg/spongycastle/crypto/tls/TlsMac;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected aKx:Lorg/spongycastle/crypto/Mac;

.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected aUr:[B

.field protected aVr:I

.field protected aVs:I

.field protected aVt:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 35
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p3, p4, p5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 37
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aUr:[B

    .line 40
    instance-of v0, p2, Lorg/spongycastle/crypto/digests/LongDigest;

    if-eqz v0, :cond_0

    .line 42
    const/16 v0, 0x80

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVr:I

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVs:I

    goto :goto_0

    .line 47
    :cond_0
    const/16 v0, 0x40

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVr:I

    .line 48
    const/16 v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVs:I

    .line 51
    :goto_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lorg/spongycastle/crypto/tls/SSL3Mac;

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/tls/SSL3Mac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    .line 56
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVs:I

    goto :goto_1

    .line 67
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    .line 72
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVt:I

    .line 75
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUB:Z

    if-eqz v0, :cond_3

    .line 77
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVt:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVt:I

    .line 79
    :cond_3
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVt:I

    return v0
.end method

.method protected ˀ([B)[B
    .locals 2

    .line 165
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVt:I

    if-gt v0, v1, :cond_0

    .line 167
    return-object p1

    .line 170
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVt:I

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public ˊ(JS[BIII[B)[B
    .locals 6

    .line 134
    invoke-virtual/range {p0 .. p6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˎ(JS[BII)[B

    move-result-object v3

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v4, 0xb

    goto :goto_0

    :cond_0
    const/16 v4, 0xd

    .line 143
    :goto_0
    add-int v0, v4, p7

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsMac;->ᘄ(I)I

    move-result v0

    add-int v1, v4, p6

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsMac;->ᘄ(I)I

    move-result v1

    sub-int v5, v0, v1

    .line 145
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVr:I

    const/4 v2, 0x0

    invoke-interface {v0, p8, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    goto :goto_1

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    const/4 v1, 0x0

    aget-byte v1, p8, v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->reset()V

    .line 154
    return-object v3
.end method

.method public ˎ(JS[BII)[B
    .locals 7

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mp()Z

    move-result v4

    .line 111
    if-eqz v4, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    new-array v5, v0, [B

    .line 112
    const/4 v0, 0x0

    invoke-static {p1, p2, v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(J[BI)V

    .line 113
    const/16 v0, 0x8

    invoke-static {p3, v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(S[BI)V

    .line 114
    if-nez v4, :cond_1

    .line 116
    const/16 v0, 0x9

    invoke-static {v3, v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 118
    :cond_1
    array-length v0, v5

    add-int/lit8 v0, v0, -0x2

    invoke-static {p6, v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʽ(I[BI)V

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p4, p5, p6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v6, v0, [B

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aKx:Lorg/spongycastle/crypto/Mac;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 125
    invoke-virtual {p0, v6}, Lorg/spongycastle/crypto/tls/TlsMac;->ˀ([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected ᘄ(I)I
    .locals 2

    .line 160
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVs:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->aVr:I

    div-int/2addr v0, v1

    return v0
.end method
