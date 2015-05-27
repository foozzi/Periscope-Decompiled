.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.super Ljava/security/SignatureSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$noneRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD128;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD160;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD5;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD4;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD2;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA1;
    }
.end annotation


# instance fields
.field private aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 64
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 65
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 54
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    return-void
.end method

.method private ᵙ([B)[B
    .locals 2

    .line 248
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v0, :cond_0

    .line 251
    return-object p1

    .line 254
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/x509/DigestInfo;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v0, p1}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 256
    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private ﺩ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 103
    if-nez p1, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4

    .line 88
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->ﺩ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a RSAPrivateKey instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->ˊ(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    .line 95
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 98
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4

    .line 73
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->ﺩ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a RSAPublicKey instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->ˊ(Ljava/security/interfaces/RSAPublicKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    .line 80
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 82
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 5

    .line 130
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 132
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    :try_start_0
    invoke-direct {p0, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->ᵙ([B)[B

    move-result-object v4

    .line 138
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 140
    :catch_0
    move-exception v4

    .line 142
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "key too small for signature type"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :catch_1
    move-exception v4

    .line 146
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 116
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 125
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 9

    .line 154
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 156
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v4

    .line 165
    invoke-direct {p0, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->ᵙ([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 170
    goto :goto_0

    .line 167
    :catch_0
    move-exception v6

    .line 169
    const/4 v0, 0x0

    return v0

    .line 172
    :goto_0
    array-length v0, v4

    array-length v1, v5

    if-ne v0, v1, :cond_2

    .line 174
    const/4 v6, 0x0

    :goto_1
    array-length v0, v4

    if-ge v6, v0, :cond_1

    .line 176
    aget-byte v0, v4, v6

    aget-byte v1, v5, v6

    if-eq v0, v1, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    goto :goto_4

    .line 182
    :cond_2
    array-length v0, v4

    array-length v1, v5

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_7

    .line 184
    array-length v0, v4

    array-length v1, v3

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, -0x2

    .line 185
    array-length v0, v5

    array-length v1, v3

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, -0x2

    .line 187
    const/4 v0, 0x1

    aget-byte v0, v5, v0

    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v5, v1

    .line 188
    const/4 v0, 0x3

    aget-byte v0, v5, v0

    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v5, v1

    .line 190
    const/4 v8, 0x0

    :goto_2
    array-length v0, v3

    if-ge v8, v0, :cond_4

    .line 192
    add-int v0, v6, v8

    aget-byte v0, v4, v0

    add-int v1, v7, v8

    aget-byte v1, v5, v1

    if-eq v0, v1, :cond_3

    .line 194
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 198
    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_6

    .line 200
    aget-byte v0, v4, v8

    aget-byte v1, v5, v8

    if-eq v0, v1, :cond_5

    .line 202
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 205
    :cond_6
    goto :goto_4

    .line 208
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 211
    :goto_4
    const/4 v0, 0x1

    return v0
.end method
