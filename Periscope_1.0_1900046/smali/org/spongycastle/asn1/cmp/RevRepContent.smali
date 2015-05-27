.class public Lorg/spongycastle/asn1/cmp/RevRepContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeb:Lorg/spongycastle/asn1/ASN1Sequence;

.field private aec:Lorg/spongycastle/asn1/ASN1Sequence;

.field private aed:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 132
    if-eqz p3, :cond_0

    .line 134
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 120
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->aeb:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->aec:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/RevRepContent;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->aed:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/RevRepContent;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
