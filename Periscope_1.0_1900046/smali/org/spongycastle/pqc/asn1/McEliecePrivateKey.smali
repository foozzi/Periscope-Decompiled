.class public Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aQb:I

.field private aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private avM:I

.field private bdF:[B

.field private bdG:[B

.field private bdI:[B

.field private bdJ:[[B

.field private bdM:[B

.field private bdN:[B

.field private bdO:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    iput p2, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->aQb:I

    .line 38
    iput p3, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->avM:I

    .line 39
    invoke-virtual {p4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdF:[B

    .line 40
    invoke-virtual {p5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdG:[B

    .line 41
    invoke-virtual {p6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdM:[B

    .line 42
    invoke-virtual {p7}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdN:[B

    .line 43
    invoke-virtual {p8}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdO:[B

    .line 44
    invoke-virtual {p9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdI:[B

    .line 45
    array-length v0, p10

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdJ:[[B

    .line 47
    const/4 v2, 0x0

    :goto_0
    array-length v0, p10

    if-eq v2, v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdJ:[[B

    aget-object v1, p10, v2

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object v1

    aput-object v1, v0, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .line 159
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 161
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->aQb:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 166
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->avM:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdF:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdG:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 175
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdM:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 178
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdN:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 181
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdO:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 184
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdI:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 187
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 188
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdJ:[[B

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 190
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->bdJ:[[B

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 195
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
