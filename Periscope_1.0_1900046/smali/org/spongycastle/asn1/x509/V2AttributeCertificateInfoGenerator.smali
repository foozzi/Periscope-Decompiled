.class public Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aAS:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private aek:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 47
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->aAS:Lorg/spongycastle/asn1/ASN1EncodableVector;

    .line 48
    return-void
.end method
