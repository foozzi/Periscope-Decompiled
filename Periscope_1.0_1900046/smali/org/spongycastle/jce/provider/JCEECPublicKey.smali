.class public Lorg/spongycastle/jce/provider/JCEECPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/spongycastle/jce/interfaces/ECPointEncoder;
.implements Lorg/spongycastle/jce/interfaces/ECPublicKey;


# instance fields
.field private aRv:Lorg/spongycastle/math/ec/ECPoint;

.field private aWI:Ljava/lang/String;

.field private aWJ:Z

.field private aWK:Ljava/security/spec/ECParameterSpec;

.field private aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 504
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, v0

    .line 506
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 508
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWI:Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWJ:Z

    .line 510
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 516
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 518
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWJ:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 519
    return-void
.end method

.method private ˊ([BILjava/math/BigInteger;)V
    .locals 5

    .line 406
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 407
    array-length v0, v3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 409
    const/16 v0, 0x20

    new-array v4, v0, [B

    .line 410
    array-length v0, v4

    array-length v1, v3

    sub-int/2addr v0, v1

    array-length v1, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    move-object v3, v4

    .line 414
    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x20

    if-eq v4, v0, :cond_1

    .line 416
    add-int v0, p2, v4

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v4

    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 418
    :cond_1
    return-void
.end method

.method private ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 14

    .line 184
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->fX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fO()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v6

    .line 188
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWI:Ljava/lang/String;

    .line 192
    :try_start_0
    invoke-virtual {v6}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 197
    goto :goto_0

    .line 194
    :catch_0
    move-exception v8

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error recovering public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :goto_0
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v8

    .line 200
    const/16 v0, 0x20

    new-array v9, v0, [B

    .line 201
    const/16 v0, 0x20

    new-array v10, v0, [B

    .line 203
    const/4 v11, 0x0

    :goto_1
    array-length v0, v9

    if-eq v11, v0, :cond_0

    .line 205
    rsub-int/lit8 v0, v11, 0x1f

    aget-byte v0, v8, v0

    aput-byte v0, v9, v11

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 208
    :cond_0
    const/4 v11, 0x0

    :goto_2
    array-length v0, v10

    if-eq v11, v0, :cond_1

    .line 210
    rsub-int/lit8 v0, v11, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v10, v11

    .line 208
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 213
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->fX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 215
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/ECGOST3410NamedCurveTable;->ﺩ(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v11

    .line 217
    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v12

    .line 218
    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v12, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v13

    .line 220
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 222
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 230
    goto/16 :goto_5

    .line 233
    :cond_2
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->fX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 237
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->gA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v9, v0

    .line 240
    invoke-static {v9}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ʿ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v10

    .line 242
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 243
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v0

    invoke-static {v7, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v8

    .line 245
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v9}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˈ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 253
    goto :goto_3

    .line 254
    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->is()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 257
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    goto :goto_3

    .line 261
    :cond_4
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ﭘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v9

    .line 263
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 264
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v0

    invoke-static {v7, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v8

    .line 266
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v8, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 275
    :goto_3
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v9

    .line 276
    invoke-virtual {v9}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v10

    .line 277
    new-instance v11, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v11, v10}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 282
    const/4 v0, 0x0

    aget-byte v0, v10, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    aget-byte v0, v10, v0

    array-length v1, v10

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_6

    const/4 v0, 0x2

    aget-byte v0, v10, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v0, 0x2

    aget-byte v0, v10, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 285
    :cond_5
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->ˏ(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v12

    .line 287
    array-length v0, v10

    add-int/lit8 v0, v0, -0x3

    if-lt v12, v0, :cond_6

    .line 291
    :try_start_1
    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v0

    .line 296
    goto :goto_4

    .line 293
    :catch_1
    move-exception v13

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error recovering public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_6
    :goto_4
    new-instance v12, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-direct {v12, v7, v11}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 301
    invoke-virtual {v12}, Lorg/spongycastle/asn1/x9/X9ECPoint;->iy()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 303
    :goto_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 485
    instance-of v0, p1, Lorg/spongycastle/jce/provider/JCEECPublicKey;

    if-nez v0, :cond_0

    .line 487
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/provider/JCEECPublicKey;

    move-object v2, v0

    .line 492
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʻ(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWI:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 12

    .line 320
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWI:Ljava/lang/String;

    const-string v1, "ECGOST3410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    if-eqz v0, :cond_0

    .line 324
    iget-object v6, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_1

    .line 330
    new-instance v6, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 338
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v8

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWJ:Z

    invoke-static {v8, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v9, v0

    .line 345
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v9}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 349
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    .line 350
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 351
    const/16 v0, 0x40

    new-array v10, v0, [B

    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0, v8}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->ˊ([BILjava/math/BigInteger;)V

    .line 354
    const/16 v0, 0x20

    invoke-direct {p0, v10, v0, v9}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->ˊ([BILjava/math/BigInteger;)V

    .line 358
    :try_start_0
    new-instance v7, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v10}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_1

    .line 360
    :catch_0
    move-exception v11

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 364
    :goto_1
    goto/16 :goto_3

    .line 367
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_4

    .line 369
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ᴊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 370
    if-nez v8, :cond_3

    .line 372
    new-instance v8, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 374
    :cond_3
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v8}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 375
    goto :goto_2

    .line 376
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_5

    .line 378
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    goto :goto_2

    .line 382
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 384
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v8

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWJ:Z

    invoke-static {v8, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v9, v0

    .line 391
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v9}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 394
    :goto_2
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 395
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWJ:Z

    invoke-virtual {v8, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v9, v0

    .line 398
    new-instance v7, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aDS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 401
    :goto_3
    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ᐝ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 312
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    .line 437
    new-instance v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 497
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kH()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public nB()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 427
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method nC()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 457
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public nE()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 452
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 467
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 470
    const-string v0, "EC Public Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const-string v0, "            X: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v0, "            Y: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
