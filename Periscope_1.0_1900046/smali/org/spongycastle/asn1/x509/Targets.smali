.class public Lorg/spongycastle/asn1/x509/Targets;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAQ:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/Targets;->aAQ:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 72
    return-void
.end method

.method public static ᐥ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Targets;
    .locals 2

    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/Targets;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/Targets;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/Targets;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/Targets;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Targets;->aAQ:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public ig()[Lorg/spongycastle/asn1/x509/Target;
    .locals 5

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Targets;->aAQ:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v2, v0, [Lorg/spongycastle/asn1/x509/Target;

    .line 98
    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Targets;->aAQ:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/Target;->ܝ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Target;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_0

    .line 103
    :cond_0
    return-object v2
.end method
