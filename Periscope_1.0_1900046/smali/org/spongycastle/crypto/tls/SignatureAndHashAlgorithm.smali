.class public Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected aUG:S

.field protected aUH:S


# direct methods
.method public constructor <init>(SS)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʽ(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hash\' should be a uint8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʽ(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'signature\' should be a uint8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    if-nez p2, :cond_2

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'signature\' MUST NOT be \"anonymous\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->aUG:S

    .line 35
    iput-short p2, p0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->aUH:S

    .line 36
    return-void
.end method

.method public static ᐧ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 3

    .line 92
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v1

    .line 93
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v2

    .line 94
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 79
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mL()S

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 80
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 56
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-object v2, v0

    .line 61
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mL()S

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mL()S

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 66
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mL()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public mK()S
    .locals 1

    .line 43
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->aUG:S

    return v0
.end method

.method public mL()S
    .locals 1

    .line 51
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->aUH:S

    return v0
.end method
