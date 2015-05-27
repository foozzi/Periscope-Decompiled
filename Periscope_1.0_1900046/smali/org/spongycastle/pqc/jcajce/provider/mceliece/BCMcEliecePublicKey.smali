.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;
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

.field private bix:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aby:Ljava/lang/String;

    .line 63
    iput p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aQb:I

    .line 64
    iput p3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bdK:I

    .line 65
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->rp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->kC()I

    move-result v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->rj()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->rw()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    .line 81
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->rr()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bix:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 146
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    move-object v2, v0

    .line 152
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aQb:I

    iget v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aQb:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bdK:I

    iget v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bdK:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v1, v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

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

    .line 91
    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 207
    new-instance v4, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;

    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aby:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aQb:I

    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bdK:I

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    .line 208
    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 212
    :try_start_0
    new-instance v6, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v6, v5, v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 214
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 216
    :catch_0
    move-exception v6

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 160
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aQb:I

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bdK:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public kC()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aQb:I

    return v0
.end method

.method protected nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .line 177
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rZ()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bix:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    return-object v0
.end method

.method public rj()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bdK:I

    return v0
.end method

.method public rp()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aby:Ljava/lang/String;

    return-object v0
.end method

.method public rw()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 131
    const-string v2, "McEliecePublicKey:\n"

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length of the code         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->aQb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error correction capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bdK:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " generator matrix           : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    return-object v2
.end method
