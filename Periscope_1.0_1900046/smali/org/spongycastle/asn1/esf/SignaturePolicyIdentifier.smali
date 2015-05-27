.class public Lorg/spongycastle/asn1/esf/SignaturePolicyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private akR:Lorg/spongycastle/asn1/esf/SignaturePolicyId;

.field private akS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyIdentifier;->akS:Z

    .line 37
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyIdentifier;->akS:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignaturePolicyIdentifier;->akR:Lorg/spongycastle/asn1/esf/SignaturePolicyId;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/SignaturePolicyId;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
