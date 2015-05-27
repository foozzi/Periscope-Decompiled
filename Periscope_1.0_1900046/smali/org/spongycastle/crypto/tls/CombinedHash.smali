.class Lorg/spongycastle/crypto/tls/CombinedHash;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsHandshakeHash;


# instance fields
.field protected aKa:Lorg/spongycastle/crypto/Digest;

.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected aTc:Lorg/spongycastle/crypto/Digest;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    .line 18
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    .line 19
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/CombinedHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 24
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    .line 25
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    .line 26
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    sget-object v1, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUp:[B

    sget-object v2, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUq:[B

    const/16 v3, 0x30

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/CombinedHash;->ˊ(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    sget-object v1, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUp:[B

    sget-object v2, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUq:[B

    const/16 v3, 0x28

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/CombinedHash;->ˊ(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    move-result v4

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    add-int v1, p2, v4

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    move-result v5

    .line 109
    add-int v0, v4, v5

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iJ()I
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public lT()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 0

    .line 35
    return-object p0
.end method

.method public lU()V
    .locals 0

    .line 45
    return-void
.end method

.method public lV()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    .line 49
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V

    return-object v0
.end method

.method public lW()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 54
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 119
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 85
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aTc:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aKa:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 94
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/Digest;[B[BI)V
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-object v2, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUy:[B

    .line 125
    array-length v0, v2

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 126
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 128
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 129
    const/4 v0, 0x0

    invoke-interface {p1, v3, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 131
    array-length v0, v2

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 132
    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 133
    array-length v0, v3

    const/4 v1, 0x0

    invoke-interface {p1, v3, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 134
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 31
    return-void
.end method

.method public ˎ(S)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CombinedHash only supports calculating the legacy PRF for handshake hash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˏ(S)[B
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CombinedHash doesn\'t support multiple hashes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
