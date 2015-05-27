.class public Lorg/spongycastle/asn1/tsp/TSTInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeY:Lorg/spongycastle/asn1/ASN1Integer;

.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private ahV:Lorg/spongycastle/asn1/x509/Extensions;

.field private aip:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private avD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private avE:Lorg/spongycastle/asn1/tsp/MessageImprint;

.field private avF:Lorg/spongycastle/asn1/tsp/Accuracy;

.field private avG:Lorg/spongycastle/asn1/ASN1Boolean;

.field private avH:Lorg/spongycastle/asn1/ASN1Integer;

.field private avI:Lorg/spongycastle/asn1/x509/GeneralName;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 198
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 199
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 201
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 202
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avE:Lorg/spongycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 203
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->aeY:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 204
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->aip:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 206
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avF:Lorg/spongycastle/asn1/tsp/Accuracy;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avF:Lorg/spongycastle/asn1/tsp/Accuracy;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avG:Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avG:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ew()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avG:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avH:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avH:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avI:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_3

    .line 223
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->avI:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_4

    .line 228
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 231
    :cond_4
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
