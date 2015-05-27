.class public Lorg/spongycastle/asn1/cmp/CAKeyUpdAnnContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aca:Lorg/spongycastle/asn1/cmp/CMPCertificate;

.field private acb:Lorg/spongycastle/asn1/cmp/CMPCertificate;

.field private acc:Lorg/spongycastle/asn1/cmp/CMPCertificate;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 72
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CAKeyUpdAnnContent;->aca:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CAKeyUpdAnnContent;->acb:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CAKeyUpdAnnContent;->acc:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
