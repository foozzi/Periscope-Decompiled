.class public Lorg/spongycastle/asn1/smime/SMIMECapabilityVector;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private auJ:Lorg/spongycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilityVector;->auJ:Lorg/spongycastle/asn1/ASN1EncodableVector;

    return-void
.end method
