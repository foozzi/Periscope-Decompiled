.class public Lorg/spongycastle/crypto/signers/RSADigestSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# static fields
.field private static final aSB:Ljava/util/Hashtable;


# instance fields
.field private final aFH:Lorg/spongycastle/crypto/Digest;

.field private final aSA:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aSa:Z

.field private final agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    .line 42
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    sget-object v2, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ava:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    sget-object v2, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->auZ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256"

    sget-object v2, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->avb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->aCd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoe:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aob:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "SHA-512/224"

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aof:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "SHA-512/256"

    sget-object v2, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aog:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "MD2"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "MD4"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSB:Ljava/util/Hashtable;

    const-string v1, "MD5"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSA:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 69
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 70
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 71
    return-void
.end method

.method private ᵙ([B)[B
    .locals 2

    .line 236
    new-instance v1, Lorg/spongycastle/asn1/x509/DigestInfo;

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v0, p1}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 238
    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public iP()[B
    .locals 5

    .line 147
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSa:Z

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSADigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 157
    :try_start_0
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/RSADigestSigner;->ᵙ([B)[B

    move-result-object v4

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSA:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 160
    :catch_0
    move-exception v4

    .line 162
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 230
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 127
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 93
    iput-boolean p1, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSa:Z

    .line 96
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    goto :goto_0

    .line 102
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    .line 105
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signing requires private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "verification requires public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/RSADigestSigner;->reset()V

    .line 117
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSA:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 118
    return-void
.end method

.method public ᵔ([B)Z
    .locals 10

    .line 173
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSa:Z

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSADigestSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 187
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;->aSA:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v4

    .line 188
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/RSADigestSigner;->ᵙ([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 193
    goto :goto_0

    .line 190
    :catch_0
    move-exception v6

    .line 192
    const/4 v0, 0x0

    return v0

    .line 195
    :goto_0
    array-length v0, v4

    array-length v1, v5

    if-ne v0, v1, :cond_1

    .line 197
    invoke-static {v4, v5}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    return v0

    .line 199
    :cond_1
    array-length v0, v4

    array-length v1, v5

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_5

    .line 201
    array-length v0, v4

    array-length v1, v3

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, -0x2

    .line 202
    array-length v0, v5

    array-length v1, v3

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, -0x2

    .line 204
    const/4 v0, 0x1

    aget-byte v0, v5, v0

    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v5, v1

    .line 205
    const/4 v0, 0x3

    aget-byte v0, v5, v0

    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v5, v1

    .line 207
    const/4 v8, 0x0

    .line 209
    const/4 v9, 0x0

    :goto_1
    array-length v0, v3

    if-ge v9, v0, :cond_2

    .line 211
    add-int v0, v6, v9

    aget-byte v0, v4, v0

    add-int v1, v7, v9

    aget-byte v1, v5, v1

    xor-int/2addr v0, v1

    or-int/2addr v8, v0

    .line 209
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 214
    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v6, :cond_3

    .line 216
    aget-byte v0, v4, v9

    aget-byte v1, v5, v9

    xor-int/2addr v0, v1

    or-int/2addr v8, v0

    .line 214
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 219
    :cond_3
    if-nez v8, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 223
    :cond_5
    const/4 v0, 0x0

    return v0
.end method
