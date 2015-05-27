.class public Lorg/spongycastle/x509/PKIXCertPathReviewer;
.super Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;
.source ""


# static fields
.field private static final bkA:Ljava/lang/String;

.field private static final bkB:Ljava/lang/String;

.field private static final bkC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->bkA:Ljava/lang/String;

    .line 89
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->bkB:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->aBG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->bkC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;-><init>()V

    .line 192
    return-void
.end method
