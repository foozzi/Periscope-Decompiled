.class public Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsAgreementCredentials;
.source ""


# instance fields
.field protected aTD:Lorg/spongycastle/crypto/tls/Certificate;

.field protected aTE:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected aTF:Lorg/spongycastle/crypto/BasicAgreement;

.field protected aTG:Z


# virtual methods
.method public lX()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->aTD:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->aTF:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->aTE:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/BasicAgreement;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->aTF:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/BasicAgreement;->ˋ(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v2

    .line 71
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->aTG:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {v2}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->aTF:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v0

    invoke-static {v0, v2}, Lorg/spongycastle/util/BigIntegers;->ʻ(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method
