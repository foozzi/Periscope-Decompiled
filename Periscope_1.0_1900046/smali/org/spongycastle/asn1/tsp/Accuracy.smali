.class public Lorg/spongycastle/asn1/tsp/Accuracy;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field avA:Lorg/spongycastle/asn1/ASN1Integer;

.field avB:Lorg/spongycastle/asn1/ASN1Integer;

.field avz:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 154
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 156
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->avz:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->avz:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->avA:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->avA:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->avB:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->avB:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
