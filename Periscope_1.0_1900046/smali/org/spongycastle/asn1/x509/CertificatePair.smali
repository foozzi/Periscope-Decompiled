.class public Lorg/spongycastle/asn1/x509/CertificatePair;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ayy:Lorg/spongycastle/asn1/x509/Certificate;

.field private ayz:Lorg/spongycastle/asn1/x509/Certificate;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 84
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 87
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

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    .line 93
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lorg/spongycastle/asn1/x509/Certificate;->ˈ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayy:Lorg/spongycastle/asn1/x509/Certificate;

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 102
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lorg/spongycastle/asn1/x509/Certificate;->ˈ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayz:Lorg/spongycastle/asn1/x509/Certificate;

    goto :goto_1

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :goto_1
    goto :goto_0

    .line 110
    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/Certificate;Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayy:Lorg/spongycastle/asn1/x509/Certificate;

    .line 121
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayz:Lorg/spongycastle/asn1/x509/Certificate;

    .line 122
    return-void
.end method

.method public static ﭔ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificatePair;
    .locals 3

    .line 55
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/CertificatePair;

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/CertificatePair;

    return-object v0

    .line 60
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/x509/CertificatePair;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/CertificatePair;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 139
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayy:Lorg/spongycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayy:Lorg/spongycastle/asn1/x509/Certificate;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayz:Lorg/spongycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayz:Lorg/spongycastle/asn1/x509/Certificate;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public hq()Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayy:Lorg/spongycastle/asn1/x509/Certificate;

    return-object v0
.end method

.method public hr()Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificatePair;->ayz:Lorg/spongycastle/asn1/x509/Certificate;

    return-object v0
.end method
