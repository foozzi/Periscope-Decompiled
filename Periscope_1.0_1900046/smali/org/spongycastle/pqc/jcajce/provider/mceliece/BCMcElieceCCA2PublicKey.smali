.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aQb:I

.field private aby:Ljava/lang/String;

.field private bdK:I

.field private bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

.field private biv:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aby:Ljava/lang/String;

    .line 57
    iput p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aQb:I

    .line 58
    iput p3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bdK:I

    .line 59
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 4

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->kC()I

    move-result v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rj()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rq()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->biv:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 140
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    if-nez v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    move-object v2, v0

    .line 147
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aQb:I

    iget v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aQb:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bdK:I

    iget v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bdK:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->equals(Ljava/lang/Object;)Z

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

    .line 85
    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 200
    new-instance v4, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;

    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aby:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aQb:I

    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bdK:I

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    .line 201
    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 205
    :try_start_0
    new-instance v6, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v6, v5, v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 207
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 209
    :catch_0
    move-exception v6

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 155
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aQb:I

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bdK:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public kC()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aQb:I

    return v0
.end method

.method protected nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .line 171
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rY()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->biv:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    return-object v0
.end method

.method public rj()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bdK:I

    return v0
.end method

.method public rp()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aby:Ljava/lang/String;

    return-object v0
.end method

.method public rw()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    const-string v2, "McEliecePublicKey:\n"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length of the code         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->aQb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error correction capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bdK:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " generator matrix           : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    return-object v2
.end method
