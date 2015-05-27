.class public Lorg/spongycastle/asn1/cmp/ErrorMsgContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private acZ:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

.field private ada:Lorg/spongycastle/asn1/ASN1Integer;

.field private adb:Lorg/spongycastle/asn1/cmp/PKIFreeText;


# direct methods
.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 116
    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 105
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->acZ:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->ada:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->adb:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
