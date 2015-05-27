.class public Lorg/spongycastle/asn1/tsp/TimeStampReq;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aek:Lorg/spongycastle/asn1/ASN1Integer;

.field ahV:Lorg/spongycastle/asn1/x509/Extensions;

.field avE:Lorg/spongycastle/asn1/tsp/MessageImprint;

.field avH:Lorg/spongycastle/asn1/ASN1Integer;

.field avJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field avK:Lorg/spongycastle/asn1/ASN1Boolean;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 152
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 154
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->avE:Lorg/spongycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->avJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->avJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->avH:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->avH:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->avK:Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->avK:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ew()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->avK:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 172
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_3

    .line 174
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 177
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
