.class public Lorg/spongycastle/asn1/crmf/EncKeyWithID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private final agv:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

.field private final agw:Lorg/spongycastle/asn1/ASN1Encodable;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 106
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->agv:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->agw:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->agw:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
