.class public Lorg/spongycastle/asn1/cmp/PBMParameter;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acW:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private adk:Lorg/spongycastle/asn1/ASN1OctetString;

.field private adl:Lorg/spongycastle/asn1/ASN1Integer;

.field private adm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 108
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->adk:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->acW:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->adl:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->adm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
