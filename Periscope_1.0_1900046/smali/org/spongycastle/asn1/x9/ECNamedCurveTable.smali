.class public Lorg/spongycastle/asn1/x9/ECNamedCurveTable;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    .line 26
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 30
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 33
    :cond_0
    if-nez v0, :cond_1

    .line 35
    invoke-static {p0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 38
    :cond_1
    if-nez v0, :cond_2

    .line 40
    invoke-static {p0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 43
    :cond_2
    return-object v0
.end method

.method public static ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    .line 85
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 89
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 92
    :cond_0
    if-nez v0, :cond_1

    .line 94
    invoke-static {p0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 99
    :cond_1
    return-object v0
.end method