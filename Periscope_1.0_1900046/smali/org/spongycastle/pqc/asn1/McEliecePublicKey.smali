.class public Lorg/spongycastle/pqc/asn1/McEliecePublicKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aQb:I

.field private aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private bdK:I

.field private bdL:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    iput p2, p0, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->aQb:I

    .line 30
    iput p3, p0, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->bdK:I

    .line 31
    invoke-virtual {p4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->bdL:[B

    .line 32
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 68
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 73
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->aQb:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->bdK:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 79
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->bdL:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 81
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
