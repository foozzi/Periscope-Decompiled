.class public Lorg/spongycastle/asn1/x509/PolicyQualifierId;
.super Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
.source ""


# static fields
.field public static final aAr:Lorg/spongycastle/asn1/x509/PolicyQualifierId;

.field public static final aAs:Lorg/spongycastle/asn1/x509/PolicyQualifierId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    const-string v1, "1.3.6.1.5.5.7.2.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;->aAr:Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    const-string v1, "1.3.6.1.5.5.7.2.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;->aAs:Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
