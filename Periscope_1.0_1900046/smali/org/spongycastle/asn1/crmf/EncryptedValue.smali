.class public Lorg/spongycastle/asn1/crmf/EncryptedValue;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agA:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private agB:Lorg/spongycastle/asn1/DERBitString;

.field private agC:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private agD:Lorg/spongycastle/asn1/ASN1OctetString;

.field private agE:Lorg/spongycastle/asn1/DERBitString;

.field private agz:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 159
    if-eqz p3, :cond_0

    .line 161
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 144
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->agz:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->agA:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->agB:Lorg/spongycastle/asn1/DERBitString;

    const/4 v1, 0x2

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->agC:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x3

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->agD:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v1, 0x4

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->agE:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 154
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
