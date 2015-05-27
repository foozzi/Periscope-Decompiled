.class public Lorg/spongycastle/asn1/x509/TargetInformation;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAQ:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->aAQ:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 58
    return-void
.end method

.method public static า(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;
    .locals 2

    .line 36
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TargetInformation;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/TargetInformation;

    return-object v0

    .line 40
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/x509/TargetInformation;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TargetInformation;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->aAQ:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public if()[Lorg/spongycastle/asn1/x509/Targets;
    .locals 5

    .line 67
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->aAQ:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v2, v0, [Lorg/spongycastle/asn1/x509/Targets;

    .line 68
    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->aAQ:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/Targets;->ᐥ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Targets;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_0

    .line 73
    :cond_0
    return-object v2
.end method
