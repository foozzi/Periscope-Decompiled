.class public Lorg/spongycastle/asn1/cmp/OOBCertHash;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private adh:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private adi:Lorg/spongycastle/asn1/crmf/CertId;

.field private adj:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 112
    if-eqz p3, :cond_0

    .line 114
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 100
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->adh:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/OOBCertHash;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->adi:Lorg/spongycastle/asn1/crmf/CertId;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/OOBCertHash;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->adj:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
