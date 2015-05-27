.class public Lorg/spongycastle/asn1/cmp/Challenge;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acW:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private acX:Lorg/spongycastle/asn1/ASN1OctetString;

.field private acY:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 115
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 104
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/Challenge;->acW:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/asn1/cmp/Challenge;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/Challenge;->acX:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/Challenge;->acY:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
