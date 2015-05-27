.class public Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;
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

    .line 26
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    iput p2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;->aQb:I

    .line 29
    iput p3, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;->bdK:I

    .line 30
    invoke-virtual {p4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;->bdL:[B

    .line 31
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 67
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 69
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 72
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;->aQb:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;->bdK:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;->bdL:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
