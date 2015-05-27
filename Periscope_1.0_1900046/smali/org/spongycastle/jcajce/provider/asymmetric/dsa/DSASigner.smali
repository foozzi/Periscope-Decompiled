.class public Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.super Ljava/security/SignatureSpi;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$stdDSA;
    }
.end annotation


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aFa:Ljava/security/SecureRandom;

.field private aWF:Lorg/spongycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 47
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aWF:Lorg/spongycastle/crypto/DSA;

    .line 48
    return-void
.end method

.method private ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3

    .line 200
    const/4 v0, 0x2

    new-array v2, v0, [Lorg/spongycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x0

    aput-object v0, v2, v1

    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 201
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private ᒡ([B)[Ljava/math/BigInteger;
    .locals 4

    .line 208
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v3, v0

    .line 209
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3

    .line 102
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 104
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFa:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v2, v0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 111
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0

    .line 92
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFa:Ljava/security/SecureRandom;

    .line 93
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 94
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4

    .line 56
    instance-of v0, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    goto :goto_1

    .line 64
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 66
    new-instance p1, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 68
    instance-of v0, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    goto :goto_1

    .line 77
    :catch_0
    move-exception v3

    .line 79
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 85
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 4

    .line 132
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 134
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aWF:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/DSA;->ᵎ([B)[Ljava/math/BigInteger;

    move-result-object v3

    .line 140
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 142
    :catch_0
    move-exception v3

    .line 144
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 118
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 127
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6

    .line 152
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 154
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->ᒡ([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 165
    goto :goto_0

    .line 162
    :catch_0
    move-exception v5

    .line 164
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "error decoding signature bytes."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x0

    aget-object v1, v4, v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method
