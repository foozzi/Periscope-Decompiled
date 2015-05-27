.class public Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRLEntry"
.end annotation


# instance fields
.field aAF:Lorg/spongycastle/asn1/x509/Extensions;

.field agu:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 57
    return-void
.end method

.method public static ר(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 2

    .line 61
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    return-object v0

    .line 65
    :cond_0
    if-eqz p0, :cond_1

    .line 67
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public gX()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->aAF:Lorg/spongycastle/asn1/x509/Extensions;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extensions;->ﺗ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->aAF:Lorg/spongycastle/asn1/x509/Extensions;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->aAF:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public hY()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public hZ()Lorg/spongycastle/asn1/x509/Time;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Time;->ᒃ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
