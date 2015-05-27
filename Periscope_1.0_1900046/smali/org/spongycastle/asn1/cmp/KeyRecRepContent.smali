.class public Lorg/spongycastle/asn1/cmp/KeyRecRepContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acO:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

.field private ade:Lorg/spongycastle/asn1/cmp/CMPCertificate;

.field private adf:Lorg/spongycastle/asn1/ASN1Sequence;

.field private adg:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 137
    if-eqz p3, :cond_0

    .line 139
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 124
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->acO:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->ade:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->adf:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->adg:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/KeyRecRepContent;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
