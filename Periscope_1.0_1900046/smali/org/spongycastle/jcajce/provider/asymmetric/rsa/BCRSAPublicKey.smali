.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# static fields
.field private static final aXw:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private transient agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private ajI:Ljava/math/BigInteger;

.field private asR:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->aXw:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->aXw:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->ajI:Ljava/math/BigInteger;

    .line 51
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->asR:Ljava/math/BigInteger;

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->aXw:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->ajI:Ljava/math/BigInteger;

    .line 43
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->asR:Ljava/math/BigInteger;

    .line 44
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->ˏ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/params/RSAKeyParameters;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->aXw:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->ajI:Ljava/math/BigInteger;

    .line 35
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->asR:Ljava/math/BigInteger;

    .line 36
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 154
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 158
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->aXw:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 163
    goto :goto_0

    .line 160
    :catch_1
    move-exception v1

    .line 162
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->aXw:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 164
    :goto_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 172
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->aXw:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 176
    :cond_0
    return-void
.end method

.method private ˏ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 3

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->ﻧ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->ajI:Ljava/math/BigInteger;

    .line 68
    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->asR:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid info structure in RSA public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 118
    if-ne p1, p0, :cond_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_1

    .line 125
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v2, v0

    .line 130
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "RSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    .line 108
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->agM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "X.509"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->ajI:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->asR:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 113
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 136
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    const-string v0, "RSA Public Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v0, "            modulus: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v0, "    public exponent: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
