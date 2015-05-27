.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;
.super Ljava/security/SignatureSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$RIPEMD160WithRSAEncryption;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$MD5WithRSAEncryption;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$SHA1WithRSAEncryption;
    }
.end annotation


# instance fields
.field private aXz:Lorg/spongycastle/crypto/signers/ISO9796d2Signer;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->aXz:Lorg/spongycastle/crypto/signers/ISO9796d2Signer;

    .line 31
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3

    .line 46
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->ˊ(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    .line 48
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->aXz:Lorg/spongycastle/crypto/signers/ISO9796d2Signer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 49
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->ˊ(Ljava/security/interfaces/RSAPublicKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    .line 39
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->aXz:Lorg/spongycastle/crypto/signers/ISO9796d2Signer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 40
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->aXz:Lorg/spongycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->iP()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    return-object v2

    .line 76
    :catch_0
    move-exception v2

    .line 78
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->aXz:Lorg/spongycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->update(B)V

    .line 56
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->aXz:Lorg/spongycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->update([BII)V

    .line 65
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->aXz:Lorg/spongycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->ᵔ([B)Z

    move-result v1

    .line 88
    return v1
.end method
