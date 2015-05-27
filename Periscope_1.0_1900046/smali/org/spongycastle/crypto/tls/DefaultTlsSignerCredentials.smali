.class public Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsSignerCredentials;
.source ""


# instance fields
.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected aTD:Lorg/spongycastle/crypto/tls/Certificate;

.field protected aTE:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected aTH:Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

.field protected aTI:Lorg/spongycastle/crypto/tls/TlsSigner;


# virtual methods
.method public lO()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->aTH:Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    return-object v0
.end method

.method public lX()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->aTD:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0
.end method

.method public ﯨ([B)[B
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->aTI:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->aTH:Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->aTE:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1, v2, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->aTI:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->aTE:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    :try_end_1
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 94
    :catch_0
    move-exception v3

    .line 96
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
