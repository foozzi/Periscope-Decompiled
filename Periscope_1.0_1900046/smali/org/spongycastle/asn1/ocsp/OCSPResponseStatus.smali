.class public Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aiA:Lorg/spongycastle/asn1/ASN1Enumerated;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Enumerated;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    .line 45
    return-void
.end method

.method public static ᐢ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;
    .locals 2

    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Enumerated;->ᵛ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;-><init>(Lorg/spongycastle/asn1/ASN1Enumerated;)V

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-object v0
.end method
