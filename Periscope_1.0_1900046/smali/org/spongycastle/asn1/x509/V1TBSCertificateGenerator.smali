.class public Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aAR:Lorg/spongycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->aAR:Lorg/spongycastle/asn1/DERTaggedObject;

    .line 38
    return-void
.end method
