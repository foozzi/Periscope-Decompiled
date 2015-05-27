.class public Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsEncryptionCredentials;
.source ""


# instance fields
.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected aTD:Lorg/spongycastle/crypto/tls/Certificate;

.field protected aTE:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;


# virtual methods
.method public lX()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->aTD:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0
.end method

.method public ᵥ([B)[B
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->aTE:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsRSAUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;[B)[B

    move-result-object v0

    return-object v0
.end method
