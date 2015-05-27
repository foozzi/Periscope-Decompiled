.class public Lorg/spongycastle/x509/X509V3CertificateGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private blg:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

.field private blh:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509V3CertificateGenerator;->blh:Lorg/spongycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509V3CertificateGenerator;->blg:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    .line 56
    return-void
.end method
