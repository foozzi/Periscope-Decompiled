.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha512;,
        Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha384;,
        Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha256;,
        Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha224;
    }
.end annotation


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aFa:Ljava/security/SecureRandom;

.field private biH:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 32
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->biH:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    .line 33
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3

    .line 56
    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 58
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFa:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v2, v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->biH:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 66
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0

    .line 48
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFa:Ljava/security/SecureRandom;

    .line 49
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 50
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3

    .line 39
    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 41
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 42
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->biH:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 43
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 4

    .line 83
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->biH:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->ᕑ([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 89
    return-object v3

    .line 91
    :catch_0
    move-exception v3

    .line 93
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 72
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 78
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 101
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 102
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->biH:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-virtual {v0, v2, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->ᴵ([B[B)Z

    move-result v0

    return v0
.end method
