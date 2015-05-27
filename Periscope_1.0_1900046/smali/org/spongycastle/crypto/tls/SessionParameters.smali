.class public final Lorg/spongycastle/crypto/tls/SessionParameters;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/SessionParameters$1;,
        Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    }
.end annotation


# instance fields
.field private aUE:[B

.field private aUu:I

.field private aUv:S

.field private aUy:[B


# virtual methods
.method public clear()V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->aUy:[B

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->aUy:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 104
    :cond_0
    return-void
.end method

.method public mB()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->aUu:I

    return v0
.end method

.method public mE()[B
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->aUy:[B

    return-object v0
.end method

.method public mI()S
    .locals 1

    .line 119
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->aUv:S

    return v0
.end method

.method public mJ()Ljava/util/Hashtable;
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->aUE:[B

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->aUE:[B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ᐝ(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
