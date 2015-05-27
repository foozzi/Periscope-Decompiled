.class public Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aFa:Ljava/security/SecureRandom;

.field private aWF:Lorg/spongycastle/crypto/DSA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 37
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 38
    new-instance v0, Lorg/spongycastle/crypto/signers/GOST3410Signer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/GOST3410Signer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    .line 39
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4

    .line 97
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECKey;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/GOST3410Util;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    .line 106
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 108
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFa:Ljava/security/SecureRandom;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 116
    :goto_1
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0

    .line 87
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFa:Ljava/security/SecureRandom;

    .line 88
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 89
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4

    .line 47
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    goto :goto_1

    .line 51
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/GOST3410Key;

    if-eqz v0, :cond_1

    .line 53
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/GOST3410Util;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    goto :goto_1

    .line 59
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 61
    invoke-static {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ʼ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p1

    .line 63
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    .line 65
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    goto :goto_1

    .line 72
    :catch_0
    move-exception v3

    .line 74
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 79
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 80
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 8

    .line 137
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 139
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 143
    const/16 v0, 0x40

    :try_start_0
    new-array v4, v0, [B

    .line 144
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v0, v3}, Lorg/spongycastle/crypto/DSA;->ᵎ([B)[Ljava/math/BigInteger;

    move-result-object v5

    .line 145
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 146
    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    .line 148
    const/4 v0, 0x0

    aget-byte v0, v7, v0

    if-eqz v0, :cond_0

    .line 150
    array-length v0, v7

    rsub-int/lit8 v0, v0, 0x20

    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 154
    :cond_0
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    rsub-int/lit8 v0, v0, 0x20

    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-static {v7, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :goto_0
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    if-eqz v0, :cond_1

    .line 159
    array-length v0, v6

    rsub-int/lit8 v0, v0, 0x40

    array-length v1, v6

    const/4 v2, 0x0

    invoke-static {v6, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 163
    :cond_1
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    rsub-int/lit8 v0, v0, 0x40

    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-static {v6, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    return-object v4

    .line 168
    :catch_0
    move-exception v4

    .line 170
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 123
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 132
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 7

    .line 178
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 180
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 186
    const/16 v0, 0x20

    :try_start_0
    new-array v5, v0, [B

    .line 187
    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p1, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    const/16 v0, 0x20

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p1, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/math/BigInteger;

    .line 194
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 195
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v1, 0x1

    aput-object v0, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_0

    .line 197
    :catch_0
    move-exception v5

    .line 199
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "error decoding signature bytes."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x0

    aget-object v1, v4, v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method
