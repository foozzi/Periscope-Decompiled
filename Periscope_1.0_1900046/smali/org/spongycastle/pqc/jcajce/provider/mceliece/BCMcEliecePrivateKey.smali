.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aQb:I

.field private aby:Ljava/lang/String;

.field private avM:I

.field private bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

.field private bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

.field private bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

.field private bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

.field private biw:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aby:Ljava/lang/String;

    .line 91
    iput p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aQb:I

    .line 92
    iput p3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->avM:I

    .line 93
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 94
    iput-object p5, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 95
    iput-object p6, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 96
    iput-object p7, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .line 97
    iput-object p8, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .line 98
    iput-object p9, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 99
    iput-object p10, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V
    .locals 11

    .line 116
    move-object v0, p0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->kC()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->ri()I

    move-result v3

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rl()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rt()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->ru()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rv()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rn()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v9

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->ro()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 119
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->rr()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->biw:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    .line 120
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 235
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    move-object v2, v0

    .line 241
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aQb:I

    iget v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aQb:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->avM:I

    iget v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->avM:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    iget-object v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    iget-object v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->equals(Ljava/lang/Object;)Z

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

    .line 130
    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 14

    .line 298
    new-instance v0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;

    new-instance v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aby:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aQb:I

    iget v3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->avM:I

    iget-object v4, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v7, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    iget-object v8, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    iget-object v9, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v10, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct/range {v0 .. v10}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    move-object v11, v0

    .line 302
    :try_start_0
    new-instance v13, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v13, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 303
    new-instance v12, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v12, v13, v11}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 305
    :catch_0
    move-exception v13

    .line 307
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 312
    :goto_0
    :try_start_1
    invoke-virtual {v12}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 313
    return-object v13

    .line 315
    :catch_1
    move-exception v13

    .line 317
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 253
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->avM:I

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aQb:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public kC()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aQb:I

    return v0
.end method

.method protected nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .line 263
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rZ()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->biw:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    return-object v0
.end method

.method public ri()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->avM:I

    return v0
.end method

.method public rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public rl()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public rn()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public ro()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public rp()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aby:Ljava/lang/String;

    return-object v0
.end method

.method public rt()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public ru()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public rv()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " length of the code          : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->aQb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dimension of the code       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->avM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " irreducible Goppa polynomial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (k x k)-matrix S^-1         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permutation P1              : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permutation P2              : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    return-object v2
.end method
