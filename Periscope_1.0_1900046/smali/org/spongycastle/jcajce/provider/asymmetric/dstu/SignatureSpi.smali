.class public Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# static fields
.field private static aWP:[B


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aWF:Lorg/spongycastle/crypto/DSA;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aWP:[B

    return-void

    :array_0
    .array-data 1
        0xat
        0x9t
        0xdt
        0x6t
        0xet
        0xbt
        0x4t
        0x5t
        0xft
        0x1t
        0x3t
        0xct
        0x7t
        0x0t
        0x8t
        0x2t
        0x8t
        0x0t
        0xct
        0x4t
        0x9t
        0x6t
        0x7t
        0xbt
        0x2t
        0x3t
        0x1t
        0xft
        0x5t
        0xet
        0xat
        0xdt
        0xft
        0x6t
        0x5t
        0x8t
        0xet
        0xbt
        0xat
        0x4t
        0xct
        0x0t
        0x3t
        0x7t
        0x2t
        0x9t
        0x1t
        0xdt
        0x3t
        0x8t
        0xdt
        0x9t
        0x6t
        0xbt
        0xft
        0x0t
        0x2t
        0x5t
        0xct
        0xat
        0x4t
        0xet
        0x1t
        0x7t
        0xft
        0x8t
        0xet
        0x9t
        0x7t
        0x2t
        0x0t
        0xdt
        0xct
        0x6t
        0x1t
        0x5t
        0xbt
        0x4t
        0x3t
        0xat
        0x2t
        0x8t
        0x9t
        0x7t
        0x5t
        0xft
        0x0t
        0xbt
        0xct
        0x1t
        0xdt
        0xet
        0xat
        0x3t
        0x6t
        0x4t
        0x3t
        0x8t
        0xbt
        0x5t
        0x6t
        0x4t
        0xet
        0xat
        0x2t
        0xct
        0x1t
        0x7t
        0x9t
        0xft
        0xdt
        0x0t
        0x1t
        0x2t
        0x3t
        0xet
        0x6t
        0xdt
        0xbt
        0x8t
        0xft
        0xat
        0xct
        0x5t
        0x7t
        0x9t
        0x0t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 48
    new-instance v0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    .line 49
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4

    .line 104
    const/4 v3, 0x0

    .line 106
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECKey;

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    .line 111
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aWP:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 113
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 121
    :goto_0
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4

    .line 57
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    goto :goto_1

    .line 65
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 67
    invoke-static {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ʼ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p1

    .line 69
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    goto :goto_1

    .line 78
    :catch_0
    move-exception v3

    .line 80
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :goto_1
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    invoke-virtual {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->nD()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->ᔅ([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 85
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 86
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 8

    .line 142
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 144
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v0, v3}, Lorg/spongycastle/crypto/DSA;->ᵎ([B)[Ljava/math/BigInteger;

    move-result-object v4

    .line 149
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 150
    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 152
    array-length v0, v5

    array-length v1, v6

    if-le v0, v1, :cond_0

    array-length v0, v5

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v0, v6

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    new-array v7, v0, [B

    .line 153
    array-length v0, v7

    div-int/lit8 v0, v0, 0x2

    array-length v1, v6

    sub-int/2addr v0, v1

    array-length v1, v6

    const/4 v2, 0x0

    invoke-static {v6, v2, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    array-length v0, v7

    array-length v1, v5

    sub-int/2addr v0, v1

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DEROctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 158
    :catch_0
    move-exception v4

    .line 160
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 128
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 137
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 8

    .line 168
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 170
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 176
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v5

    .line 178
    array-length v0, v5

    div-int/lit8 v0, v0, 0x2

    new-array v6, v0, [B

    .line 179
    array-length v0, v5

    div-int/lit8 v0, v0, 0x2

    new-array v7, v0, [B

    .line 181
    array-length v0, v5

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length v0, v5

    div-int/lit8 v0, v0, 0x2

    array-length v1, v5

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v5, v0, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/math/BigInteger;

    .line 186
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 187
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v1, 0x1

    aput-object v0, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 189
    :catch_0
    move-exception v5

    .line 191
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "error decoding signature bytes."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->aWF:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x0

    aget-object v1, v4, v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method ᔅ([B)[B
    .locals 5

    .line 90
    const/16 v0, 0x80

    new-array v3, v0, [B

    .line 92
    const/4 v4, 0x0

    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_0

    .line 94
    mul-int/lit8 v0, v4, 0x2

    aget-byte v1, p1, v4

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 95
    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v4

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-object v3
.end method
