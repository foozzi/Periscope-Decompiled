.class public Lorg/spongycastle/asn1/ocsp/RevokedInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private apq:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private apr:Lorg/spongycastle/asn1/x509/CRLReason;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 82
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/RevokedInfo;->apq:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/RevokedInfo;->apr:Lorg/spongycastle/asn1/x509/CRLReason;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/RevokedInfo;->apr:Lorg/spongycastle/asn1/x509/CRLReason;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 90
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
